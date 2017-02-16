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

    .line 3923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    .line 203
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    .line 204
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    .line 206
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    .line 208
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    .line 210
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    .line 212
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    .line 214
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    .line 216
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyModeListener:Ljava/util/Set;

    .line 218
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandModeListener:Ljava/util/Set;

    .line 220
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandAnyScreenOnListener:Ljava/util/Set;

    .line 222
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mMobileKeyboardListener:Ljava/util/Set;

    .line 224
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mConfigurationListener:Ljava/util/Set;

    .line 234
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 236
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    .line 237
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mAccountSelectionCancelled:Z

    .line 238
    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    .line 239
    new-instance v0, Lcom/android/incallui/AnswerPresenter;

    invoke-direct {v0}, Lcom/android/incallui/AnswerPresenter;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    .line 249
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyCall:Z

    .line 251
    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    .line 255
    sget-object v0, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->PHOTORING_NONE:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    .line 256
    iput v2, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    .line 257
    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringContentPath:Ljava/lang/String;

    .line 260
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    .line 261
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    .line 265
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    .line 274
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsImsRegistered:Z

    .line 275
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mBatteryMonitorRegistered:Z

    .line 292
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    .line 294
    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mSubNumberDialog:Lcom/android/incallui/util/SecSubNumberDialogActivity;

    .line 298
    new-instance v0, Lcom/android/incallui/InCallPresenter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/InCallPresenter$1;-><init>(Lcom/android/incallui/InCallPresenter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHideStatusObserver:Landroid/database/ContentObserver;

    .line 320
    new-instance v0, Lcom/android/incallui/InCallPresenter$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$2;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mMirrorlinkStateReceiver:Landroid/content/BroadcastReceiver;

    .line 331
    new-instance v0, Lcom/android/incallui/InCallPresenter$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$3;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCarmodeStateReceiver:Landroid/content/BroadcastReceiver;

    .line 344
    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    .line 347
    new-instance v0, Lcom/android/incallui/InCallPresenter$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$4;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    .line 375
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mAwaitingCallListUpdate:Z

    .line 496
    new-instance v0, Lcom/android/incallui/InCallPresenter$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$5;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallCallback:Landroid/telecom/Call$Callback;

    .line 540
    new-instance v0, Lcom/android/incallui/InCallPresenter$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$6;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 620
    new-instance v0, Lcom/android/incallui/util/CallUpdateUtil;

    const-string v1, "InCallPresenter"

    invoke-direct {v0, v1, p0}, Lcom/android/incallui/util/CallUpdateUtil;-><init>(Ljava/lang/String;Lcom/android/incallui/util/CallUpdateUtil$UpdateCallback;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mUpdateUtil:Lcom/android/incallui/util/CallUpdateUtil;

    .line 641
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    .line 646
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    .line 648
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 2361
    new-instance v0, Lcom/android/incallui/InCallPresenter$8;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$8;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRegListener:Lcom/sec/ims/IImsRegistrationListener;

    .line 3924
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

    .line 3026
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v2, :cond_11

    iget-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v3, :cond_11

    const/4 v0, 0x1

    .line 3028
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

    .line 3030
    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3031
    invoke-static {}, Lcom/android/incallui/service/EcidClient;->clearAllCalls()V

    .line 3035
    :cond_0
    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->setMergeAfterAnswer(Z)V

    .line 3036
    invoke-static {}, Lcom/android/incallui/service/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/service/SecModifyCallProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecModifyCallProcessor;->clearModifyInProgress()V

    .line 3038
    if-eqz v0, :cond_10

    .line 3039
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    .line 3040
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 3044
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    if-eqz v2, :cond_1

    .line 3045
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v2}, Lcom/android/incallui/ContactInfoCache;->clearCache()V

    .line 3047
    :cond_1
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    .line 3049
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v2, :cond_2

    .line 3050
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 3051
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v2}, Lcom/android/incallui/ProximitySensor;->tearDown()V

    .line 3053
    :cond_2
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    .line 3055
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    .line 3057
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v2, :cond_3

    .line 3058
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 3059
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v2}, Lcom/android/incallui/StatusBarNotifier;->tearDown()V

    .line 3061
    :cond_3
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    .line 3063
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_4

    .line 3064
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    .line 3066
    :cond_4
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    .line 3068
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    if-eqz v2, :cond_5

    .line 3069
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v2, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->removeListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    .line 3070
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v2}, Lcom/android/incallui/accessory/AccessoryEventHandler;->tearDown()V

    .line 3071
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    .line 3074
    :cond_5
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->clearCoreAppsContact()V

    .line 3076
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    .line 3077
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 3079
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3080
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3081
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3082
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3083
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3084
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3085
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3086
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3087
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyModeListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3088
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mOnehandModeListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3089
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mOnehandAnyScreenOnListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3090
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mMobileKeyboardListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3091
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mConfigurationListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3093
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_6

    .line 3095
    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 3098
    :goto_1
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    .line 3101
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    if-eqz v2, :cond_7

    .line 3102
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/EpdgManager;->destroy()V

    .line 3103
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    .line 3107
    :cond_7
    const-string v2, "smart_auto_answering"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3108
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_8

    .line 3110
    :try_start_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 3113
    :goto_2
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3117
    :cond_8
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_9

    .line 3119
    :try_start_2
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3122
    :goto_3
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    .line 3125
    :cond_9
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mMirrorlinkStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_a

    .line 3127
    :try_start_3
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mMirrorlinkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 3131
    :goto_4
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mMirrorlinkStateReceiver:Landroid/content/BroadcastReceiver;

    .line 3134
    :cond_a
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCarmodeStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_b

    .line 3136
    :try_start_4
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCarmodeStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 3139
    :goto_5
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCarmodeStateReceiver:Landroid/content/BroadcastReceiver;

    .line 3142
    :cond_b
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    if-eqz v2, :cond_c

    .line 3143
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/incallui/BluetoothProfileManager;->closeBluetoothProfileProxy()V

    .line 3144
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    .line 3147
    :cond_c
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    if-eqz v2, :cond_d

    .line 3148
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    invoke-virtual {v2}, Lcom/android/incallui/bike/BikeModeController;->cleanUp()V

    .line 3151
    :cond_d
    const-string v2, "ims_rcs"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3152
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secrcs/RcsShareUI;->tearDown()V

    .line 3155
    :cond_e
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->initCoverStateControls()V

    .line 3157
    iput v1, p0, Lcom/android/incallui/InCallPresenter;->mKnoxCustomDisabledItems:I

    .line 3159
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    if-eqz v1, :cond_f

    .line 3160
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    invoke-virtual {v1}, Lcom/android/incallui/util/DesktopModeManager;->tearDown()V

    .line 3162
    :cond_f
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/SALogging;->unregisterTelecommSALoggingReceiver(Landroid/content/Context;)Z

    .line 3164
    const-string v1, "Finished InCallPresenter.CleanUp"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3166
    :cond_10
    return-void

    .end local v0    # "shouldCleanup":Z
    :cond_11
    move v0, v1

    .line 3026
    goto/16 :goto_0

    .line 3137
    .restart local v0    # "shouldCleanup":Z
    :catch_0
    move-exception v2

    goto :goto_5

    .line 3128
    :catch_1
    move-exception v2

    goto :goto_4

    .line 3120
    :catch_2
    move-exception v2

    goto :goto_3

    .line 3111
    :catch_3
    move-exception v2

    goto :goto_2

    .line 3096
    :catch_4
    move-exception v2

    goto/16 :goto_1
.end method

.method private clearDigitsInKeypad()V
    .locals 1

    .prologue
    .line 2672
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2673
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->clearDigits()V

    .line 2675
    :cond_0
    return-void
.end method

.method private dismissDialogForDisconnect()V
    .locals 1

    .prologue
    .line 2661
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2662
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->dismissDialogForDisconnect()V

    .line 2666
    :cond_0
    :goto_0
    return-void

    .line 2663
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2664
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->dismissWaitingCallPopup()V

    goto :goto_0
.end method

.method private getColorsFromCall(Lcom/android/incallui/Call;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 3539
    if-nez p1, :cond_0

    .line 3540
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPendingPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->getColorsFromPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v0

    .line 3542
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
    .line 3547
    const/4 v1, 0x0

    .line 3548
    .local v1, "highlightColor":I
    if-eqz p1, :cond_0

    .line 3549
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 3551
    .local v2, "tm":Landroid/telecom/TelecomManager;
    if-eqz v2, :cond_0

    .line 3552
    invoke-virtual {v2, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 3555
    .local v0, "account":Landroid/telecom/PhoneAccount;
    if-eqz v0, :cond_0

    .line 3556
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getHighlightColor()I

    move-result v1

    .line 3560
    .end local v0    # "account":Landroid/telecom/PhoneAccount;
    .end local v2    # "tm":Landroid/telecom/TelecomManager;
    :cond_0
    new-instance v3, Lcom/android/incallui/InCallUIMaterialColorMapUtils;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    .line 3561
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
    .line 658
    const-class v1, Lcom/android/incallui/InCallPresenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-nez v0, :cond_0

    .line 659
    new-instance v0, Lcom/android/incallui/InCallPresenter;

    invoke-direct {v0}, Lcom/android/incallui/InCallPresenter;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 661
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hideDialpadForDisconnect()V
    .locals 1

    .prologue
    .line 2681
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2682
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->hideDialpadForDisconnect()V

    .line 2684
    :cond_0
    return-void
.end method

.method private initCoverStateControls()V
    .locals 1

    .prologue
    .line 4418
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    if-eqz v0, :cond_0

    .line 4419
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/accessory/CoverViewManager;->dismissView()V

    .line 4420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    .line 4422
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    .line 4423
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/motion/CallSContextMotion;->stopPutDownListening(Landroid/content/Context;)V

    .line 4424
    return-void
.end method

.method public static isCallWithNoValidAccounts(Lcom/android/incallui/Call;)Z
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 2923
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2924
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2926
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 2927
    sget-object v0, Lcom/android/incallui/InCallPresenter;->EMPTY_EXTRAS:Landroid/os/Bundle;

    .line 2930
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2932
    const-string v2, "selectPhoneAccountAccounts"

    .line 2933
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2935
    .local v1, "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    .line 2936
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2937
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

    .line 2938
    const/4 v2, 0x1

    .line 2941
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

    .line 3499
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
    .line 479
    return-void
.end method

.method private maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 2629
    const-string v2, "maybeShowErrorDialogOnDisconnect"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2630
    if-nez p1, :cond_1

    .line 2658
    :cond_0
    :goto_0
    return-void

    .line 2631
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    .line 2632
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

    .line 2633
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

    .line 2636
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 2637
    const-string v2, "canada_bmc_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2638
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 2639
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    const-string v2, "dismissDataChargeAlertDialog for BMC "

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2640
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->dismissDataChargeAlertDialog()V

    .line 2642
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2643
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->setDisconnectCauseForMissingAccounts(Lcom/android/incallui/Call;)V

    .line 2646
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2647
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallActivity;->maybeShowErrorDialogOnDisconnect(Landroid/telecom/DisconnectCause;)V

    goto/16 :goto_0

    .line 2648
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isStartPopupServiceWhenMakeCallFromOtherApp()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    if-eqz v2, :cond_0

    .line 2651
    :cond_5
    invoke-virtual {v1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2652
    invoke-virtual {v1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    .line 2653
    invoke-virtual {v1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 2654
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
    .line 4411
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

    .line 4412
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    if-nez v0, :cond_0

    .line 4413
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/VideoPauseController;->onUiShowing(Z)V

    .line 4415
    :cond_0
    return-void

    .line 4411
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

    .line 2478
    const/4 v4, 0x0

    invoke-static {p1, v4, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2479
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 2480
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    .line 2481
    iput v11, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    .line 2611
    :goto_0
    return-void

    .line 2484
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getCallType()I

    move-result v2

    .line 2485
    .local v2, "callType":I
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 2486
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

    .line 2487
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    if-nez v4, :cond_3

    .line 2488
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    if-eq v4, v9, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v9, :cond_1

    .line 2489
    invoke-static {v8}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0903c5

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/util/SALogging;->getNetworkType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2491
    :cond_1
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 2492
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    if-eqz v4, :cond_2

    .line 2493
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/EpdgManager;->dismissCurrentDialogWithoutSettingFlag()V

    .line 2495
    :cond_2
    invoke-static {v8}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f09038b

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/util/SALogging;->getNetworkType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    :cond_3
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    const/16 v5, 0xa

    if-eq v4, v5, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    .line 2503
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V

    .line 2505
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v3

    .line 2506
    .local v3, "disconnectCause":Landroid/telecom/DisconnectCause;
    invoke-virtual {v3}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v4

    if-ne v4, v10, :cond_14

    .line 2507
    invoke-static {}, Lcom/android/incallui/util/SALogging;->getGeneralScreenId()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090377

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2513
    .end local v3    # "disconnectCause":Landroid/telecom/DisconnectCause;
    :cond_4
    :goto_1
    invoke-static {v1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ACTIVE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2514
    const-string v4, "ims_rcs"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2515
    iget-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mIsImsRegistered:Z

    if-nez v4, :cond_5

    .line 2516
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

    .line 2517
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

    .line 2518
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mRegListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v4, v5}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 2519
    iput-boolean v7, p0, Lcom/android/incallui/InCallPresenter;->mIsImsRegistered:Z

    .line 2522
    :cond_5
    const-string v4, "ims_crane"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2523
    const-string v4, "send nuber to crane"

    invoke-static {p0, v4, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2524
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/incallui/secrcs/RcsShareUI;->sendPhoneNumberBroadcast(Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 2526
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

    .line 2527
    iget-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mBatteryMonitorRegistered:Z

    if-nez v4, :cond_7

    .line 2528
    new-instance v4, Lcom/android/incallui/secrcs/BatteryMonitor;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/incallui/secrcs/BatteryMonitor;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBatteryMonitor:Lcom/android/incallui/secrcs/BatteryMonitor;

    .line 2529
    iput-boolean v7, p0, Lcom/android/incallui/InCallPresenter;->mBatteryMonitorRegistered:Z

    .line 2530
    new-instance v4, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    invoke-direct {v4, p0}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;-><init>(Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mRcsBroadcastReceiver:Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    .line 2531
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mRcsBroadcastReceiver:Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 2534
    :cond_7
    const-string v4, "support_tphone"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2535
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2536
    const-string v4, "Start CoverStateChanged when tphone mode"

    invoke-static {p0, v4, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2537
    invoke-virtual {p0, v7}, Lcom/android/incallui/InCallPresenter;->onCoverStateChanged(Z)V

    .line 2542
    :cond_8
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    if-ne v4, v9, :cond_9

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v10, :cond_9

    .line 2543
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    invoke-static {v4}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(I)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2544
    const-string v4, "common_volte_in"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2545
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f0902d6

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2549
    :cond_9
    invoke-static {v1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "DISCONNECTED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2550
    const-string v4, "ims_rcs"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2551
    iget-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mIsImsRegistered:Z

    if-eqz v4, :cond_a

    .line 2552
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

    .line 2553
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

    .line 2554
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mRegListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v4, v5}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 2555
    iput-boolean v8, p0, Lcom/android/incallui/InCallPresenter;->mIsImsRegistered:Z

    .line 2558
    :cond_a
    iget-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mBatteryMonitorRegistered:Z

    if-eqz v4, :cond_b

    .line 2559
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBatteryMonitor:Lcom/android/incallui/secrcs/BatteryMonitor;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/incallui/secrcs/BatteryMonitor;->UnregisterBatteryMonitor(Landroid/content/Context;)V

    .line 2560
    iput-boolean v8, p0, Lcom/android/incallui/InCallPresenter;->mBatteryMonitorRegistered:Z

    .line 2561
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/incallui/secrcs/RcsShareUI;->disconnect(Landroid/content/Context;)V

    .line 2563
    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mRcsBroadcastReceiver:Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->unregister(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2569
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

    .line 2570
    const-string v4, "support_tphone"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2571
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2572
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v4, v5, :cond_d

    .line 2573
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    invoke-static {v4}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(I)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2574
    const-string v4, "Downgrade for tphone"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2575
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v4, :cond_c

    .line 2576
    const-string v4, "cancelNotification"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2577
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v4}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    .line 2579
    :cond_c
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    .line 2585
    :cond_d
    :goto_3
    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2586
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2587
    const-string v4, "Finish in call UI for tphone"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2588
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    .line 2592
    :cond_e
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    if-eq v4, v1, :cond_f

    .line 2593
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    .line 2594
    invoke-virtual {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_f

    .line 2595
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->notifyCallTimeForLedCover()V

    .line 2598
    :cond_f
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v4, :cond_13

    .line 2599
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->dismissInCallMenu()V

    .line 2600
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    const/16 v5, 0xd

    if-eq v4, v5, :cond_10

    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    if-ne v4, v9, :cond_12

    .line 2601
    :cond_10
    if-eq v1, v10, :cond_11

    const/16 v4, 0x8

    if-ne v1, v4, :cond_12

    .line 2602
    :cond_11
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/SystemServiceUtils;->boostCPU(Landroid/content/Context;)V

    .line 2603
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4, v8}, Lcom/android/incallui/InCallActivity;->animateForShrinkBackground(Z)V

    .line 2606
    :cond_12
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    .line 2609
    :cond_13
    iput v2, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    .line 2610
    iput v1, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    goto/16 :goto_0

    .line 2508
    .restart local v3    # "disconnectCause":Landroid/telecom/DisconnectCause;
    :cond_14
    invoke-virtual {v3}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v4

    if-eq v4, v11, :cond_4

    .line 2509
    invoke-static {}, Lcom/android/incallui/util/SALogging;->getGeneralScreenId()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090346

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2580
    .end local v3    # "disconnectCause":Landroid/telecom/DisconnectCause;
    :cond_15
    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    invoke-static {v4}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2581
    const-string v4, "Upgrade for tphone"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2582
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {p0, v8, v8}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    goto/16 :goto_3

    .line 2564
    :catch_0
    move-exception v4

    goto/16 :goto_2
.end method

.method private setDisconnectCauseForMissingAccounts(Lcom/android/incallui/Call;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 2951
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v5

    .line 2953
    .local v5, "telecomCall":Landroid/telecom/Call;
    invoke-virtual {v5}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2955
    .local v2, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 2956
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "extras":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2959
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    const-string v6, "selectPhoneAccountAccounts"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2962
    .local v3, "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2963
    :cond_1
    invoke-virtual {v5}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 2964
    .local v4, "scheme":Ljava/lang/String;
    const-string v6, "tel"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v7, 0x7f09042e

    .line 2965
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2967
    .local v1, "errorMsg":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7, v1, v1}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 2969
    .local v0, "disconnectCause":Landroid/telecom/DisconnectCause;
    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    .line 2971
    .end local v0    # "disconnectCause":Landroid/telecom/DisconnectCause;
    .end local v1    # "errorMsg":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    :cond_2
    return-void

    .line 2965
    .restart local v4    # "scheme":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v7, 0x7f090037

    .line 2966
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
    .line 666
    const-class v0, Lcom/android/incallui/InCallPresenter;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    monitor-exit v0

    return-void

    .line 666
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

    .line 402
    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 414
    :goto_0
    return v0

    .line 405
    :cond_0
    invoke-static {p1}, Lcom/android/incallui/util/TelecomCallUtil;->isEmergencyCall(Landroid/telecom/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    const-string v1, "Not attempting to block incoming emergency call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showSelectPhoneSimAccountDialog()V
    .locals 3

    .prologue
    .line 3316
    const-string v1, "feature_multisim_preferred_sim"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "feature_multisim_adaptive_callback"

    .line 3317
    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3318
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3319
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10808000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3320
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/util/SystemServiceUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3321
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/SelectSimActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3324
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3326
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 3323
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
    .line 2614
    const-string v2, "showVideoEndScreen"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2615
    const-string v0, "com.samsung.incallui.action.START_CALLEND_ACTIVITY"

    .line 2617
    .local v0, "INCALLUI_START_CALLEND_ACTIVITY":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2618
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.incallui.action.START_CALLEND_ACTIVITY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2619
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2620
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2, v1}, Lcom/android/incallui/InCallActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2622
    :cond_0
    return-void
.end method

.method private startAutoAnsTimer(I)V
    .locals 6
    .param p1, "limit"    # I

    .prologue
    const-wide/16 v2, 0xa

    .line 4133
    const-string v0, "startAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4134
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->resetAutoAnsTimer()V

    .line 4135
    if-gtz p1, :cond_1

    .line 4136
    new-instance v0, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;-><init>(Lcom/android/incallui/InCallPresenter;JJ)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    .line 4140
    :goto_0
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4141
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSystemSettingAllSoundOff()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4142
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;->start()Landroid/os/CountDownTimer;

    .line 4147
    :cond_0
    :goto_1
    return-void

    .line 4138
    :cond_1
    new-instance v0, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;-><init>(Lcom/android/incallui/InCallPresenter;JJ)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    goto :goto_0

    .line 4145
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

    .line 2974
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    .line 2975
    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_2

    move v1, v3

    .line 2977
    .local v1, "isCallWaiting":Z
    :goto_0
    const-string v5, "dcm_sda_support_feature"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2978
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2979
    .local v0, "incomingCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 2980
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v2

    .line 2981
    .local v2, "presentation":I
    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    const/4 v5, 0x3

    if-eq v2, v5, :cond_0

    const/4 v5, 0x4

    if-ne v2, v5, :cond_1

    .line 2984
    :cond_0
    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/android/incallui/util/InCallUtils;->sendNotificationToSmartDeviceAgent(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 2996
    .end local v0    # "incomingCall":Lcom/android/incallui/Call;
    .end local v2    # "presentation":I
    :cond_1
    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    if-nez v5, :cond_5

    .line 2997
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v5}, Lcom/android/incallui/ProximitySensor;->isScreenReallyOff()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2998
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2999
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    .line 3000
    invoke-virtual {v5}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v5

    if-nez v5, :cond_3

    .line 3001
    const-string v3, "Restarting InCallComponent to turn screen on for call waiting"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3002
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->finish()V

    .line 3018
    :goto_1
    return v4

    .end local v1    # "isCallWaiting":Z
    :cond_2
    move v1, v4

    .line 2975
    goto :goto_0

    .line 3011
    .restart local v1    # "isCallWaiting":Z
    :cond_3
    invoke-virtual {p0, v4, v4}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    :cond_4
    :goto_2
    move v4, v3

    .line 3018
    goto :goto_1

    .line 3014
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v4, p1, v5}, Lcom/android/incallui/StatusBarNotifier;->updateNotificationAndLaunchIncomingCallUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3015
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v4, p1, v5}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    goto :goto_2
.end method

.method public static toRotationAngle(I)I
    .locals 1
    .param p0, "rotation"    # I

    .prologue
    .line 4391
    packed-switch p0, :pswitch_data_0

    .line 4405
    const/4 v0, 0x0

    .line 4407
    .local v0, "rotationAngle":I
    :goto_0
    return v0

    .line 4393
    .end local v0    # "rotationAngle":I
    :pswitch_0
    const/4 v0, 0x0

    .line 4394
    .restart local v0    # "rotationAngle":I
    goto :goto_0

    .line 4396
    .end local v0    # "rotationAngle":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 4397
    .restart local v0    # "rotationAngle":I
    goto :goto_0

    .line 4399
    .end local v0    # "rotationAngle":I
    :pswitch_2
    const/16 v0, 0xb4

    .line 4400
    .restart local v0    # "rotationAngle":I
    goto :goto_0

    .line 4402
    .end local v0    # "rotationAngle":I
    :pswitch_3
    const/16 v0, 0x10e

    .line 4403
    .restart local v0    # "rotationAngle":I
    goto :goto_0

    .line 4391
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

    .line 959
    const/4 v1, 0x0

    .line 960
    .local v1, "updateListeners":Z
    const/4 v0, 0x0

    .line 962
    .local v0, "doAttemptCleanup":Z
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 963
    const-string v2, "setActivity isActivityStarted - return "

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    if-eqz p1, :cond_8

    .line 968
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v2, :cond_2

    .line 969
    const/4 v1, 0x1

    .line 970
    const-string v2, "UI Initialized"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 977
    :cond_2
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 978
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallActivity;->setExcludeFromRecents(Z)V

    .line 980
    const-string v2, "ims_support_multimedia_caller_id"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 981
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

    .line 982
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/InCallActivity;->updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V

    .line 987
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 988
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/InCallPresenter;->maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V

    .line 997
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v3, :cond_5

    .line 998
    const-string v2, "UI Initialized, but no calls left.  shut down."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 999
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    goto :goto_0

    .line 1003
    :cond_5
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v2}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1004
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallPresenter;->onCoverStateChanged(Z)V

    .line 1046
    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    .line 1047
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/CallList;)V

    .line 1050
    :cond_7
    if-eqz v0, :cond_0

    .line 1051
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    goto :goto_0

    .line 1007
    :cond_8
    const-string v2, "UI Destroyed"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1008
    const/4 v1, 0x1

    .line 1009
    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 1011
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->initCoverStateControls()V

    .line 1013
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1014
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-virtual {v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1015
    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    .line 1027
    :cond_9
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->clearDisconnectedTimeoutEvent()Z

    .line 1028
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public acceptUpgradeRequest(ILandroid/content/Context;)V
    .locals 4
    .param p1, "videoState"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2029
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

    .line 2031
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v2, :cond_1

    .line 2032
    invoke-static {p2}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 2033
    const-string v2, " acceptUpgradeRequest mCallList is empty so returning"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2045
    :cond_0
    :goto_0
    return-void

    .line 2037
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2038
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 2039
    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, p1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 2040
    .local v1, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2041
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 2043
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0
.end method

.method public addCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$CanAddCallListener;

    .prologue
    .line 1817
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1819
    return-void
.end method

.method public addConfigurationListener(Lcom/android/incallui/InCallPresenter$ConfigurationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$ConfigurationListener;

    .prologue
    .line 1897
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1898
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mConfigurationListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1899
    return-void
.end method

.method public addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallDetailsListener;

    .prologue
    .line 1804
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1806
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1808
    :cond_0
    return-void
.end method

.method public addEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$EmergencyModeListener;

    .prologue
    .line 1853
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1854
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyModeListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1855
    return-void
.end method

.method public addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallEventListener;

    .prologue
    .line 1839
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1840
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1841
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1842
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    invoke-interface {p1, v0}, Lcom/android/incallui/InCallPresenter$InCallEventListener;->onFullscreenModeChanged(Z)V

    .line 1844
    :cond_0
    return-void
.end method

.method public addInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallUiListener;

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2166
    return-void
.end method

.method public addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    .prologue
    .line 1740
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;Z)V

    .line 1741
    return-void
.end method

.method public addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;Z)V
    .locals 3
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$IncomingCallListener;
    .param p2, "needUpdate"    # Z

    .prologue
    .line 1744
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-virtual {v1, v2, p1}, Lcom/android/incallui/bike/BikeModeController;->addIncomingCallListenerComsumed(Ljava/util/List;Lcom/android/incallui/InCallPresenter$IncomingCallListener;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1757
    :cond_0
    :goto_0
    return-void

    .line 1748
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1749
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1750
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 1751
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1752
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1753
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-interface {p1, v1, v2, v0}, Lcom/android/incallui/InCallPresenter$IncomingCallListener;->onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .prologue
    .line 1780
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;Z)V

    .line 1781
    return-void
.end method

.method public addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;Z)V
    .locals 3
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallStateListener;
    .param p2, "needUpdate"    # Z

    .prologue
    .line 1784
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1786
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1787
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1788
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1789
    const-string v0, "addListener: Skip onStateChange during UI Locked"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1795
    :cond_0
    :goto_0
    return-void

    .line 1791
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
    .line 1908
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1909
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1910
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1911
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1912
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1913
    const-string v0, "addListenerOfManager: Skip onStateChange during UI Locked"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1919
    :cond_0
    :goto_0
    return-void

    .line 1915
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
    .line 1766
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1768
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1769
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1770
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1771
    const-string v0, "addListenerToFirst: Skip onStateChange during UI Locked"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1777
    :cond_0
    :goto_0
    return-void

    .line 1773
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
    .line 1886
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1887
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mMobileKeyboardListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1888
    return-void
.end method

.method public addOnehandAnyScreenOnListener(Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;

    .prologue
    .line 1875
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1876
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandAnyScreenOnListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1877
    return-void
.end method

.method public addOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$OnehandModeListener;

    .prologue
    .line 1864
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1865
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandModeListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1866
    return-void
.end method

.method public addOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallOrientationListener;

    .prologue
    .line 1828
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1829
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1830
    return-void
.end method

.method public answerIncomingCall(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "videoState"    # I

    .prologue
    const/4 v3, 0x0

    .line 1999
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_1

    .line 2000
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 2009
    :cond_0
    :goto_0
    return-void

    .line 2004
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2005
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 2006
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    .line 2007
    invoke-virtual {p0, v3, v3}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    goto :goto_0
.end method

.method public answeringMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4196
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

    .line 4197
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

    .line 4217
    :cond_0
    :goto_0
    return-void

    .line 4199
    :cond_1
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-nez v1, :cond_5

    .line 4200
    invoke-static {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    .line 4201
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_2

    .line 4202
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    goto :goto_0

    .line 4205
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 4206
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_3

    .line 4207
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/TelecomAdapter;->answerCall(Lcom/android/incallui/Call;)V

    .line 4209
    :cond_3
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnsweringMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4210
    invoke-static {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnsweringMode(Z)V

    .line 4212
    :cond_4
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->playGuidance()V

    .line 4213
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->resetAutoAnsTimer()V

    goto :goto_0

    .line 4214
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_5
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4215
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

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 850
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 851
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

    .line 853
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    if-eqz v3, :cond_0

    .line 854
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v3}, Lcom/android/incallui/ContactInfoCache;->clearCache()V

    .line 856
    :cond_0
    if-eqz v0, :cond_1

    .line 857
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3, v1}, Lcom/android/incallui/InCallActivity;->setExcludeFromRecents(Z)V

    .line 858
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->finish()V

    .line 860
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->initCoverStateControls()V

    .line 861
    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mAccountSelectionCancelled:Z

    if-eqz v1, :cond_1

    .line 864
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 867
    :cond_1
    return-void

    .end local v0    # "doFinish":Z
    :cond_2
    move v0, v2

    .line 850
    goto :goto_0
.end method

.method public bringToForeground(Z)V
    .locals 2
    .param p1, "showDialpad"    # Z

    .prologue
    .line 2189
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallPresenter;->showDialpadDuringPenMultiWindow(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2203
    :cond_0
    :goto_0
    return-void

    .line 2200
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->hasInCallUiFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    .line 2201
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    goto :goto_0
.end method

.method public cancelAccountSelection()V
    .locals 3

    .prologue
    .line 1955
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mAccountSelectionCancelled:Z

    .line 1956
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_0

    .line 1957
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1958
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1959
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1960
    .local v1, "callId":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 1963
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "callId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public cancelAndUpdateNotification()V
    .locals 3

    .prologue
    .line 3354
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    .line 3355
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    .line 3356
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    .line 3358
    :cond_0
    return-void
.end method

.method public checkAndChangeOrientation(I)Z
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 3434
    const/4 v0, 0x0

    .line 3435
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getRequestedOrientation()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 3436
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, p1}, Lcom/android/incallui/InCallActivity;->setRequestedOrientation(I)V

    .line 3437
    const/4 v0, 0x1

    .line 3439
    :cond_0
    return v0
.end method

.method public checkAndStartAM()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4080
    const-string v8, "checkAndStartAM"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4081
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 4082
    .local v1, "call":Lcom/android/incallui/Call;
    const/4 v3, 0x0

    .line 4084
    .local v3, "hasActiveCall":Z
    if-eqz v1, :cond_0

    .line 4085
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    move v3, v6

    .line 4088
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "callsettings_ring_duration"

    const/16 v10, 0xd

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 4092
    .local v5, "limit":I
    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "callsettings_answer_memo"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4096
    .local v0, "answerMemo":I
    const/4 v4, 0x0

    .line 4097
    .local v4, "isVoicePartyCall":Z
    const-string v8, "feature_kdi"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4098
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v4

    .line 4101
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

    .line 4102
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

    .line 4103
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

    .line 4104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- all_sound_off == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4106
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSystemSettingAllSoundOff()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4104
    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4107
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

    .line 4108
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

    .line 4109
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

    .line 4111
    if-eqz v0, :cond_2

    if-ne v0, v6, :cond_5

    .line 4112
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

    .line 4113
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

    .line 4115
    if-eqz v2, :cond_3

    .line 4116
    const-string v6, "answerMemo  ON "

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4117
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4118
    invoke-direct {p0, v5}, Lcom/android/incallui/InCallPresenter;->startAutoAnsTimer(I)V

    .line 4123
    :cond_3
    :goto_2
    return-void

    .end local v0    # "answerMemo":I
    .end local v2    # "canAMStart":Z
    .end local v4    # "isVoicePartyCall":Z
    .end local v5    # "limit":I
    :cond_4
    move v3, v7

    .line 4085
    goto/16 :goto_0

    .restart local v0    # "answerMemo":I
    .restart local v4    # "isVoicePartyCall":Z
    .restart local v5    # "limit":I
    :cond_5
    move v2, v7

    .line 4112
    goto :goto_1

    .line 4120
    .restart local v2    # "canAMStart":Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->memoryFullAnswerMemoNotification()V

    goto :goto_2
.end method

.method public clearFullscreen()V
    .locals 1

    .prologue
    .line 4300
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    .line 4301
    return-void
.end method

.method public declineIncomingCall(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2017
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_1

    .line 2018
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 2026
    :cond_0
    :goto_0
    return-void

    .line 2022
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2023
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 2024
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
    .line 2070
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->declineUpgradeRequest(Landroid/content/Context;)V

    .line 2071
    return-void

    .line 2070
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public declineUpgradeRequest(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 2049
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v2, :cond_1

    .line 2050
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 2063
    :cond_0
    :goto_0
    return-void

    .line 2054
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2055
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 2056
    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, v3}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 2058
    .local v1, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2059
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 2061
    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0
.end method

.method public disconnectCallForVoiceParty()V
    .locals 4

    .prologue
    .line 4220
    const/4 v1, 0x0

    .line 4221
    .local v1, "isVoicePartyCall":Z
    const-string v2, "feature_kdi"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4222
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 4224
    :cond_0
    if-eqz v1, :cond_1

    .line 4225
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 4226
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/CallList;->isLiveCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4227
    const-string v2, "hangUpOngoingCall: set DISCONNECTING voice memo"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4228
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 4229
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->setState(I)V

    .line 4230
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    .line 4233
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    return-void
.end method

.method public enableScreenTimeout(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/16 v3, 0x80

    .line 4368
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

    .line 4369
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v1, :cond_0

    .line 4370
    const-string v1, "enableScreenTimeout: mInCallActivity is null."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4380
    :goto_0
    return-void

    .line 4374
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 4375
    .local v0, "window":Landroid/view/Window;
    if-eqz p1, :cond_1

    .line 4376
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 4378
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public forceCancelNotification(Z)V
    .locals 1
    .param p1, "block"    # Z

    .prologue
    .line 3347
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    .line 3348
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0, p1}, Lcom/android/incallui/StatusBarNotifier;->setBlockToUpdate(Z)V

    .line 3349
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    .line 3351
    :cond_0
    return-void
.end method

.method public getActivity()Lcom/android/incallui/InCallActivity;
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    return-object v0
.end method

.method public getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    .locals 1

    .prologue
    .line 4072
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    return-object v0
.end method

.method public getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    return-object v0
.end method

.method public getAudioMode()I
    .locals 1

    .prologue
    .line 3860
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method public getBikeModeController()Lcom/android/incallui/bike/BikeModeController;
    .locals 1

    .prologue
    .line 4435
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    return-object v0
.end method

.method public getBluetoothProfileManager()Lcom/android/incallui/BluetoothProfileManager;
    .locals 1

    .prologue
    .line 4439
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    return-object v0
.end method

.method public getCallCardFragmentVisible()Z
    .locals 1

    .prologue
    .line 3461
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3462
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->isVisible()Z

    move-result v0

    .line 3464
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallList()Lcom/android/incallui/CallList;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    return-object v0
.end method

.method public getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    return-object v0
.end method

.method public getCoverScreen()Lcom/android/incallui/accessory/CoverScreen;
    .locals 1

    .prologue
    .line 3839
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    if-eqz v0, :cond_0

    .line 3840
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/accessory/CoverViewManager;->getCoverScreen()Lcom/android/incallui/accessory/CoverScreen;

    move-result-object v0

    .line 3842
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCoverViewManager()Lcom/android/incallui/accessory/CoverViewManager;
    .locals 1

    .prologue
    .line 3835
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    return-object v0
.end method

.method public getInCallActivityInfo()Landroid/os/Bundle;
    .locals 13

    .prologue
    .line 4518
    const/4 v1, 0x0

    .line 4519
    .local v1, "defaultH":I
    const/4 v2, 0x0

    .line 4520
    .local v2, "defaultW":I
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4521
    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a041e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v1, v9

    .line 4522
    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a041f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v2, v9

    .line 4528
    :goto_0
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 4529
    .local v8, "size":Landroid/graphics/Point;
    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 4530
    .local v3, "display":Landroid/view/Display;
    invoke-virtual {v3, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 4532
    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a041c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v4, v9

    .line 4533
    .local v4, "offsetX":I
    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a041d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v5, v9

    .line 4535
    .local v5, "offsetY":I
    iget v9, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v2

    sub-int v6, v9, v4

    .line 4536
    .local v6, "posX":I
    iget v9, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v1

    sub-int v7, v9, v5

    .line 4538
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

    .line 4539
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4540
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v9, "android:activity.launchBounds"

    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v6, v2

    add-int v12, v7, v1

    invoke-direct {v10, v6, v7, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4541
    return-object v0

    .line 4524
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

    const v10, 0x7f0a0420

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v1, v9

    .line 4525
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

    .prologue
    .line 3366
    monitor-enter p0

    .line 3367
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    if-nez v0, :cond_0

    .line 3368
    new-instance v0, Lcom/android/incallui/InCallCameraManager;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallCameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    .line 3371
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    monitor-exit p0

    return-object v0

    .line 3372
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
    .line 3292
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
    .line 3296
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3297
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10840000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3301
    move-object v1, p3

    .line 3302
    .local v1, "tartgetClassForIntent":Ljava/lang/Class;
    if-nez p3, :cond_0

    .line 3303
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getTargetClass()Ljava/lang/Class;

    move-result-object v1

    .line 3305
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3307
    if-eqz p1, :cond_1

    .line 3308
    const-string v2, "InCallActivity.show_dialpad"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3311
    :cond_1
    const-string v2, "InCallActivity.new_outgoing_call"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3312
    return-object v0
.end method

.method public getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeModeController;->getInCallStateConsumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 673
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_0
.end method

.method public getKnoxCustomDisabledItems()I
    .locals 1

    .prologue
    .line 4060
    iget v0, p0, Lcom/android/incallui/InCallPresenter;->mKnoxCustomDisabledItems:I

    return v0
.end method

.method public getPhotoringBlocked()I
    .locals 1

    .prologue
    .line 2251
    iget v0, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    return v0
.end method

.method public getPhotoringContentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringContentPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 3
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 1665
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 1667
    .local v0, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 1703
    :goto_0
    return-object v1

    .line 1670
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1671
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 1697
    :cond_1
    :goto_1
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_b

    .line 1698
    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mBoundAndWaitingForOutgoingCall:Z

    if-eqz v1, :cond_b

    .line 1699
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_0

    .line 1672
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1673
    const-string v1, "feature_multisim_preferred_sim"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "feature_multisim_adaptive_callback"

    .line 1674
    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1675
    :cond_3
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_SIM_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1

    .line 1677
    :cond_4
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1

    .line 1679
    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1680
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1681
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "*31#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1682
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

    .line 1683
    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1686
    :cond_7
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1

    .line 1688
    :cond_8
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1689
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1

    .line 1690
    :cond_9
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_a

    .line 1691
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_a

    .line 1692
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_a

    .line 1693
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1694
    :cond_a
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    goto/16 :goto_1

    :cond_b
    move-object v1, v0

    .line 1703
    goto/16 :goto_0
.end method

.method public getProximitySensor()Lcom/android/incallui/ProximitySensor;
    .locals 1

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    return-object v0
.end method

.method public getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    .locals 1

    .prologue
    .line 1072
    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    return-object v0
.end method

.method public getSpaceBesideCallCard()F
    .locals 1

    .prologue
    .line 3448
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3449
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->getSpaceBesideCallCard()F

    move-result v0

    .line 3451
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTargetClass()Ljava/lang/Class;
    .locals 6

    .prologue
    .line 3280
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 3281
    .local v2, "context":Landroid/content/Context;
    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3282
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 3283
    .local v1, "calls":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyCall:Z

    if-eqz v3, :cond_0

    const-string v3, "panic_mode_swa"

    .line 3284
    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3285
    const-class v3, Lcom/android/incallui/PinPanicDummyActivity;

    .line 3287
    :goto_0
    return-object v3

    :cond_0
    const-class v3, Lcom/android/incallui/InCallActivity;

    goto :goto_0
.end method

.method public getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 3568
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_0

    .line 3569
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    .line 3570
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 3572
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 3579
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public getThemeColors()Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 1

    .prologue
    .line 3535
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    return-object v0
.end method

.method public getVideoPopupService()Lcom/android/incallui/service/SecVideoPopupService;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/service/SecVideoPopupService;

    return-object v0
.end method

.method public handleAccountSelection(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "setDefault"    # Z

    .prologue
    .line 1932
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_0

    .line 1933
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1934
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1935
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1936
    .local v1, "callId":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/incallui/TelecomAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 1939
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

    .line 2260
    const-string v8, "handleCallKey"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2266
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    .line 2271
    .local v2, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v7

    .line 2272
    .local v7, "incomingCall":Lcom/android/incallui/Call;
    if-eqz v7, :cond_5

    .line 2273
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

    .line 2276
    const-string v8, "roaming_enhancement"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2277
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->isCallRoamingGuardDialogShowing()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2345
    :cond_0
    :goto_0
    return v10

    .line 2281
    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    .line 2282
    .local v1, "answerUi":Lcom/android/incallui/AnswerUi;
    if-eqz v1, :cond_3

    .line 2283
    const-string v8, "handleCallKey : onAnswerWithWaitingCheck"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2284
    invoke-interface {v1}, Lcom/android/incallui/AnswerUi;->isAlreadyAnimationProcessing()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2285
    const-string v8, "Skip handleCallKey when answer animation is running"

    invoke-static {p0, v8, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2288
    :cond_2
    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-static {v7}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    goto :goto_0

    .line 2290
    :cond_3
    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    if-eqz v8, :cond_4

    .line 2291
    const-string v8, "handleCallKey - mCallPopupService : onAnswerWithWaitingCheck"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2292
    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v8}, Lcom/android/incallui/service/SecCallPopupService;->onAnswerWithWaitingCheck()V

    goto :goto_0

    .line 2294
    :cond_4
    const-string v8, "handleCallKey : answerCall"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2295
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/incallui/TelecomAdapter;->answerCall(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 2304
    .end local v1    # "answerUi":Lcom/android/incallui/AnswerUi;
    :cond_5
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2305
    .local v0, "activeCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_7

    .line 2308
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    .line 2310
    .local v4, "canMerge":Z
    invoke-virtual {v0, v11}, Lcom/android/incallui/Call;->can(I)Z

    move-result v5

    .line 2313
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

    .line 2317
    if-eqz v4, :cond_6

    .line 2318
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2320
    :cond_6
    if-eqz v5, :cond_7

    .line 2321
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/TelecomAdapter;->swap(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2329
    .end local v4    # "canMerge":Z
    .end local v5    # "canSwap":Z
    :cond_7
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v6

    .line 2330
    .local v6, "heldCall":Lcom/android/incallui/Call;
    if-eqz v6, :cond_0

    .line 2333
    invoke-virtual {v6, v10}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    .line 2335
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

    .line 2338
    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    if-ne v8, v11, :cond_0

    if-eqz v3, :cond_0

    .line 2339
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
    .line 2464
    return-void
.end method

.method public handleError(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 2468
    return-void
.end method

.method public handleIncommingIMandFT(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2460
    return-void
.end method

.method public handleInvitation(ZLandroid/content/Intent;)V
    .locals 4
    .param p1, "isIncoming"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2451
    const-string v1, "notify user make notification"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2452
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2453
    .local v0, "activecall":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/secrcs/RcsShareUI;->notifyUser(Landroid/content/Context;Ljava/lang/String;)V

    .line 2454
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    .line 2455
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getRcsInvitation()Lcom/android/incallui/secrcs/RcsInvitation;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/secrcs/RcsInvitation;->updateState(Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 2456
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

    .line 2385
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

    .line 2386
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2387
    .local v0, "call":Lcom/android/incallui/Call;
    const-string v5, "ims_rcs"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2388
    const-string v5, "com.samsung.rcs.intent.action.CONTACTS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2389
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2390
    .local v2, "outside":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2391
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2393
    .local v1, "inside":Landroid/content/Intent;
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->getContactsPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sec.android.app.contacts.PhoneBookTopMenuActivity"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2394
    const-string v5, "EXTRA_INTENT"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2395
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2447
    .end local v1    # "inside":Landroid/content/Intent;
    .end local v2    # "outside":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2396
    :cond_1
    const-string v5, "com.samsung.rcs.intent.action.ADD_CALL"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2397
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/TelecomAdapter;->addCall()V

    goto :goto_0

    .line 2398
    :cond_2
    const-string v5, "com.samsung.rcs.intent.action.MANAGE_CONFERENCE_CALL"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2400
    const-string v5, "com.samsung.rcs.intent.action.NOTES"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2401
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEMO_CREATE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2402
    :cond_3
    const-string v5, "com.samsung.rcs.intent.action.SIM_SERVICES"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2403
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.stk.start_main_activity"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2404
    :cond_4
    const-string v5, "com.samsung.rcs.intent.action.BLUETOOTH_HANDSET"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2405
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/UiAdapter;->getCallButtonPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    .line 2406
    .local v3, "presenter":Lcom/android/incallui/CallButtonPresenter;
    if-eqz v3, :cond_0

    .line 2407
    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->toggleBluetooth()V

    goto :goto_0

    .line 2409
    .end local v3    # "presenter":Lcom/android/incallui/CallButtonPresenter;
    :cond_5
    const-string v5, "com.samsung.rcs.intent.action.INIT_SPEAKER_ON"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2410
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 2411
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/incallui/InCallPresenter;->setAudioMode(I)V

    goto :goto_0

    .line 2413
    :cond_6
    const-string v5, "com.samsung.rcs.intent.action.UPDATE_PROXIMITY"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2414
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    goto/16 :goto_0

    .line 2415
    :cond_7
    const-string v5, "com.samsung.rcs.intent.action.ACTION_RCS_SPEAKER_OFF"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2416
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 2417
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/android/incallui/InCallPresenter;->setAudioMode(I)V

    goto/16 :goto_0

    .line 2419
    :cond_8
    const-string v5, "com.samsung.rcs.intent.action.SPEAKER_ON"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "com.samsung.rcs.intent.action.SPEAKER_OFF"

    .line 2420
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2421
    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->toggleSpeakerphone()V

    goto/16 :goto_0

    .line 2422
    :cond_a
    const-string v5, "com.samsung.rcs.intent.action.ACTION_RCS_CALL_HOLD"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2423
    const-string v5, " Hold request received"

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2424
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2425
    :cond_b
    const-string v5, "com.samsung.rcs.intent.action.MUTE_ON"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2426
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    goto/16 :goto_0

    .line 2427
    :cond_c
    const-string v5, "com.samsung.rcs.intent.action.MUTE_OFF"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2428
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    goto/16 :goto_0

    .line 2429
    :cond_d
    const-string v5, "com.samsung.rcs.intent.action.END_CALL"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2430
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/incallui/InCallPresenter;->hangUpOngoingCall(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2431
    :cond_e
    const-string v5, "com.samsung.rcs.intent.action.ACTION_LAUNCH_MINI_MODE_CALL_VIEW"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2432
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v4

    .line 2433
    .local v4, "proximitySensor":Lcom/android/incallui/ProximitySensor;
    const-string v5, "action ACTION_LAUNCH_MINI_MODE_CALL_VIEW received from RCS "

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2434
    if-eqz v4, :cond_0

    .line 2435
    invoke-virtual {v4, v9}, Lcom/android/incallui/ProximitySensor;->setFromRcsShare(Z)V

    .line 2436
    invoke-virtual {v4}, Lcom/android/incallui/ProximitySensor;->forceUpdateProximitySensorMode()V

    goto/16 :goto_0

    .line 2438
    .end local v4    # "proximitySensor":Lcom/android/incallui/ProximitySensor;
    :cond_f
    const-string v5, "com.samsung.rcs.intent.action.ACTION_HIDE_MINI_MODE_CALL_VIEW"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2439
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v4

    .line 2440
    .restart local v4    # "proximitySensor":Lcom/android/incallui/ProximitySensor;
    const-string v5, "action ACTION_HIDE_MINI_MODE_CALL_VIEW received from RCS "

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2441
    if-eqz v4, :cond_0

    .line 2442
    invoke-virtual {v4, v7}, Lcom/android/incallui/ProximitySensor;->setFromRcsShare(Z)V

    .line 2443
    invoke-virtual {v4}, Lcom/android/incallui/ProximitySensor;->forceUpdateProximitySensorMode()V

    goto/16 :goto_0
.end method

.method public handoverFailNotification(Lcom/android/incallui/Call;)V
    .locals 7
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v6, 0x1

    .line 4261
    if-nez p1, :cond_1

    .line 4294
    :cond_0
    :goto_0
    return-void

    .line 4262
    :cond_1
    const-string v4, "handoverFailNotification()"

    invoke-static {p0, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 4263
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isAvailableEpdg()Z

    move-result v0

    .line 4264
    .local v0, "canEpdg":Z
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDeviceOnWiFi()Z

    move-result v3

    .line 4265
    .local v3, "isWiFiOn":Z
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 4266
    .local v1, "isEpdg":Z
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v2

    .line 4267
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

    .line 4268
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 4282
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4283
    if-eqz v3, :cond_2

    .line 4284
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4285
    const v4, 0x7f0902e2

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_0

    .line 4288
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4289
    const v4, 0x7f0905a9

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_0
.end method

.method public hangUpOngoingCall(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1971
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_1

    .line 1972
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-nez v1, :cond_0

    .line 1975
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 1991
    :cond_0
    :goto_0
    return-void

    .line 1980
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1981
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_2

    .line 1982
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1985
    :cond_2
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->isLiveCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1986
    const-string v1, "hangUpOngoingCall: set DISCONNECTING"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1987
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 1988
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setState(I)V

    .line 1989
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public hasInCallUiFocus()Z
    .locals 1

    .prologue
    .line 2081
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
    .line 870
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/service/SecVideoPopupService;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/service/SecVideoPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecVideoPopupService;->hidePopup()V

    .line 873
    :cond_0
    return-void
.end method

.method public isActivityPreviouslyStarted()Z
    .locals 1

    .prologue
    .line 2101
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    return v0
.end method

.method public isActivityStarted()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2091
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 2092
    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 2093
    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->isFinishing()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 2097
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 2093
    goto :goto_0

    .line 2094
    :catch_0
    move-exception v0

    .line 2095
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "isActivityStarted - mInCallActivity = null"

    invoke-static {p0, v3, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    move v1, v2

    .line 2097
    goto :goto_0
.end method

.method public isBoundAndWaitingForOutgoingCall()Z
    .locals 1

    .prologue
    .line 1707
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mBoundAndWaitingForOutgoingCall:Z

    return v0
.end method

.method public isChangingConfigurations()Z
    .locals 1

    .prologue
    .line 2110
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    return v0
.end method

.method public isDialpadVisible()Z
    .locals 2

    .prologue
    .line 3487
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 3488
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 3489
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    .line 3491
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 4338
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    return v0
.end method

.method public isServiceBound()Z
    .locals 1

    .prologue
    .line 3226
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    return v0
.end method

.method public isShowingInCallUi()Z
    .locals 1

    .prologue
    .line 2077
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

    .line 4443
    const-string v3, "support_tphone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4444
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4445
    const-string v3, "do not start popup service when tphone mode"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4465
    :cond_0
    :goto_0
    return v2

    .line 4449
    :cond_1
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4450
    const-string v3, "Popup service is not supported in LGT Model."

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 4453
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 4454
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/android/incallui/InCallUISystemDB;->isFlightMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4457
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4460
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4461
    const-string v3, "Popup service is not supported in EmergencyMode."

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 4464
    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 4465
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getStartPopupServiceWhenMakeCallFromOtherApp(Lcom/android/incallui/Call;)Z

    move-result v2

    goto :goto_0
.end method

.method public maybeStartRevealAnimation(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3253
    return-void
.end method

.method public memoryFullAnswerMemoNotification()V
    .locals 1

    .prologue
    .line 4068
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0}, Lcom/android/incallui/StatusBarNotifier;->memoryFullAnswerMemoNotification()V

    .line 4069
    return-void
.end method

.method public notifyFullscreenModeChange(Z)V
    .locals 3
    .param p1, "isFullscreenMode"    # Z

    .prologue
    .line 4348
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

    .line 4349
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$InCallEventListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallPresenter$InCallEventListener;->onFullscreenModeChanged(Z)V

    goto :goto_0

    .line 4351
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$InCallEventListener;
    :cond_0
    return-void
.end method

.method public notifySecondaryCallerInfoVisibilityChanged(ZI)V
    .locals 3
    .param p1, "isVisible"    # Z
    .param p2, "height"    # I

    .prologue
    .line 4362
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

    .line 4363
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$InCallEventListener;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallPresenter$InCallEventListener;->onSecondaryCallerInfoVisibilityChanged(ZI)V

    goto :goto_0

    .line 4365
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$InCallEventListener;
    :cond_0
    return-void
.end method

.method onActivityStarted()V
    .locals 1

    .prologue
    .line 2174
    const-string v0, "onActivityStarted"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2176
    return-void
.end method

.method onActivityStopped()V
    .locals 1

    .prologue
    .line 2180
    const-string v0, "onActivityStopped"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2182
    return-void
.end method

.method public onBringToForeground(Z)V
    .locals 1
    .param p1, "showDialpad"    # Z

    .prologue
    .line 378
    const-string v0, "Bringing UI to foreground."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    .line 380
    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->onCallAdded(Landroid/telecom/Call;)V

    .line 394
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallPresenter;->setBoundAndWaitingForOutgoingCall(ZLandroid/telecom/PhoneAccountHandle;)V

    .line 395
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallCallback:Landroid/telecom/Call$Callback;

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    .line 396
    const-string v0, "multiend_point"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-static {}, Lcom/android/incallui/remotecall/utils/RemoteCallUtils;->updateRemoteCallUI()V

    .line 399
    :cond_0
    return-void
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 22
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 1094
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

    .line 1096
    const-string v19, "ims_rcs"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1097
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 1098
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

    .line 1099
    new-instance v13, Landroid/content/Intent;

    const-string v19, "com.samsung.rcs.contentsharing.action.DISCONNECT_SHARE"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1100
    .local v13, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1104
    .end local v13    # "i":Landroid/content/Intent;
    :cond_0
    if-nez p1, :cond_2

    .line 1318
    :cond_1
    :goto_0
    return-void

    .line 1107
    :cond_2
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/InCallPresenter;->mAwaitingCallListUpdate:Z

    .line 1108
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v8

    .line 1110
    .local v8, "call":Lcom/android/incallui/Call;
    const-string v19, "vzw_volte_ui"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1111
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->updateVZWLTEVideoCallMenuShow()V

    .line 1114
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1115
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v19

    if-nez v19, :cond_5

    .line 1116
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    if-eqz v19, :cond_5

    .line 1117
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1118
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v6

    .line 1119
    .local v6, "answerUi":Lcom/android/incallui/AnswerUi;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Lcom/android/incallui/AnswerUi;->isAnswerAnimationRunning()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1120
    const-string v19, "perf - Skip onCallListChange when answer animation is running"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1123
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/InCallActivity;->isShrinkBackgroundRunning()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1124
    const-string v19, "perf - Skip onCallListChange when scale animation is running"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1129
    .end local v6    # "answerUi":Lcom/android/incallui/AnswerUi;
    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v9

    .line 1130
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

    .line 1131
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v5

    .line 1132
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

    .line 1135
    .end local v5    # "activity":Landroid/app/Activity;
    :cond_7
    const-string v19, "feature_dcm"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 1136
    if-eqz v9, :cond_b

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v19

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v10

    .line 1138
    .local v10, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v10, :cond_b

    iget-boolean v0, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    iget-boolean v0, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isChangedHideStatus:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 1140
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

    .line 1141
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

    .line 1142
    :cond_a
    const-string v19, "NTT DOCOMO : unregisterContentObserver "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1143
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

    .line 1144
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    .line 1145
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isChangedHideStatus:Z

    .line 1150
    .end local v10    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_b
    const-string v19, "panic_mode_swa"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1151
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v15

    .line 1152
    .local v15, "mCall":Lcom/android/incallui/Call;
    if-eqz v15, :cond_c

    invoke-virtual {v15}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1153
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/InCallPresenter;->mEmergencyCall:Z

    .line 1156
    .end local v15    # "mCall":Lcom/android/incallui/Call;
    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v16

    .line 1157
    .local v16, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v17, v0

    .line 1158
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

    .line 1159
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v16

    .line 1160
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

    .line 1162
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_d

    .line 1163
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->postAccessibilityEventForUpdateScreen()V

    .line 1167
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

    .line 1168
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 1170
    const-string v19, "UI"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/util/InCallUtils;->isEcholocateEnabled(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 1171
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

    .line 1172
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v19

    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getEcholocatePhoneNumber()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->CALL_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    .line 1173
    invoke-virtual/range {v21 .. v21}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v21

    .line 1172
    invoke-virtual/range {v19 .. v21}, Lcom/android/incallui/TelecomAdapter;->senduiCallState(Ljava/lang/String;I)V

    .line 1179
    :cond_e
    :goto_2
    const-string v19, "lock_screen_during_call"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 1180
    const/4 v7, 0x0

    .line 1181
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

    .line 1183
    :cond_10
    const/4 v7, 0x1

    .line 1185
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/incallui/InCallPresenter;->sendLockScreenEvent(Z)V

    .line 1188
    .end local v7    # "bNow":Z
    :cond_12
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v19

    if-eqz v19, :cond_16

    .line 1189
    const-string v19, "Skip onCallListChange during UI Locked"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1190
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

    .line 1192
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/incallui/InCallPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    goto/16 :goto_0

    .line 1132
    .end local v16    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    .end local v17    # "oldState":Lcom/android/incallui/InCallPresenter$InCallState;
    .restart local v5    # "activity":Landroid/app/Activity;
    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 1175
    .end local v5    # "activity":Landroid/app/Activity;
    .restart local v16    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    .restart local v17    # "oldState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_15
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getState()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/util/InCallUtils;->sendEcholocateUIState(I)V

    goto :goto_2

    .line 1198
    :cond_16
    const-string v19, "multiend_point"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 1199
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

    .line 1200
    const-string v19, "Launching InCall UI when state From NO_CALL to INCALL"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1201
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    .line 1205
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

    .line 1206
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v19

    if-eqz v19, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v19

    if-nez v19, :cond_18

    .line 1207
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    .line 1211
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    move-object/from16 v19, v0

    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    move/from16 v19, v0

    if-eqz v19, :cond_19

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/util/SystemServiceUtils;->pokeUserActivity(Landroid/content/Context;)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/accessory/CoverViewManager;->updateCoverScreenTimeOut()V

    .line 1216
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1a

    .line 1217
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->initCoverStateControls()V

    .line 1221
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

    .line 1222
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

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v14, v0, v1, v2}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_3

    .line 1225
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

    .line 1226
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

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v14, v0, v1, v2}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_4

    .line 1230
    .end local v14    # "listener":Lcom/android/incallui/InCallPresenter$InCallStateListener;
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 1231
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v19

    if-nez v19, :cond_1d

    .line 1232
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v19

    if-eqz v19, :cond_29

    :cond_1d
    const/4 v12, 0x1

    .line 1233
    .local v12, "hasCall":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/incallui/InCallActivity;->dismissKeyguard(Z)V

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/InCallActivity;->updateKeepScreenOnFlag()V

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v20, v0

    .line 1237
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

    .line 1236
    :goto_6
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->updateAppSwitchSystemKeyEvent(Z)V

    .line 1239
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCarModeOn()Z

    move-result v19

    if-nez v19, :cond_1e

    .line 1240
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isLostPhoneLock()Z

    move-result v19

    if-nez v19, :cond_1e

    .line 1241
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOtaMode()Z

    move-result v19

    if-nez v19, :cond_1e

    .line 1242
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeMode()Z

    move-result v19

    if-nez v19, :cond_1e

    .line 1243
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v19

    if-nez v19, :cond_1e

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/InCallActivity;->setStatusBar(Z)V

    .line 1250
    .end local v12    # "hasCall":Z
    :cond_1e
    const-string v19, "ims_rcs"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1f

    .line 1251
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v19

    if-nez v19, :cond_1f

    .line 1252
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v19

    if-eqz v19, :cond_1f

    .line 1253
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/secrcs/RcsShareUI;->isShareActive(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_1f

    .line 1254
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

    .line 1258
    :cond_1f
    const-string v19, "ims_rcs"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_20

    .line 1259
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v4

    .line 1260
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

    .line 1261
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

    .line 1265
    .end local v4    # "activecall":Lcom/android/incallui/Call;
    :cond_20
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/InCallPresenter;->processOnCallListChange(Lcom/android/incallui/CallList;)V

    .line 1267
    const-string v19, "auto_call_test"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_21

    .line 1268
    invoke-static {}, Lcom/android/incallui/util/VTAutoTestProxy;->getInstance()Lcom/android/incallui/util/VTAutoTestProxy;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/util/VTAutoTestProxy;->handleMessage(I)V

    .line 1272
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

    .line 1273
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

    .line 1274
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v19

    if-eqz v19, :cond_22

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtyNotification()Z

    move-result v19

    if-eqz v19, :cond_22

    .line 1275
    const-string v19, "tty notification on active call, show!"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/InCallActivity;->onTtyNotification(Z)V

    .line 1280
    :cond_22
    const-string v19, "automatic_answering_machine"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_24

    .line 1281
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

    .line 1282
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    .line 1283
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    .line 1284
    .local v11, "handler":Landroid/os/Handler;
    new-instance v19, Lcom/android/incallui/InCallPresenter$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallPresenter$7;-><init>(Lcom/android/incallui/InCallPresenter;)V

    const-wide/16 v20, 0x4b0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1291
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

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-object/from16 v19, v0

    if-eqz v19, :cond_24

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-object/from16 v19, v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->stopService(Landroid/content/Context;)V

    .line 1294
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    .line 1299
    :cond_24
    const-string v19, "smart_auto_answering"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_25

    .line 1300
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

    .line 1301
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    .line 1302
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    .line 1306
    :cond_25
    sget v19, Lcom/android/incallui/service/vt/VideoCallCapability;->HANDOVER_NOTIFICATION:I

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1307
    const/16 v18, 0x0

    .line 1308
    .local v18, "showNotification":Z
    if-eqz v8, :cond_28

    .line 1309
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->getHandoverNotificationType()Ljava/lang/String;

    move-result-object v19

    const-string v20, "VZW"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_26

    .line 1310
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

    .line 1312
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

    .line 1314
    :cond_28
    :goto_8
    if-eqz v18, :cond_1

    .line 1315
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/incallui/InCallPresenter;->handoverFailNotification(Lcom/android/incallui/Call;)V

    goto/16 :goto_0

    .line 1232
    .end local v18    # "showNotification":Z
    :cond_29
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 1237
    .restart local v12    # "hasCall":Z
    :cond_2a
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 1310
    .end local v12    # "hasCall":Z
    .restart local v18    # "showNotification":Z
    :cond_2b
    const/16 v18, 0x0

    goto :goto_7

    .line 1312
    :cond_2c
    const/16 v18, 0x0

    goto :goto_8
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 1
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->onCallRemoved(Landroid/telecom/Call;)V

    .line 487
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallCallback:Landroid/telecom/Call$Callback;

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    .line 488
    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 3
    .param p1, "canAddCall"    # Z

    .prologue
    .line 491
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

    .line 492
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$CanAddCallListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallPresenter$CanAddCallListener;->onCanAddCallChanged(Z)V

    goto :goto_0

    .line 494
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$CanAddCallListener;
    :cond_0
    return-void
.end method

.method public onChangeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoState"    # I

    .prologue
    .line 1565
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

    .line 1567
    if-nez p1, :cond_1

    .line 1585
    :cond_0
    :goto_0
    return-void

    .line 1570
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    .line 1571
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1572
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    .line 1574
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/incallui/service/vt/VideoCallControl;->shouldAcceptRequest(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1575
    invoke-static {p2}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    goto :goto_0

    .line 1578
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1579
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    .line 1581
    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/incallui/Call;->setRequestedVideoState(I)V

    .line 1582
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1583
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->hideDialpadForModifyCall()V

    goto :goto_0
.end method

.method public onCircularRevealComplete(Landroid/app/FragmentManager;)V
    .locals 2
    .param p1, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 1726
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->showCallCardFragment(Z)V

    .line 1729
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/CircularRevealFragment;->endCircularReveal(Landroid/app/FragmentManager;)V

    .line 1731
    :cond_0
    return-void
.end method

.method public onConfigurationChange(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 3400
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

    .line 3403
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

    .line 3404
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$ConfigurationListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallPresenter$ConfigurationListener;->onConfigurationChanged(I)V

    goto :goto_0

    .line 3406
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

    .line 3780
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

    .line 3782
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_1

    .line 3783
    const-string v1, "onCoverStateChanged: NO_CALLS"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3832
    :cond_0
    :goto_0
    return-void

    .line 3787
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    if-eqz v1, :cond_5

    .line 3788
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupIncomingCall_coverClosed()V

    .line 3796
    :goto_1
    const-string v1, "support_tphone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3797
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3798
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneRelaxMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3799
    :cond_2
    const-string v1, "onCoverStateChanged: tphone mode"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3800
    iput-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    .line 3822
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3823
    if-eqz p1, :cond_d

    .line 3824
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/motion/CallSContextMotion;->startPutDownListening(Landroid/content/Context;)V

    .line 3829
    :cond_4
    :goto_3
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3830
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    goto :goto_0

    .line 3790
    :cond_5
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3791
    invoke-static {p1}, Lcom/android/incallui/util/VoiceCallAppLogging;->isCoverClosed(Z)V

    goto :goto_1

    .line 3793
    :cond_6
    invoke-static {p1}, Lcom/android/incallui/util/VideoCallAppLogging;->isCoverClosed(Z)V

    goto :goto_1

    .line 3801
    :cond_7
    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    if-ne v1, p1, :cond_8

    .line 3802
    const-string v1, "onCoverStateChanged: mIsCoverClosed == isClosed"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 3804
    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3805
    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_9

    .line 3806
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string v2, "sem_statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    .line 3807
    .local v0, "mStatusBarManager":Landroid/app/SemStatusBarManager;
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/SemStatusBarManager;->setIndicatorBgColor(I)V

    .line 3809
    .end local v0    # "mStatusBarManager":Landroid/app/SemStatusBarManager;
    :cond_9
    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    if-nez v1, :cond_a

    .line 3810
    const-string v1, "onCoverStateChanged: create CoverView"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3811
    new-instance v1, Lcom/android/incallui/accessory/CoverViewManager;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-direct {v1, v2}, Lcom/android/incallui/accessory/CoverViewManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    .line 3813
    :cond_a
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    if-eqz v1, :cond_b

    .line 3814
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    invoke-virtual {v1, p1}, Lcom/android/incallui/accessory/CoverViewManager;->onCoverStateChanged(Z)V

    .line 3816
    :cond_b
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    goto/16 :goto_2

    .line 3818
    :cond_c
    const-string v1, "onCoverStateChanged: can\'t start cover"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3819
    if-eqz p1, :cond_3

    invoke-virtual {p0, v4, v4}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    goto/16 :goto_2

    .line 3826
    :cond_d
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/motion/CallSContextMotion;->stopPutDownListening(Landroid/content/Context;)V

    goto/16 :goto_3
.end method

.method public onDeviceOrientationChange(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 3385
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

    .line 3387
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v1, :cond_0

    .line 3388
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->notifyCallsOfDeviceRotation(I)V

    .line 3394
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

    .line 3395
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallPresenter$InCallOrientationListener;->onDeviceOrientationChanged(I)V

    goto :goto_1

    .line 3390
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
    :cond_0
    const-string v1, "onDeviceOrientationChange: CallList is null."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3397
    :cond_1
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v7, 0x0

    .line 1434
    const-string v4, "InCallPresenter : onDisconnect"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1436
    sget-boolean v4, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1437
    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/PrivatePolicy;->onDisconnect()V

    .line 1439
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->clearDigitsInKeypad()V

    .line 1440
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->hideDialpadForDisconnect()V

    .line 1445
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->dismissDialogForDisconnect()V

    .line 1447
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->resetTtyNotification()V

    .line 1449
    sget-boolean v4, Lcom/android/incallui/service/vt/VideoCallConfig;->OVERLAY_POPUP_PLAY:Z

    if-eqz v4, :cond_1

    .line 1450
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->hideVideoPopup()V

    .line 1453
    :cond_1
    const-string v4, "multiend_point"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1454
    invoke-static {}, Lcom/android/incallui/remotecall/utils/RemoteCallUtils;->updateRemoteCallUI()V

    .line 1457
    :cond_2
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1458
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->resetAutoAnsTimer()V

    .line 1459
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1460
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopGuidance()V

    .line 1464
    :cond_3
    const-string v4, "handle_sip_error_code"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1465
    invoke-static {p1}, Lcom/android/incallui/util/IMSErrorUtils;->handleDisconnectCause(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1466
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->showVideoEndScreen(Lcom/android/incallui/Call;)V

    .line 1470
    :cond_4
    const-string v4, "ims_support_multimedia_caller_id"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1471
    sget-object v4, Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;->PHOTORING_NONE:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    .line 1472
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v4, :cond_5

    .line 1473
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    iget v6, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    invoke-virtual {v4, v5, v6}, Lcom/android/incallui/InCallActivity;->updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V

    .line 1477
    :cond_5
    const-string v4, "rich_call_screen_cmcc"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1478
    const/4 v3, 0x0

    .line 1479
    .local v3, "primary":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v3

    .line 1480
    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1481
    const/4 v2, 0x0

    .line 1482
    .local v2, "number":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 1483
    new-instance v1, Lcom/android/incallui/richscreen/RichCallScreenUtils;

    invoke-direct {v1}, Lcom/android/incallui/richscreen/RichCallScreenUtils;-><init>()V

    .line 1484
    .local v1, "mRichCallScreenUtils":Lcom/android/incallui/richscreen/RichCallScreenUtils;
    const-string v4, "1140020000"

    invoke-virtual {v1, v2, v4}, Lcom/android/incallui/richscreen/RichCallScreenUtils;->startDownloadRichScrnObj(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    .end local v1    # "mRichCallScreenUtils":Lcom/android/incallui/richscreen/RichCallScreenUtils;
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "primary":Lcom/android/incallui/Call;
    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/CallList;)V

    .line 1491
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1492
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4, v7}, Lcom/android/incallui/InCallActivity;->dismissKeyguard(Z)V

    .line 1499
    :cond_7
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->removeCoreAppsContact(Ljava/lang/String;)V

    .line 1501
    const-string v4, "auto_call_test"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1502
    invoke-static {}, Lcom/android/incallui/util/VTAutoTestProxy;->getInstance()Lcom/android/incallui/util/VTAutoTestProxy;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/incallui/util/VTAutoTestProxy;->handleMessage(I)V

    .line 1505
    :cond_8
    const-string v4, "feature_ctc"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1506
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1507
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.EMERGENCY_CALL_END"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1508
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "send Broadcast: com.samsung.intent.action.EMERGENCY_CALL_END"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1509
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/incallui/InCallApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 1518
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_9
    invoke-static {v7}, Lcom/android/incallui/util/InCallUtils;->setMergeAfterAnswer(Z)V

    .line 1520
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

    .line 1521
    invoke-static {v7}, Lcom/android/incallui/util/SoundEffect;->turnOnExtraVol(Z)V

    .line 1524
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

    .line 1525
    const-string v4, "clearDisplayFlags for epdg"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1526
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    if-eqz v4, :cond_b

    .line 1527
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/EpdgManager;->clearDisplayFlags()V

    .line 1531
    :cond_b
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/incallui/util/AppLogging;->insertLogOnCallDisconnect(Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 1532
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->clearFullscreen()V

    .line 1533
    return-void
.end method

.method public onDismissDialog()V
    .locals 2

    .prologue
    .line 2354
    const-string v0, "Dialog dismissed"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2355
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    .line 2356
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    .line 2357
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    .line 2359
    :cond_0
    return-void
.end method

.method public onDowngradeToAudio(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1654
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

    .line 1655
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    .line 1656
    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/PrivatePolicy;->clearForModifyCall()V

    .line 1658
    :cond_0
    return-void
.end method

.method public onDowngradeToAudioRequest(Lcom/android/incallui/Call;I)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoState"    # I

    .prologue
    const v5, 0x7f0902d3

    .line 1589
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

    .line 1591
    if-nez p1, :cond_0

    .line 1633
    :goto_0
    return-void

    .line 1595
    :cond_0
    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1596
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    .line 1597
    .local v2, "secCall":Lcom/android/incallui/SecCall;
    if-nez p2, :cond_1

    if-eqz v2, :cond_1

    .line 1598
    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->isChangedToTwoWayVideo()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1599
    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    .line 1603
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/SecCall;->setChangedToTwoWayVideo(Z)V

    .line 1622
    .end local v2    # "secCall":Lcom/android/incallui/SecCall;
    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isDialpadVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1623
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->hideDialpadForModifyCall()V

    .line 1626
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    invoke-static {v3, p2}, Lcom/android/incallui/service/vt/VideoCallControl;->shouldAcceptRequest(II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1627
    invoke-static {p2}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    goto :goto_0

    .line 1601
    .restart local v2    # "secCall":Lcom/android/incallui/SecCall;
    :cond_3
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    goto :goto_1

    .line 1605
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

    .line 1606
    :cond_5
    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_2

    .line 1607
    :cond_6
    const-string v3, "tmo_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1608
    const/4 v1, 0x0

    .line 1609
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    .line 1610
    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 1611
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_7

    .line 1612
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    .line 1615
    :cond_7
    if-nez v1, :cond_8

    .line 1616
    const-string v1, "Caller"

    .line 1618
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

    .line 1620
    .end local v0    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v1    # "name":Ljava/lang/String;
    :cond_9
    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_2

    .line 1631
    :cond_a
    invoke-virtual {p1, p2}, Lcom/android/incallui/Call;->setRequestedVideoState(I)V

    goto/16 :goto_0
.end method

.method public onEmergencyModeChange(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    const/4 v3, 0x1

    .line 3720
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

    .line 3723
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

    .line 3724
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$EmergencyModeListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallPresenter$EmergencyModeListener;->onEmergencyModeChange(I)V

    goto :goto_0

    .line 3726
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$EmergencyModeListener;
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3727
    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallPresenter;->onCoverStateChanged(Z)V

    .line 3728
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    .line 3730
    :cond_1
    return-void
.end method

.method public onHmtStateChanged(Z)V
    .locals 6
    .param p1, "isDocked"    # Z

    .prologue
    const/4 v5, 0x1

    .line 3759
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

    .line 3761
    if-nez p1, :cond_0

    .line 3762
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

    .line 3763
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3765
    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getTargetClass()Ljava/lang/Class;

    move-result-object v1

    .line 3766
    .local v1, "cls":Ljava/lang/Class;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZLjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 3770
    .local v0, "activityIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3776
    .end local v0    # "activityIntent":Landroid/content/Intent;
    .end local v1    # "cls":Ljava/lang/Class;
    :cond_0
    :goto_0
    return-void

    .line 3771
    :catch_0
    move-exception v2

    .line 3772
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
    .line 1327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getConnectingOrConnectedCallCount()I

    move-result v12

    .line 1329
    .local v12, "liveCallCount":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    .line 1330
    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v12}, Lcom/android/incallui/bike/BikeModeController;->onIncomingCallConsumed(Lcom/android/incallui/Call;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1422
    :cond_0
    :goto_0
    return-void

    .line 1334
    :cond_1
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v13

    .line 1335
    .local v13, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 1336
    .local v14, "oldState":Lcom/android/incallui/InCallPresenter$InCallState;
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_CDMA:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_GSM:Z

    if-eqz v1, :cond_3

    .line 1337
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->dismissDataUsageLimitDialog()V

    .line 1343
    :cond_3
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "support_sync_call"

    .line 1344
    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1345
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1346
    const/4 v7, 0x0

    .line 1348
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.kddi.android.evc.SettingsProvider/system"

    .line 1349
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1348
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1351
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 1352
    const/4 v8, 0x0

    .line 1353
    .local v8, "isIncomingShowPU":Z
    const/4 v9, 0x0

    .line 1354
    .local v9, "isSettingUseSyncCall":Z
    :cond_4
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1355
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1356
    .local v10, "key":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1357
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

    .line 1358
    const-string v1, "setting_use_synccall"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_5

    .line 1359
    const/4 v9, 0x1

    goto :goto_1

    .line 1360
    :cond_5
    const-string v1, "setting_use_incoming_show_pu"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_4

    .line 1361
    const/4 v8, 0x1

    goto :goto_1

    .line 1364
    .end local v10    # "key":Ljava/lang/String;
    .end local v16    # "value":I
    :cond_6
    if-eqz v9, :cond_7

    if-eqz v8, :cond_7

    .line 1365
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->checkAndStartAM()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1372
    .end local v8    # "isIncomingShowPU":Z
    .end local v9    # "isSettingUseSyncCall":Z
    :cond_7
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1373
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1374
    const/4 v7, 0x0

    .line 1380
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_8
    :goto_2
    const-string v1, "feature_multisim_preferred_sim"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "feature_multisim_adaptive_callback"

    .line 1381
    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1382
    :cond_9
    invoke-static {}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->dismissDialog()V

    .line 1383
    invoke-static {}, Lcom/android/incallui/SelectSimActivity;->dismissDialogFromOutside()V

    .line 1387
    :cond_a
    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1388
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/service/EcidClient;->newIncoming(Lcom/android/incallui/Call;)V

    .line 1392
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

    .line 1393
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 1396
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1397
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1398
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    .line 1400
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    if-nez v1, :cond_d

    .line 1401
    new-instance v1, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-direct {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    .line 1402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->startService(Landroid/content/Context;)V

    .line 1403
    const-string v1, "startService about AnswerMemoRecorder"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1407
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

    .line 1408
    .local v11, "listener":Lcom/android/incallui/InCallPresenter$IncomingCallListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    invoke-interface {v11, v14, v2, v0}, Lcom/android/incallui/InCallPresenter$IncomingCallListener;->onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    goto :goto_3

    .line 1369
    .end local v11    # "listener":Lcom/android/incallui/InCallPresenter$IncomingCallListener;
    .restart local v7    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v15

    .line 1370
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

    .line 1372
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1373
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1374
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 1372
    .end local v15    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_e

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1373
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1374
    const/4 v7, 0x0

    :cond_e
    throw v1

    .line 1411
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_f
    const-string v1, "auto_call_test"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1412
    invoke-static {}, Lcom/android/incallui/util/VTAutoTestProxy;->getInstance()Lcom/android/incallui/util/VTAutoTestProxy;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VTAutoTestProxy;->handleMessage(I)V

    .line 1415
    :cond_10
    const-string v1, "UI"

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isEcholocateEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1416
    if-eqz p1, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->sendEcholocateUIState(I)V

    .line 1419
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    .line 1420
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    goto/16 :goto_0
.end method

.method public onMobileKeyboardChanged()V
    .locals 3

    .prologue
    .line 3747
    const-string v1, "onMobileKeyboardChanged()"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3748
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

    .line 3749
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;
    invoke-interface {v0}, Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;->onMobileKeyboardChanged()V

    goto :goto_0

    .line 3751
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;
    :cond_0
    return-void
.end method

.method public onOnehandAnyScreenOnChanged()V
    .locals 3

    .prologue
    .line 3740
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

    .line 3741
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

    .line 3742
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;
    invoke-interface {v0}, Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;->onOnehandAnyScreenOnChanged()V

    goto :goto_0

    .line 3744
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;
    :cond_0
    return-void
.end method

.method public onOnehandModeChanged()V
    .locals 3

    .prologue
    .line 3733
    const-string v1, "onOnehandModeChanged()"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3734
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

    .line 3735
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$OnehandModeListener;
    invoke-interface {v0}, Lcom/android/incallui/InCallPresenter$OnehandModeListener;->onOnehandModeChanged()V

    goto :goto_0

    .line 3737
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$OnehandModeListener;
    :cond_0
    return-void
.end method

.method public onPostDialCharPause(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "chars"    # Ljava/lang/String;

    .prologue
    .line 2212
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2213
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->showPostCharPauseDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    :cond_0
    return-void
.end method

.method public onPostDialCharPauseComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "chars"    # Ljava/lang/String;

    .prologue
    .line 2220
    return-void
.end method

.method public onPostDialCharWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "chars"    # Ljava/lang/String;

    .prologue
    .line 2206
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2207
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    :cond_0
    return-void
.end method

.method public onReceivedMessageFromTelecom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "telecomCallId"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 3905
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

    .line 3906
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3907
    invoke-static {p2}, Lcom/android/incallui/util/VideoCallUtils;->onReceivedMessageFromTelecom(Ljava/lang/String;)V

    .line 3918
    :cond_0
    :goto_0
    return-void

    .line 3909
    :cond_1
    const-string v1, "onIncomingCallAnswered"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3910
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    .line 3911
    .local v0, "answerUi":Lcom/android/incallui/AnswerUi;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/AnswerUi;->isAnswerAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3912
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/util/SystemServiceUtils;->boostCPU(Landroid/content/Context;)V

    .line 3913
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/AnswerUi;->animateForAnswerCall(I)V

    goto :goto_0
.end method

.method public onServiceBind()V
    .locals 1

    .prologue
    .line 3217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    .line 3218
    return-void
.end method

.method public onServiceUnbind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3221
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/InCallPresenter;->setBoundAndWaitingForOutgoingCall(ZLandroid/telecom/PhoneAccountHandle;)V

    .line 3222
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    .line 3223
    return-void
.end method

.method public onShrinkAnimationComplete()V
    .locals 1

    .prologue
    .line 1734
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mAwaitingCallListUpdate:Z

    if-eqz v0, :cond_0

    .line 1735
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/CallList;)V

    .line 1737
    :cond_0
    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0
    .param p1, "isStarted"    # Z

    .prologue
    .line 3755
    return-void
.end method

.method public onUiShowing(Z)V
    .locals 6
    .param p1, "showing"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2132
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v2, :cond_0

    .line 2133
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2, v4, v5}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    .line 2136
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v2, :cond_1

    .line 2137
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v2, p1}, Lcom/android/incallui/ProximitySensor;->onInCallShowing(Z)V

    .line 2140
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incalluibind/ObjectFactory;->getUiReadyBroadcastIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 2141
    .local v0, "broadcastIntent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 2142
    const-string v4, "com.android.incallui.intent.extra.FIRST_TIME_SHOWN"

    iget-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2144
    if-eqz p1, :cond_4

    .line 2145
    const-string v2, "Sending sticky broadcast: "

    invoke-static {p0, v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2146
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2153
    :cond_2
    :goto_1
    if-eqz p1, :cond_5

    .line 2154
    iput-boolean v3, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    .line 2159
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

    .line 2160
    .local v1, "listener":Lcom/android/incallui/InCallPresenter$InCallUiListener;
    invoke-interface {v1, p1}, Lcom/android/incallui/InCallPresenter$InCallUiListener;->onUiShowing(Z)V

    goto :goto_3

    .line 2142
    .end local v1    # "listener":Lcom/android/incallui/InCallPresenter$InCallUiListener;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 2148
    :cond_4
    const-string v2, "Removing sticky broadcast: "

    invoke-static {p0, v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2149
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 2156
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->updateIsChangingConfigurations()V

    goto :goto_2

    .line 2162
    :cond_6
    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1426
    return-void
.end method

.method public onUpgradeToVideoFail(ILcom/android/incallui/Call;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1646
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

    .line 1647
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    .line 1648
    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/PrivatePolicy;->clearForModifyCall()V

    .line 1650
    :cond_0
    return-void
.end method

.method public onUpgradeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoState"    # I

    .prologue
    .line 1537
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

    .line 1539
    if-nez p1, :cond_1

    .line 1561
    :cond_0
    :goto_0
    return-void

    .line 1542
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    .line 1543
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1544
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    .line 1546
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/incallui/service/vt/VideoCallControl;->shouldRejectRequest(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1547
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    goto :goto_0

    .line 1550
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1551
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    .line 1553
    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/incallui/Call;->setRequestedVideoState(I)V

    .line 1554
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1555
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->hideDialpadForModifyCall()V

    .line 1558
    :cond_5
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    .line 1559
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
    .line 1637
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

    .line 1638
    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1639
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    .line 1640
    .local v0, "recorderManager":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->stopRecord()V

    .line 1642
    .end local v0    # "recorderManager":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    :cond_0
    return-void
.end method

.method protected postAccessibilityEventForUpdateScreen()V
    .locals 2

    .prologue
    .line 4240
    const-string v1, "postAccessibilityEventForUpdateScreen"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4241
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4247
    :cond_0
    :goto_0
    return-void

    .line 4244
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 4245
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isForegroundActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4246
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->postAccessibilityEventForUpdateScreen()V

    goto :goto_0
.end method

.method public refreshListeners()V
    .locals 5

    .prologue
    .line 1076
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

    .line 1077
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

    .line 1078
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_0

    .line 1080
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

    .line 1081
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

    .line 1082
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_1

    .line 1084
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$InCallStateListener;
    :cond_1
    return-void
.end method

.method public removeCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$CanAddCallListener;

    .prologue
    .line 1822
    if-eqz p1, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1825
    :cond_0
    return-void
.end method

.method public removeConfigurationListener(Lcom/android/incallui/InCallPresenter$ConfigurationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$ConfigurationListener;

    .prologue
    .line 1902
    if-eqz p1, :cond_0

    .line 1903
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mConfigurationListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1905
    :cond_0
    return-void
.end method

.method public removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallDetailsListener;

    .prologue
    .line 1811
    if-eqz p1, :cond_0

    .line 1812
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1814
    :cond_0
    return-void
.end method

.method public removeEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$EmergencyModeListener;

    .prologue
    .line 1858
    if-eqz p1, :cond_0

    .line 1859
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyModeListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1861
    :cond_0
    return-void
.end method

.method public removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallEventListener;

    .prologue
    .line 1847
    if-eqz p1, :cond_0

    .line 1848
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1850
    :cond_0
    return-void
.end method

.method public removeInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallUiListener;

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    .prologue
    .line 1760
    if-eqz p1, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1763
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .prologue
    .line 1798
    if-eqz p1, :cond_0

    .line 1799
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1801
    :cond_0
    return-void
.end method

.method public removeListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .prologue
    .line 1922
    if-eqz p1, :cond_0

    .line 1923
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1925
    :cond_0
    return-void
.end method

.method public removeMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;

    .prologue
    .line 1891
    if-eqz p1, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mMobileKeyboardListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1894
    :cond_0
    return-void
.end method

.method public removeMsgCheckUILocked()V
    .locals 3

    .prologue
    const/16 v2, 0x3ed

    .line 3891
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3892
    const-string v0, "removeMsgCheckUILocked"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3893
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3895
    :cond_0
    return-void
.end method

.method public removeOnehandAnyScreenOnListener(Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;

    .prologue
    .line 1880
    if-eqz p1, :cond_0

    .line 1881
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandAnyScreenOnListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1883
    :cond_0
    return-void
.end method

.method public removeOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$OnehandModeListener;

    .prologue
    .line 1869
    if-eqz p1, :cond_0

    .line 1870
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandModeListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1872
    :cond_0
    return-void
.end method

.method public removeOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallOrientationListener;

    .prologue
    .line 1833
    if-eqz p1, :cond_0

    .line 1834
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1836
    :cond_0
    return-void
.end method

.method public removeRejectCallNotification()V
    .locals 3

    .prologue
    .line 4254
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4255
    .local v0, "context":Landroid/content/Context;
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 4256
    .local v1, "mNotificationManager":Landroid/app/NotificationManager;
    if-eqz v1, :cond_0

    .line 4257
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 4258
    :cond_0
    return-void
.end method

.method resetAutoAnsTimer()V
    .locals 1

    .prologue
    .line 4155
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    if-eqz v0, :cond_0

    .line 4156
    const-string v0, "resetAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4157
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;->cancel()V

    .line 4158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    .line 4160
    :cond_0
    return-void
.end method

.method public sendLockScreenEvent()V
    .locals 1

    .prologue
    .line 1942
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->sendLockScreenEvent(Z)V

    .line 1943
    return-void
.end method

.method public sendLockScreenEvent(Z)V
    .locals 2
    .param p1, "now"    # Z

    .prologue
    .line 1946
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

    .line 1947
    const-string v0, "lock_screen_during_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1948
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->sendLockScreenEvent(Z)V

    .line 1952
    :cond_0
    return-void
.end method

.method public sendMsgCallListChange()V
    .locals 1

    .prologue
    .line 3880
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->sendMsgCallListChange(I)V

    .line 3881
    return-void
.end method

.method public sendMsgCallListChange(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    const/16 v1, 0x3ea

    .line 3884
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3885
    const-string v0, "sendMsgCallListChange"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3886
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3888
    :cond_0
    return-void
.end method

.method public sendMsgCheckUILocked()V
    .locals 5

    .prologue
    const/16 v4, 0x3ed

    .line 3898
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3899
    const-string v0, "sendMsgCheckUILocked"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3900
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3902
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

    .line 893
    if-nez p1, :cond_0

    .line 894
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "registerActivity cannot be called with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eq v0, p1, :cond_1

    .line 897
    const-string v0, "Setting a second activity before destroying the first."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->forceFinish()V

    .line 901
    :cond_1
    const-string v0, "feature_dcm"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 902
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v2, v9}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v6

    .line 903
    .local v6, "call":Lcom/android/incallui/Call;
    if-eqz v6, :cond_3

    .line 904
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v8

    .line 905
    .local v8, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v8, :cond_3

    .line 906
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter;->DCM_APP_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 907
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 908
    const-string v0, "NTT DOCOMO : cursor != null && cursor count != 0 "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 910
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    if-ne v0, v10, :cond_2

    .line 911
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 912
    iput-boolean v10, v8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    .line 915
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 922
    :goto_0
    iget-boolean v0, v8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    if-eqz v0, :cond_3

    .line 923
    const-string v0, "NTT DOCOMO : registerContentObserver "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 924
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter;->DCM_APP_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mHideStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v10, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 930
    .end local v6    # "call":Lcom/android/incallui/Call;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->updateActivity(Lcom/android/incallui/InCallActivity;)V

    .line 931
    return-void

    .line 916
    .restart local v6    # "call":Lcom/android/incallui/Call;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 917
    const-string v0, "NTT DOCOMO : cursor count=0 "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 918
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 920
    :cond_5
    const-string v0, "NTT DOCOMO : cursor=null "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAnsMemoRecordMgr(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)V
    .locals 0
    .param p1, "mgr"    # Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    .prologue
    .line 4076
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    .line 4077
    return-void
.end method

.method public setAudioMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 3864
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

    .line 3865
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    .line 3866
    return-void
.end method

.method public setBlockToUpdateNotification(Z)V
    .locals 1
    .param p1, "block"    # Z

    .prologue
    .line 3341
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    .line 3342
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0, p1}, Lcom/android/incallui/StatusBarNotifier;->setBlockToUpdate(Z)V

    .line 3344
    :cond_0
    return-void
.end method

.method public setBoundAndWaitingForOutgoingCall(ZLandroid/telecom/PhoneAccountHandle;)V
    .locals 2
    .param p1, "isBound"    # Z
    .param p2, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 1715
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

    .line 1716
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mBoundAndWaitingForOutgoingCall:Z

    .line 1717
    iput-object p2, p0, Lcom/android/incallui/InCallPresenter;->mPendingPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 1718
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    .line 1719
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 1721
    :cond_0
    return-void
.end method

.method public setCallPopupService(Lcom/android/incallui/service/SecCallPopupService;)V
    .locals 0
    .param p1, "callPopupService"    # Lcom/android/incallui/service/SecCallPopupService;

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    .line 1065
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 4310
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/InCallPresenter;->setFullScreen(ZZ)V

    .line 4311
    return-void
.end method

.method public setFullScreen(ZZ)V
    .locals 2
    .param p1, "isFullScreen"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 4322
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4323
    const/4 p1, 0x0

    .line 4324
    const-string v0, "setFullScreen FullScreenMode is unavailable"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fullscreen(Ljava/lang/String;)V

    .line 4326
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    if-eq v0, p1, :cond_1

    .line 4327
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

    .line 4328
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    .line 4329
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->notifyFullscreenModeChange(Z)V

    .line 4331
    :cond_1
    return-void
.end method

.method public setInCallAllowsOrientationChange(Z)V
    .locals 2
    .param p1, "allowOrientationChange"    # Z

    .prologue
    .line 3416
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    .line 3417
    const-string v0, "mInCallActivity is null. Can\'t set requested orientation."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3431
    :goto_0
    return-void

    .line 3421
    :cond_0
    if-nez p1, :cond_1

    .line 3422
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->NO_SENSOR_SCREEN_ORIENTATION:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->setRequestedOrientation(I)V

    .line 3430
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->enableInCallOrientationEventListener(Z)V

    goto :goto_0

    .line 3427
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
    .line 4431
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 4432
    return-void
.end method

.method public setPhotoringBlocked(I)V
    .locals 1
    .param p1, "block"    # I

    .prologue
    .line 2245
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2246
    :cond_0
    iput p1, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    .line 2248
    :cond_1
    return-void
.end method

.method public setRecordMgr(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V
    .locals 1
    .param p1, "mgr"    # Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    .prologue
    .line 3856
    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    .line 3857
    return-void
.end method

.method public setSubNumberDialog(Lcom/android/incallui/util/SecSubNumberDialogActivity;)V
    .locals 0
    .param p1, "dialog"    # Lcom/android/incallui/util/SecSubNumberDialogActivity;

    .prologue
    .line 4427
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mSubNumberDialog:Lcom/android/incallui/util/SecSubNumberDialogActivity;

    .line 4428
    return-void
.end method

.method public setThemeColors()V
    .locals 5

    .prologue
    .line 3509
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallPresenter;->getColorsFromCall(Lcom/android/incallui/Call;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    .line 3511
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v3, :cond_0

    .line 3529
    :goto_0
    return-void

    .line 3515
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3517
    .local v1, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0e0010

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3520
    const v3, 0x7f0f01e6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 3525
    .local v0, "color":I
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 3526
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    const v3, 0x7f090044

    .line 3527
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 3528
    .local v2, "td":Landroid/app/ActivityManager$TaskDescription;
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3, v2}, Lcom/android/incallui/InCallActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    goto :goto_0

    .line 3522
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

    .line 686
    const-string v4, "perf - setUp()"

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 687
    iget-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    if-eqz v4, :cond_3

    .line 688
    const-string v4, "New service connection replacing existing one."

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 690
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    if-ne p1, v4, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 691
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-ne p2, v4, :cond_1

    move v4, v5

    :goto_1
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 692
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    if-ne p3, v4, :cond_2

    :goto_2
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 827
    :goto_3
    return-void

    :cond_0
    move v4, v6

    .line 690
    goto :goto_0

    :cond_1
    move v4, v6

    .line 691
    goto :goto_1

    :cond_2
    move v5, v6

    .line 692
    goto :goto_2

    .line 696
    :cond_3
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    .line 699
    iput-object p5, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    .line 700
    const-string v4, "yellowpage_callerid_info"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 701
    invoke-static {p1}, Lcom/android/incallui/secutils/YellowPageCallerid;->initContactService(Landroid/content/Context;)V

    .line 704
    :cond_4
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-nez v4, :cond_5

    .line 705
    iput-object p4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    .line 706
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 709
    :cond_5
    iput-object p3, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    .line 711
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-nez v4, :cond_6

    .line 712
    iput-object p6, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    .line 713
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 716
    :cond_6
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    if-nez v4, :cond_7

    .line 717
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    .line 718
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v4, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->addListenerToFirst(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    .line 721
    :cond_7
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 722
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallPresenter;->addInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)V

    .line 724
    iput-object p2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    .line 727
    iput-boolean v5, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    .line 731
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v4, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    .line 732
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->setUp(Lcom/android/incallui/InCallPresenter;)V

    .line 733
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/incallui/VideoPauseController;->setUp(Lcom/android/incallui/InCallPresenter;)V

    .line 734
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->addSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V

    .line 737
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 738
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x20

    invoke-virtual {v4, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 741
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_e

    .line 742
    new-instance v4, Lcom/android/incallui/InCallPresenter$InCallReceiver;

    invoke-direct {v4, p0, v8}, Lcom/android/incallui/InCallPresenter$InCallReceiver;-><init>(Lcom/android/incallui/InCallPresenter;Lcom/android/incallui/InCallPresenter$1;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    .line 743
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 744
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "support_tphone"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 745
    const-string v4, "com.skt.prod.phone.action.FINISH_INCALLUI"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 747
    :cond_8
    const-string v4, "support_safetycare"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 748
    const-string v4, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 750
    :cond_9
    const-string v4, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 751
    const-string v4, "ims_ps_barring"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 752
    const-string v4, "com.android.intent.action.PSBARRED_FOR_VOLTE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 754
    :cond_a
    sget-boolean v4, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_CDMA:Z

    if-nez v4, :cond_b

    sget-boolean v4, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_GSM:Z

    if-eqz v4, :cond_c

    .line 755
    :cond_b
    const-string v4, "com.samsung.intent.action.DATAUSAGE_REACH_TO_WARNING"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 756
    const-string v4, "com.android.intent.action.VIDEO_DATAUSAGE_REACH_TO_LIMIT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 759
    :cond_c
    const-string v4, "support_bluetooth_multi_profile"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 760
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 763
    :cond_d
    const-string v4, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 765
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v1}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 768
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_e
    sget-boolean v4, Lcom/android/incallui/service/vt/VideoCallConfig;->EPDG_ERROR_EVENT:Z

    if-eqz v4, :cond_f

    .line 769
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    if-nez v4, :cond_f

    .line 770
    new-instance v4, Lcom/android/incallui/service/vt/EpdgManager;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/incallui/service/vt/EpdgManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mEpdgManager:Lcom/android/incallui/service/vt/EpdgManager;

    .line 774
    :cond_f
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_10

    .line 775
    new-instance v4, Lcom/android/incallui/util/ContactAgentUtils$ContactAgentReceiver;

    invoke-direct {v4}, Lcom/android/incallui/util/ContactAgentUtils$ContactAgentReceiver;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    .line 776
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 777
    .local v0, "contactAgentFilter":Landroid/content/IntentFilter;
    sget-object v4, Lcom/android/incallui/util/ContactAgentUtils;->ACTION_CONTACT_ORIGINAL_IMAGE_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 778
    const-string v4, "add receiver for coreapps"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 779
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v0}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 782
    .end local v0    # "contactAgentFilter":Landroid/content/IntentFilter;
    :cond_10
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallEdgeManager:Lcom/android/incallui/edge/CallEdgeManager;

    if-nez v4, :cond_11

    .line 783
    new-instance v4, Lcom/android/incallui/edge/CallEdgeManager;

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/incallui/edge/CallEdgeManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallEdgeManager:Lcom/android/incallui/edge/CallEdgeManager;

    .line 787
    :cond_11
    const-string v4, "smart_auto_answering"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 788
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_12

    .line 789
    new-instance v4, Lcom/android/incallui/InCallPresenter$SmartAnswerBroadcastReceiver;

    invoke-direct {v4, p0, v8}, Lcom/android/incallui/InCallPresenter$SmartAnswerBroadcastReceiver;-><init>(Lcom/android/incallui/InCallPresenter;Lcom/android/incallui/InCallPresenter$1;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 790
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 791
    .local v3, "smartAnswerFilter":Landroid/content/IntentFilter;
    const-string v4, "com.shhphone.autoanswer.AUTOANSWER_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 792
    const-string v4, "add receiver for smart answer"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 793
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v3}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 798
    .end local v3    # "smartAnswerFilter":Landroid/content/IntentFilter;
    :cond_12
    const-string v4, "add receiver for ACTION_ML_STATE"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 799
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 800
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v4, "com.samsung.android.mirrorlink.ML_STATE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 801
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mMirrorlinkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v1}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 805
    const-string v4, "add receiver for ACTION_CARMODE_STATE"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 806
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 807
    .local v2, "mCarModefilter":Landroid/content/IntentFilter;
    const-string v4, "com.sec.android.automotive.drivelink.carmodechanged"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 808
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mCarmodeStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v2}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 810
    new-instance v4, Lcom/android/incallui/bike/BikeModeController;

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/incallui/bike/BikeModeController;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    .line 811
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    invoke-virtual {v4}, Lcom/android/incallui/bike/BikeModeController;->setUp()V

    .line 813
    const-string v4, "support_bluetooth_multi_profile"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 814
    new-instance v4, Lcom/android/incallui/BluetoothProfileManager;

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/incallui/BluetoothProfileManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    .line 815
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;

    invoke-virtual {v4}, Lcom/android/incallui/BluetoothProfileManager;->initBluetoothProfileProxy()V

    .line 818
    :cond_13
    const-string v4, "support_knox_desktop"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 819
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->getInstance()Lcom/android/incallui/util/DesktopModeManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    .line 820
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/android/incallui/util/DesktopModeManager;->init(Landroid/content/Context;)V

    .line 824
    :cond_14
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/SALogging;->registerTelecommSALoggingReceiver(Landroid/content/Context;)Z

    .line 826
    const-string v4, "perf - Finished InCallPresenter.setUp"

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_3
.end method

.method public setVideoPopup(Lcom/android/incallui/service/SecVideoPopupService;)V
    .locals 0
    .param p1, "videoPopupService"    # Lcom/android/incallui/service/SecVideoPopupService;

    .prologue
    .line 882
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/service/SecVideoPopupService;

    .line 883
    return-void
.end method

.method public showConferenceCallManager(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 3474
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    .line 3479
    :goto_0
    return-void

    .line 3478
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

    .line 3256
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3276
    :cond_0
    :goto_0
    return v1

    .line 3258
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3259
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3260
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3261
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

    .line 3169
    const-string v4, "showInCall"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3171
    const-string v4, "support_tphone"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3172
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3173
    const-string v4, "do not showInCall incallUi when tphone mode"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3214
    :cond_0
    :goto_0
    return-void

    .line 3178
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3179
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/incallui/InCallActivity;->showConferenceCallManager(Z)V

    .line 3182
    :cond_2
    const-string v4, "feature_multisim_preferred_sim"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "feature_multisim_adaptive_callback"

    .line 3183
    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3184
    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    .line 3185
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

    .line 3186
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_SIM_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v4, :cond_4

    .line 3187
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->showSelectPhoneSimAccountDialog()V

    goto :goto_0

    .line 3192
    .end local v2    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getTargetClass()Ljava/lang/Class;

    move-result-object v3

    .line 3193
    .local v3, "targetClass":Ljava/lang/Class;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v3}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZLjava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 3197
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3198
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 3199
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v4, :cond_5

    if-eqz p2, :cond_5

    .line 3200
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->lock()V

    .line 3201
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3202
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3206
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3207
    const-string v4, "perf - startActivity with Bundle"

    invoke-static {p0, v4, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3208
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getInCallActivityInfo()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 3210
    :cond_6
    const-string v4, "perf - startActivity "

    invoke-static {p0, v4, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3211
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public showVideoPopup()V
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/service/SecVideoPopupService;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/service/SecVideoPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecVideoPopupService;->showPopup()V

    .line 879
    :cond_0
    return-void
.end method

.method public smartAnsweringMode(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 4470
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 4471
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 4473
    const-string v1, "smartAnsweringMode() smart answer Broadcast, hasIncomingCall"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4474
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4475
    invoke-static {v3}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    .line 4477
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/incallui/InCallPresenter;->answerIncomingCall(Landroid/content/Context;I)V

    .line 4478
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4479
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnsweringMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4480
    invoke-static {v3}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnsweringMode(Z)V

    .line 4482
    :cond_0
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->playGuidance()V

    .line 4486
    :cond_1
    return-void
.end method

.method public startContactInfoSearch(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 4489
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 4490
    .local v0, "cache":Lcom/android/incallui/ContactInfoCache;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 4491
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryCompleted:Z

    if-eqz v2, :cond_0

    .line 4492
    const-string v2, "skip startContactInfoSearch"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4515
    :goto_0
    return-void

    .line 4495
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
    .line 2691
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

    .line 2694
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

    .line 2695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/wrapper/KnoxCustomManagerWrapper;->getCallScreenDisabledItems(Landroid/content/Context;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/InCallPresenter;->mKnoxCustomDisabledItems:I

    .line 2696
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

    .line 2700
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v17

    if-nez v17, :cond_1

    .line 2701
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallApp;->unlock()V

    .line 2704
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v6

    .line 2705
    .local v6, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isKidsModeRunning()Z

    move-result v17

    if-eqz v17, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v17

    if-nez v17, :cond_3

    .line 2706
    const-string v17, "kids mode is running, return"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2707
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

    .line 2708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallActivity;->finish()V

    .line 2910
    .end local p1    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_2
    :goto_0
    return-object p1

    .line 2712
    .restart local p1    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCarmodeHome()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 2713
    const-string v17, "car mode is running, return"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2717
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mBikeModeController:Lcom/android/incallui/bike/BikeModeController;

    move-object/from16 v17, v0

    .line 2718
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/bike/BikeModeController;->startOrFinishUiConsumed(Lcom/android/incallui/InCallPresenter$InCallState;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 2740
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

    .line 2741
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getLiveCallCounts()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    const/4 v5, 0x1

    .line 2742
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

    .line 2743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_2

    if-nez v5, :cond_2

    .line 2771
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_f

    const/16 v16, 0x1

    .line 2774
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

    .line 2788
    .local v14, "showAccountPicker":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v17

    if-nez v17, :cond_13

    const/4 v11, 0x1

    .line 2789
    .local v11, "mainUiNotVisible":Z
    :goto_4
    if-nez v11, :cond_8

    .line 2790
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->getCallCardFragmentVisible()Z

    move-result v17

    if-nez v17, :cond_14

    const/16 v17, 0x1

    :goto_5
    or-int v11, v11, v17

    .line 2792
    :cond_8
    if-nez v11, :cond_9

    .line 2793
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v17

    if-eqz v17, :cond_15

    .line 2794
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v17

    if-eqz v17, :cond_15

    const/16 v17, 0x1

    :goto_6
    or-int v11, v11, v17

    .line 2796
    :cond_9
    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v17

    if-nez v17, :cond_a

    .line 2797
    const/4 v11, 0x0

    .line 2803
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

    .line 2804
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

    .line 2805
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

    .line 2807
    const-string v17, "rich_call_screen_cmcc"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v17

    if-nez v17, :cond_d

    .line 2808
    const/4 v13, 0x0

    .line 2809
    .local v13, "primary":Lcom/android/incallui/Call;
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_18

    .line 2810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v13

    .line 2819
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

    .line 2820
    if-eqz v13, :cond_d

    .line 2821
    new-instance v10, Lcom/android/incallui/richscreen/RichCallScreenUtils;

    invoke-direct {v10}, Lcom/android/incallui/richscreen/RichCallScreenUtils;-><init>()V

    .line 2822
    .local v10, "mRichCallScreenUtils":Lcom/android/incallui/richscreen/RichCallScreenUtils;
    invoke-virtual {v13}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v17

    const-string v18, "1110000000"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/android/incallui/richscreen/RichCallScreenUtils;->getRichCallScreenPersonObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 2840
    .end local v10    # "mRichCallScreenUtils":Lcom/android/incallui/richscreen/RichCallScreenUtils;
    .end local v13    # "primary":Lcom/android/incallui/Call;
    :cond_d
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1b

    if-eqz v11, :cond_1b

    .line 2841
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

    .line 2847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v17

    if-nez v17, :cond_1c

    const/4 v4, 0x1

    .line 2848
    .local v4, "activityIsFinishing":Z
    :goto_b
    if-eqz v4, :cond_1d

    .line 2849
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

    .line 2850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 p1, v0

    goto/16 :goto_0

    .line 2741
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

    .line 2771
    .restart local v5    # "alreadyOutgoing":Z
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 2774
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

    .line 2788
    .restart local v14    # "showAccountPicker":Z
    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 2790
    .restart local v11    # "mainUiNotVisible":Z
    :cond_14
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 2794
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 2803
    :cond_16
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 2804
    .restart local v9    # "isFirstPendingOutgoing":Z
    :cond_17
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 2811
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

    .line 2812
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v13

    .line 2813
    if-nez v13, :cond_c

    .line 2814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v13

    goto/16 :goto_9

    .line 2816
    :cond_1a
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 2817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v13

    goto/16 :goto_9

    .line 2841
    .end local v13    # "primary":Lcom/android/incallui/Call;
    :cond_1b
    const/16 v17, 0x0

    goto/16 :goto_a

    .line 2847
    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 2853
    .restart local v4    # "activityIsFinishing":Z
    :cond_1d
    if-nez v15, :cond_1e

    if-eqz v14, :cond_22

    .line 2854
    :cond_1e
    const-string v17, "Start in call UI"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2855
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->clearDisconnectedTimeoutEvent()Z

    .line 2856
    const/16 v18, 0x0

    if-nez v14, :cond_20

    const/16 v17, 0x1

    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    .line 2857
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

    .line 2858
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v17

    if-nez v17, :cond_1f

    .line 2859
    const-string v17, "Minimize other popup window"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2860
    new-instance v12, Landroid/content/Intent;

    const-string v17, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2861
    .local v12, "minimizeIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2863
    .end local v12    # "minimizeIntent":Landroid/content/Intent;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "com.android.incallui"

    .line 2865
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v17

    if-eqz v17, :cond_21

    const-string v17, "OVDT"

    .line 2866
    :goto_d
    invoke-static {}, Lcom/android/incallui/util/AppLogging;->getCallTypeString()Ljava/lang/String;

    move-result-object v20

    .line 2863
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2856
    :cond_20
    const/16 v17, 0x0

    goto :goto_c

    .line 2865
    :cond_21
    const-string v17, "OVCT"

    goto :goto_d

    .line 2867
    :cond_22
    if-eqz v16, :cond_27

    .line 2868
    const-string v17, "Start Full Screen in call UI"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2872
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v17

    if-eqz v17, :cond_23

    .line 2873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v17, v0

    if-eqz v17, :cond_23

    .line 2874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 2877
    :cond_23
    const-string v17, "multi_number_cmcc"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mSubNumberDialog:Lcom/android/incallui/util/SecSubNumberDialogActivity;

    move-object/from16 v17, v0

    if-eqz v17, :cond_24

    .line 2878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mSubNumberDialog:Lcom/android/incallui/util/SecSubNumberDialogActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/util/SecSubNumberDialogActivity;->finish()V

    .line 2881
    :cond_24
    const-string v17, "support_tphone"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_25

    .line 2882
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v17

    if-eqz v17, :cond_25

    .line 2883
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v7

    .line 2884
    .local v7, "incomingCall":Lcom/android/incallui/Call;
    invoke-static {v7}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v17

    if-eqz v17, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v17

    if-eqz v17, :cond_25

    .line 2885
    const-string v17, "finish InCallActivity when incoming call in the tphone mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2886
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    goto/16 :goto_0

    .line 2891
    .end local v7    # "incomingCall":Lcom/android/incallui/Call;
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

    .line 2892
    new-instance v8, Landroid/content/Intent;

    const-string v17, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2893
    .local v8, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2896
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_26
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/InCallPresenter;->startUi(Lcom/android/incallui/InCallPresenter$InCallState;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 2900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 p1, v0

    goto/16 :goto_0

    .line 2902
    :cond_27
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 2904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    if-eqz v17, :cond_28

    .line 2905
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

    .line 2907
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    .line 2908
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    goto/16 :goto_0
.end method

.method public stopRecord()V
    .locals 4

    .prologue
    .line 3846
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    if-eqz v0, :cond_0

    .line 3847
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3848
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3849
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->stopRecord()V

    .line 3853
    :cond_0
    return-void
.end method

.method public tearDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 838
    const-string v0, "tearDown"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->clearOnDisconnect()V

    .line 840
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    .line 841
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    .line 843
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 844
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoPauseController;->tearDown()V

    .line 845
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->tearDown()V

    .line 846
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->removeSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V

    .line 847
    return-void
.end method

.method public toggleSpeakerphone()V
    .locals 3

    .prologue
    .line 3870
    const/16 v0, 0x8

    .line 3872
    .local v0, "newMode":I
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 3873
    const/4 v0, 0x5

    .line 3876
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->setAudioMode(I)V

    .line 3877
    return-void
.end method

.method public unsetActivity(Lcom/android/incallui/InCallActivity;)V
    .locals 2
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 938
    if-nez p1, :cond_0

    .line 939
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unregisterActivity cannot be called with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_1

    .line 942
    const-string v0, "No InCallActivity currently set, no need to unset."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 951
    :goto_0
    return-void

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eq v0, p1, :cond_2

    .line 946
    const-string v0, "Second instance of InCallActivity is trying to unregister when another instance is active. Ignoring."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 950
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->updateActivity(Lcom/android/incallui/InCallActivity;)V

    goto :goto_0
.end method

.method public updateForegroundCallDetails()V
    .locals 4

    .prologue
    .line 2471
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2472
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->canUpdateDetailsChanged(Landroid/telecom/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2473
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mUpdateUtil:Lcom/android/incallui/util/CallUpdateUtil;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/CallUpdateUtil;->update(Ljava/lang/Object;)V

    .line 2475
    :cond_0
    return-void
.end method

.method updateIsChangingConfigurations()V
    .locals 2

    .prologue
    .line 2119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 2120
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 2121
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isChangingConfigurations()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 2123
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

    .line 2124
    return-void
.end method

.method public updateNotification()V
    .locals 3

    .prologue
    .line 3329
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    .line 3330
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    .line 3332
    :cond_0
    return-void
.end method

.method public updateNotification(Z)V
    .locals 3
    .param p1, "emergencymode"    # Z

    .prologue
    .line 3335
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    .line 3336
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;Z)Z

    .line 3338
    :cond_0
    return-void
.end method

.method public updatePhotoringState()V
    .locals 3

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 2236
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    iget v2, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallActivity;->updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V

    .line 2238
    :cond_0
    return-void
.end method

.method public updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;ILjava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;
    .param p2, "block"    # I
    .param p3, "path"    # Ljava/lang/Object;

    .prologue
    .line 2224
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

    .line 2225
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;

    .line 2226
    iput p2, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    .line 2227
    check-cast p3, Ljava/lang/String;

    .end local p3    # "path":Ljava/lang/Object;
    iput-object p3, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringContentPath:Ljava/lang/String;

    .line 2228
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

    .line 2229
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 2230
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V

    .line 2232
    :cond_0
    return-void
.end method

.method public updateRejectCallNotification(Z)V
    .locals 1
    .param p1, "hasMsg"    # Z

    .prologue
    .line 4250
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0, p1}, Lcom/android/incallui/StatusBarNotifier;->registerRejectCallNotification(Z)V

    .line 4251
    :cond_0
    return-void
.end method

.method public updateRightNow(Ljava/lang/Object;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 623
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v3, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, p1

    .line 624
    check-cast v2, Landroid/telecom/Call;

    .line 625
    .local v2, "telecomCall":Landroid/telecom/Call;
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v3, v2}, Lcom/android/incallui/CallList;->getCallByTelecomCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 626
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_2

    .line 627
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

    .line 630
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

    .line 631
    .local v1, "listener":Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
    invoke-virtual {v2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Lcom/android/incallui/InCallPresenter$InCallDetailsListener;->onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V

    goto :goto_1
.end method
