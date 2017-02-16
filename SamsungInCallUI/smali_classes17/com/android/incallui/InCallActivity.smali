.class public Lcom/android/incallui/InCallActivity;
.super Lcom/android/contacts/common/activity/TransactionSafeActivity;
.source "InCallActivity.java"

# interfaces
.implements Lcom/android/incallui/FragmentDisplayManager;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;
.implements Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallActivity$AutoAnsTimer;,
        Lcom/android/incallui/InCallActivity$InCallActivityMenu;
    }
.end annotation


# static fields
.field private static final ACTION_STATUSBAR_STARTED:Ljava/lang/String; = "com.samsung.systemui.statusbar.STARTED"

.field private static final ARG_COLUMNS:Ljava/lang/String; = "ARG_COLUMNS"

.field private static final ARG_MSISDN:Ljava/lang/String; = "ARG_MSISDN"

.field private static final BACKGROUND_SCALE_CONFERENCE:F = 0.75f

.field private static final BACKGROUND_SCALE_DURING_CALL:F = 0.45f

.field private static final CALLCONTENT_LOADER:I = 0x1

.field public static final CAPABILITY_CRANE:Ljava/lang/String; = "gsma.callcomposer"

.field private static final DIALPAD_REQUEST_HIDE:I = 0x3

.field private static final DIALPAD_REQUEST_NONE:I = 0x1

.field private static final DIALPAD_REQUEST_SHOW:I = 0x2

.field public static final DIALPAD_TEXT_EXTRA:Ljava/lang/String; = "InCallActivity.dialpad_text"

.field private static final EXTRA_INTENT:Ljava/lang/String; = "EXTRA_INTENT"

.field public static FEATURE_ENRICHED_CALL_COMPOSER:J = 0x0L

.field public static FEATURE_ENRICHED_POST_CALL:J = 0x0L

.field public static FEATURE_ENRICHED_SHARED_MAP:J = 0x0L

.field public static FEATURE_ENRICHED_SHARED_SKETCH:J = 0x0L

.field public static final HAS_IVR:Ljava/lang/String; = "InCallActivity.has_ivr"

.field public static final HAS_OUTGOING_CALL:Ljava/lang/String; = "InCallActivity.has_outgoing_call"

.field private static final INCALL_ACTIVITY:Ljava/lang/String; = "com.android.incallui.InCallActivity"

.field private static final INITIALIZE_INCALL:I = 0xa6

.field private static final INITIALIZE_INCALL_DELAY:I = 0x3e8

.field public static final NEW_OUTGOING_CALL_EXTRA:Ljava/lang/String; = "InCallActivity.new_outgoing_call"

.field private static final PAUSE:C = ','

.field private static final PAUSE_DIALOG_COMPLETE:I = 0xa2

.field private static final PAUSE_DIALOG_COMPLETE_TIMEOUT:I = 0x7d0

.field private static final PHONE_APP:I = 0x0

.field private static final PLAY_AUTO_ANSWER_MESSAGE:I = 0xa5

.field private static final PLAY_AUTO_ANSWER_MESSAGE_DELAY:I = 0x3e8

.field private static final RCS_ACTIVITY:Ljava/lang/String; = "com.samsung.rcs.share.ContentShareActivity"

.field private static final RCS_APP:I = 0x1

.field public static final RECORD_INFO_STATE_CHANGED:I = 0xc9

.field public static final SAMSUNG_CALL_SCREEN_DIM_DELAY:I = 0x4e20

.field public static final SAMSUNG_CALL_SCREEN_TIMEOUT:I = 0x7530

.field private static final SEND_ACCESSIBILITYEVENT_DELAY:I = 0x1f4

.field public static final SHOW_DIALPAD_EXTRA:Ljava/lang/String; = "InCallActivity.show_dialpad"

.field private static final SHOW_GREEN_BAR:I = 0xa0

.field private static final SHOW_GREEN_BAR_DELAY:I = 0x3e8

.field private static final SHOW_LOCKSCREEN_DURING_CALL:I = 0xa7

.field private static final SHOW_LOCKSCREEN_DURING_CALL_TIMEOUT:I = 0xbb8

.field private static TABLET_SMALL_WIDTH_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "InCallActivity"

.field private static final TAG_ANSWER_FRAGMENT:Ljava/lang/String; = "tag_answer_fragment"

.field private static final TAG_CALLCARD_FRAGMENT:Ljava/lang/String; = "tag_callcard_fragment"

.field private static final TAG_CONFERENCE_FRAGMENT:Ljava/lang/String; = "tag_conference_manager_fragment"

.field private static final TAG_DIALPAD_FRAGMENT:Ljava/lang/String; = "tag_dialpad_fragment"

.field private static final TAG_SELECT_ACCT_FRAGMENT:Ljava/lang/String; = "tag_select_acct_fragment"

.field private static final TURN_ON_SCREEN_FOR_NEW_INCOMING:I = 0xa1

.field private static final TURN_ON_SCREEN_FOR_NEW_INCOMING_DELAY:I = 0x1f4

.field private static final UI_ENTRY_POINTS_LOADER:I = 0x2

.field private static final UPDATE_MCID_STATE:I = 0xa3

.field private static final UPDATE_MCID_STATE_TIMEOUT:I = 0x12c

.field private static final UPDATE_NOTI_INCOMING_FOR_BT:I = 0xa4

.field private static final UPDATE_NOTI_INCOMING_FOR_BT_DELAY:I = 0x7d0

.field private static final WAIT:C = ';'

.field private static final WILD:C = 'N'

.field private static isTabletUX:Z


# instance fields
.field confirmDialog:Landroid/app/AlertDialog;

.field confirmDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private isBB:Z

.field final mAccessibilityTask:Ljava/lang/Runnable;

.field private mAnimateDialpadOnShow:Z

.field private mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

.field private mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

.field private mAutoAnsTimer:Lcom/android/incallui/InCallActivity$AutoAnsTimer;

.field private mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

.field private mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

.field private mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

.field private mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

.field protected mContentViewListener:Lcom/android/incallui/service/vt/ContentViewListener;

.field private mCurrentMobileKeyboardCovered:I

.field private mCurrentOrientation:I

.field private mDataUsageLimitDialog:Landroid/app/AlertDialog;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

.field private mDispatchTouchEventListener:Landroid/view/View$OnTouchListener;

.field private mDtmfReceiver:Landroid/content/BroadcastReceiver;

.field private mDtmfText:Ljava/lang/String;

.field private mElaspedAMTime:I

.field private mFNDBlockedDialog:Z

.field private mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

.field private mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

.field private mHandler:Landroid/os/Handler;

.field public mHasIVR:Z

.field public mHasOutgoingCall:Z

.field private mHasWindowFocus:Z

.field private mInCallActivityMenu:Landroid/widget/PopupMenu;

.field private mInCallMenu:Lcom/android/incallui/InCallMenu;

.field private mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

.field private mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

.field private mIsAppSwitchSystemKeyEventRequested:Z

.field private mIsEnabled:Z

.field private mIsForegroundActivity:Z

.field private mIsFromAMPopup:Z

.field private mIsFromPopup:Z

.field private mIsLandscape:Z

.field private mIsNewOutgoingCall:Z

.field private mIsSlideInRunning:Z

.field private mIsSlideOutRunning:Z

.field public mLastestCallTime:Ljava/lang/String;

.field private mMenu:Lcom/android/incallui/InCallMenu;

.field private mNeedToInitialize:Z

.field private mNeedToRecoverDialpad:Z

.field private mOnehandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

.field private mOnehandEnabledObserver:Landroid/database/ContentObserver;

.field private mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

.field private mPreviousModifyType:I

.field private mRcsBroadcastReceiver:Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

.field private mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

.field private mRotationEnabledObserver:Landroid/database/ContentObserver;

.field private mScontextListener:Lcom/samsung/android/hardware/context/SemContextListener;

.field private mScontextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenOffRegistered:Z

.field private mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectAcctListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

.field private mShowDialpadRequest:I

.field private mShowPostCharWaitDialogCallId:Ljava/lang/String;

.field private mShowPostCharWaitDialogChars:Ljava/lang/String;

.field private mShowPostCharWaitDialogOnResume:Z

.field private mSlideIn:Landroid/view/animation/Animation;

.field mSlideInListner:Lcom/android/phone/common/animation/AnimationListenerAdapter;

.field private mSlideOut:Landroid/view/animation/Animation;

.field mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

.field private mStatusBarManager:Landroid/app/SemStatusBarManager;

.field private mSystemUIIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTouchPoint:Landroid/graphics/Point;

.field private mTtyNotificationDialog:Landroid/app/AlertDialog;

.field private mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

.field protected mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

.field private mWaitDialog_callId:Ljava/lang/String;

.field private mWaitDialog_chars:Ljava/lang/String;

.field private mWifiDialog:Landroid/app/AlertDialog;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 227
    const-wide v0, 0x1000000000L

    sput-wide v0, Lcom/android/incallui/InCallActivity;->FEATURE_ENRICHED_CALL_COMPOSER:J

    .line 228
    const-wide v0, 0x2000000000L

    sput-wide v0, Lcom/android/incallui/InCallActivity;->FEATURE_ENRICHED_SHARED_MAP:J

    .line 229
    const-wide v0, 0x4000000000L

    sput-wide v0, Lcom/android/incallui/InCallActivity;->FEATURE_ENRICHED_SHARED_SKETCH:J

    .line 230
    const-wide v0, 0x8000000000L

    sput-wide v0, Lcom/android/incallui/InCallActivity;->FEATURE_ENRICHED_POST_CALL:J

    .line 332
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/InCallActivity;->isTabletUX:Z

    .line 333
    const/16 v0, 0x258

    sput v0, Lcom/android/incallui/InCallActivity;->TABLET_SMALL_WIDTH_VALUE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;-><init>()V

    .line 206
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mFNDBlockedDialog:Z

    .line 215
    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mMenu:Lcom/android/incallui/InCallMenu;

    .line 225
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->isBB:Z

    .line 237
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    .line 264
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mNeedToRecoverDialpad:Z

    .line 266
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mHasOutgoingCall:Z

    .line 267
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mHasIVR:Z

    .line 270
    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->confirmDialog:Landroid/app/AlertDialog;

    .line 271
    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->confirmDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 280
    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    .line 286
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    .line 287
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsFromPopup:Z

    .line 289
    iput v1, p0, Lcom/android/incallui/InCallActivity;->mPreviousModifyType:I

    .line 335
    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mLastestCallTime:Ljava/lang/String;

    .line 337
    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mWaitDialog_callId:Ljava/lang/String;

    .line 338
    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mWaitDialog_chars:Ljava/lang/String;

    .line 345
    new-instance v0, Lcom/android/incallui/InCallActivity$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$1;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSlideInListner:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    .line 379
    new-instance v0, Lcom/android/incallui/InCallActivity$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$2;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    .line 411
    new-instance v0, Lcom/android/incallui/InCallActivity$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$3;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSelectAcctListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    .line 425
    new-instance v0, Lcom/android/incallui/InCallActivity$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$4;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 436
    new-instance v0, Lcom/android/incallui/InCallActivity$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$5;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAccessibilityTask:Ljava/lang/Runnable;

    .line 445
    new-instance v0, Lcom/android/incallui/InCallActivity$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$6;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 476
    new-instance v0, Lcom/android/incallui/InCallActivity$7;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$7;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSystemUIIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 490
    new-instance v0, Lcom/android/incallui/InCallActivity$8;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$8;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDtmfReceiver:Landroid/content/BroadcastReceiver;

    .line 539
    new-instance v0, Lcom/android/incallui/InCallActivity$10;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$10;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    .line 3150
    new-instance v0, Lcom/android/incallui/InCallActivity$17;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/InCallActivity$17;-><init>(Lcom/android/incallui/InCallActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mRotationEnabledObserver:Landroid/database/ContentObserver;

    .line 3161
    new-instance v0, Lcom/android/incallui/InCallActivity$18;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/InCallActivity$18;-><init>(Lcom/android/incallui/InCallActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mOnehandEnabledObserver:Landroid/database/ContentObserver;

    .line 3169
    new-instance v0, Lcom/android/incallui/InCallActivity$19;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/InCallActivity$19;-><init>(Lcom/android/incallui/InCallActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mOnehandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

    .line 4302
    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/InCallActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mIsSlideInRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/InCallActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # I

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->setTopMarginOfDialpad(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/incallui/InCallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->handleShowGreenBarMessage()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/incallui/InCallActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mNeedToInitialize:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/incallui/InCallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->initializeInCall()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/incallui/InCallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->startLockScreenDuringCallService()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/incallui/InCallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->onDialogDismissed()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/incallui/InCallActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->updateScreenType(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/incallui/InCallActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/incallui/InCallActivity;)Lcom/android/incallui/widget/GradientAnimationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/incallui/InCallActivity;)Lcom/android/incallui/widget/GradientAnimationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/incallui/InCallActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mIsSlideOutRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/incallui/InCallActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->showDialpad(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/InCallActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->handleEventScreenOff(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/InCallActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/incallui/InCallActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mWaitDialog_callId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mWaitDialog_callId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/incallui/InCallActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mWaitDialog_chars:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mWaitDialog_chars:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/incallui/InCallActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->showGreenBar(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/incallui/InCallActivity;CI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # C
    .param p2, "x2"    # I

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/InCallActivity;->sendDtmf(CI)V

    return-void
.end method

.method private addFlagTurnOnScreen(Z)V
    .locals 3
    .param p1, "add"    # Z

    .prologue
    const/high16 v2, 0x200000

    .line 3435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addFlagTurnOnScreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3436
    if-eqz p1, :cond_0

    .line 3437
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 3441
    :goto_0
    return-void

    .line 3439
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method private animateForActivityClosed()V
    .locals 3

    .prologue
    .line 1549
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->getBaseActivity()Ljava/lang/String;

    move-result-object v0

    .line 1550
    .local v0, "baseActivity":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.android.app.easylauncher.Launcher"

    .line 1551
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1552
    :cond_0
    const-string v1, "animateForActivityClosed: baseActivity is launcher"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1556
    :goto_0
    return-void

    .line 1554
    :cond_1
    const v1, 0x7f05000a

    const v2, 0x7f05000b

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/InCallActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private animateForDummyBackground(Landroid/animation/AnimatorSet;I)V
    .locals 6
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "duration"    # I

    .prologue
    .line 4083
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4115
    :cond_0
    :goto_0
    return-void

    .line 4084
    :cond_1
    const-string v3, "InCallActivity"

    const-string v4, "animateForDummyBackground"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4085
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    if-nez v3, :cond_2

    .line 4086
    const v3, 0x7f100291

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/widget/GradientAnimationView;

    iput-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    .line 4087
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->setUp()V

    .line 4088
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    .line 4090
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v4}, Lcom/android/incallui/widget/GradientAnimationView;->getStartColor()I

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v5}, Lcom/android/incallui/widget/GradientAnimationView;->getEndColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColor(II)V

    .line 4091
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setScaleY(F)V

    .line 4092
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setAlpha(F)V

    .line 4093
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    .line 4095
    new-instance v0, Lcom/android/incallui/InCallActivity$30;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$30;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 4104
    .local v0, "callback":Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const v4, 0x3ee66666    # 0.45f

    .line 4105
    invoke-direct {p0, v4}, Lcom/android/incallui/InCallActivity;->getAdjustBackgroundScale(F)F

    move-result v4

    .line 4104
    invoke-virtual {v3, v4, p2, v0}, Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForScale(FILcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;)Landroid/animation/Animator;

    move-result-object v2

    .line 4108
    .local v2, "scaleAnimator":Landroid/animation/Animator;
    if-eqz v2, :cond_3

    .line 4109
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 4111
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3, p2}, Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForShow(I)Landroid/animation/Animator;

    move-result-object v1

    .line 4112
    .local v1, "fadeInAnimator":Landroid/animation/Animator;
    if-eqz v1, :cond_0

    .line 4113
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0
.end method

.method private checkAndStartAnswerMemo()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3741
    const-string v8, "automatic_answering_machine"

    .line 3742
    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3743
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 3744
    .local v1, "call":Lcom/android/incallui/Call;
    const/4 v3, 0x0

    .line 3746
    .local v3, "hasActiveCall":Z
    if-eqz v1, :cond_0

    .line 3747
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    move v3, v6

    .line 3750
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "callsettings_ring_duration"

    const/16 v10, 0xd

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 3754
    .local v5, "limit":I
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "callsettings_answer_memo"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3758
    .local v0, "answerMemo":I
    const/4 v4, 0x0

    .line 3759
    .local v4, "isVoicePartyCall":Z
    const-string v8, "feature_kdi"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3760
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v4

    .line 3762
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsFromAMPopup = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/incallui/InCallActivity;->mIsFromAMPopup:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mElaspedAMTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/incallui/InCallActivity;->mElaspedAMTime:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " limit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3763
    iget-boolean v8, p0, Lcom/android/incallui/InCallActivity;->mIsFromAMPopup:Z

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/android/incallui/InCallActivity;->mElaspedAMTime:I

    if-lez v8, :cond_2

    .line 3764
    iget v8, p0, Lcom/android/incallui/InCallActivity;->mElaspedAMTime:I

    sub-int/2addr v5, v8

    .line 3767
    :cond_2
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

    .line 3768
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

    .line 3769
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

    .line 3770
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

    .line 3771
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

    .line 3772
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

    .line 3773
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

    .line 3775
    if-eqz v0, :cond_3

    if-ne v0, v6, :cond_6

    .line 3777
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkPhoneVibrateOrSilentMode()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_3
    if-nez v3, :cond_6

    if-nez v4, :cond_6

    .line 3780
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3781
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v8

    if-nez v8, :cond_6

    .line 3782
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v8

    if-nez v8, :cond_6

    move v2, v6

    .line 3783
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

    .line 3785
    if-eqz v2, :cond_4

    .line 3786
    const-string v6, "answerMemo  ON "

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3787
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3788
    invoke-direct {p0, v5}, Lcom/android/incallui/InCallActivity;->startAutoAnsTimer(I)V

    .line 3794
    .end local v0    # "answerMemo":I
    .end local v1    # "call":Lcom/android/incallui/Call;
    .end local v2    # "canAMStart":Z
    .end local v3    # "hasActiveCall":Z
    .end local v4    # "isVoicePartyCall":Z
    .end local v5    # "limit":I
    :cond_4
    :goto_2
    return-void

    .restart local v1    # "call":Lcom/android/incallui/Call;
    .restart local v3    # "hasActiveCall":Z
    :cond_5
    move v3, v7

    .line 3747
    goto/16 :goto_0

    .restart local v0    # "answerMemo":I
    .restart local v4    # "isVoicePartyCall":Z
    .restart local v5    # "limit":I
    :cond_6
    move v2, v7

    .line 3782
    goto :goto_1

    .line 3790
    .restart local v2    # "canAMStart":Z
    :cond_7
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->memoryFullAnswerMemoNotification()V

    goto :goto_2
.end method

.method private checkAndUpdateDeivceOrientation()V
    .locals 2

    .prologue
    .line 4000
    iget v0, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 4001
    const-string v0, "InCallActivity - checkAndUpdateDeivceOrientation"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->rotation(Ljava/lang/String;)V

    .line 4002
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onConfigurationChange(I)V

    .line 4004
    :cond_0
    return-void
.end method

.method private checkOwnCapability()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 4304
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {p0}, Lcom/android/incallui/secrcs/RcsShareUI;->getComposerAuth(Landroid/content/Context;)I

    .line 4305
    new-instance v2, Lcom/sec/ims/options/CapabilityManager;

    invoke-direct {v2, p0}, Lcom/sec/ims/options/CapabilityManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    .line 4306
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    if-nez v2, :cond_0

    .line 4307
    sput-boolean v3, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneSelf:Z

    .line 4308
    sput-boolean v3, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z

    .line 4337
    :goto_0
    return-void

    .line 4313
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    invoke-virtual {v2}, Lcom/sec/ims/options/CapabilityManager;->getOwnCapabilities()Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    .line 4314
    .local v0, "cap":Lcom/sec/ims/options/Capabilities;
    if-nez v0, :cond_2

    .line 4315
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneSelf:Z

    .line 4316
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4331
    .end local v0    # "cap":Lcom/sec/ims/options/Capabilities;
    :catch_0
    move-exception v1

    .line 4332
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "checkOwnCapability - error"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4333
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4335
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCraneSelf -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneSelf:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCraneOnlineSelf -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4320
    .restart local v0    # "cap":Lcom/sec/ims/options/Capabilities;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Own cap - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/android/incallui/InCallActivity;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-virtual {v0, v4, v5}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4321
    sget-wide v2, Lcom/android/incallui/InCallActivity;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4322
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneSelf:Z

    .line 4323
    const-string v2, "checkOwnCapability - true"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4324
    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v2, :cond_1

    .line 4325
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z

    goto :goto_1

    .line 4327
    :cond_3
    const-string v2, "checkOwnCapability - false"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4328
    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v2, :cond_1

    .line 4329
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineSelf:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private checkRemoteCapability(Ljava/lang/String;)V
    .locals 8
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4340
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->checkOwnCapability()V

    .line 4341
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4342
    .local v1, "remote_number":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remote_number - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4343
    new-instance v2, Lcom/sec/ims/options/CapabilityManager;

    invoke-direct {v2, p0}, Lcom/sec/ims/options/CapabilityManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    .line 4344
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    if-nez v2, :cond_1

    .line 4345
    sput-boolean v6, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    .line 4346
    sput-boolean v6, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    .line 4372
    :cond_0
    :goto_0
    return-void

    .line 4350
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v1, v3}, Lcom/android/incallui/InCallActivity;->getCapabilityByNumber(Lcom/sec/ims/options/CapabilityManager;Ljava/lang/String;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    .line 4351
    .local v0, "cap":Lcom/sec/ims/options/Capabilities;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote cap - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4352
    if-eqz v0, :cond_0

    .line 4353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote cap 1 - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/android/incallui/InCallActivity;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-virtual {v0, v4, v5}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4355
    sget-wide v2, Lcom/android/incallui/InCallActivity;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4356
    sput-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    .line 4357
    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4358
    sput-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    goto :goto_0

    .line 4360
    :cond_2
    sput-boolean v6, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    goto :goto_0

    .line 4363
    :cond_3
    sput-boolean v6, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    .line 4364
    sput-boolean v6, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    .line 4365
    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4366
    iput-boolean v7, p0, Lcom/android/incallui/InCallActivity;->isBB:Z

    goto :goto_0

    .line 4368
    :cond_4
    iput-boolean v6, p0, Lcom/android/incallui/InCallActivity;->isBB:Z

    goto :goto_0
.end method

.method private destroyInCall()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2257
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->addFlagTurnOnScreen(Z)V

    .line 2259
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v0, :cond_0

    .line 2260
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->onDestroy()V

    .line 2261
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    .line 2263
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v0, :cond_1

    .line 2264
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->onDestroy()V

    .line 2265
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    .line 2267
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-eqz v0, :cond_2

    .line 2268
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->onDestroy()V

    .line 2269
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    .line 2271
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_3

    .line 2272
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->onDestroy()V

    .line 2273
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    .line 2275
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-eqz v0, :cond_4

    .line 2276
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->onDestroy()V

    .line 2277
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    .line 2279
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    if-eqz v0, :cond_5

    .line 2280
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->onDestroy()V

    .line 2281
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    .line 2283
    :cond_5
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION:Z

    if-eqz v0, :cond_6

    .line 2284
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mRotationEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2286
    :cond_6
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2287
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mOnehandEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2288
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mOnehandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2290
    :cond_7
    invoke-static {}, Lcom/android/incallui/UiAdapter;->deInit()V

    .line 2291
    return-void
.end method

.method private dismissTtyNotificationOnFinish()V
    .locals 1

    .prologue
    .line 3550
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3551
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    .line 3554
    :cond_0
    return-void
.end method

.method public static divertToVoiceCall(Ljava/lang/String;)V
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2821
    if-nez p0, :cond_0

    .line 2830
    :goto_0
    return-void

    .line 2823
    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->storeSpeakerState(Z)V

    .line 2825
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 2826
    .local v0, "context":Landroid/content/Context;
    const-string v3, "telecom"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    .line 2827
    .local v2, "tm":Landroid/telecom/TelecomManager;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2828
    .local v1, "extras":Landroid/os/Bundle;
    const-string v3, "cs_voice_call_outgoing"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2829
    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private getAdjustBackgroundScale(F)F
    .locals 4
    .param p1, "scale"    # F

    .prologue
    .line 4293
    invoke-static {p0}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    if-eqz v2, :cond_0

    .line 4294
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    int-to-float v2, v2

    mul-float v1, v2, p1

    .line 4295
    .local v1, "scaleHeight":F
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    int-to-float v2, v2

    invoke-static {p0}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    add-float v0, v2, v3

    .line 4296
    .local v0, "fullHeight":F
    div-float p1, v1, v0

    .line 4298
    .end local v0    # "fullHeight":F
    .end local v1    # "scaleHeight":F
    .end local p1    # "scale":F
    :cond_0
    return p1
.end method

.method private getCapabilityByNumber(Lcom/sec/ims/options/CapabilityManager;Ljava/lang/String;I)Lcom/sec/ims/options/Capabilities;
    .locals 2
    .param p1, "capabilityManager"    # Lcom/sec/ims/options/CapabilityManager;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "refreshType"    # I

    .prologue
    .line 4376
    if-eqz p1, :cond_0

    .line 4378
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/sec/ims/options/CapabilityManager;->getCapabilitiesByNumber(Ljava/lang/String;I)Lcom/sec/ims/options/Capabilities;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4383
    :goto_0
    return-object v1

    .line 4379
    :catch_0
    move-exception v0

    .line 4380
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4383
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDialerKeyDown: keyCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1801
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1802
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/bike/BikeModeController;->handleDialerKeyDown(ILandroid/view/KeyEvent;)V

    .line 1807
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->okToDialDtmfTones(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1808
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/incallui/DialpadUi;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1818
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleEventScreenOff(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3524
    const-string v1, "why"

    sget v2, Lcom/android/incallui/wrapper/WindowManagerPolicyWrapper;->OFF_BECAUSE_OF_USER:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3525
    .local v0, "why":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEventScreenOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3526
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/incallui/wrapper/WindowManagerPolicyWrapper;->OFF_BECAUSE_OF_PROX_SENSOR:I

    if-eq v0, v1, :cond_0

    .line 3527
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->returnToNormalWindowMode()V

    .line 3529
    :cond_0
    return-void
.end method

.method private handleShowGreenBarMessage()V
    .locals 4

    .prologue
    .line 3234
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3247
    :cond_0
    :goto_0
    return-void

    .line 3235
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-nez v1, :cond_2

    .line 3236
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sem_statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemStatusBarManager;

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 3239
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mHasWindowFocus:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    if-nez v1, :cond_0

    .line 3240
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 3241
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 3242
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 3243
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f013d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 3242
    :goto_1
    invoke-virtual {v2, v1}, Landroid/app/SemStatusBarManager;->setIndicatorBgColor(I)V

    goto :goto_0

    .line 3244
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f013c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1
.end method

.method private hasPendingErrorDialog()Z
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideCallPopup()V
    .locals 2

    .prologue
    .line 2449
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2450
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/SecCallPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->stopService(Landroid/content/Intent;)Z

    .line 2453
    :cond_0
    return-void
.end method

.method private hideVideoPopup()V
    .locals 2

    .prologue
    .line 2441
    const-string v0, "hideVideoPopup"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2442
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getVideoPopupService()Lcom/android/incallui/service/SecVideoPopupService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2443
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->hideVideoPopup()V

    .line 2444
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/SecVideoPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->stopService(Landroid/content/Intent;)Z

    .line 2446
    :cond_0
    return-void
.end method

.method private initializeInCall()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2179
    iput-boolean v4, p0, Lcom/android/incallui/InCallActivity;->mNeedToInitialize:Z

    .line 2180
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->boostCPU(Landroid/content/Context;)V

    .line 2182
    const-string v0, "perf - initializeInCall: start"

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2183
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateGradientColor()V

    .line 2184
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    .line 2186
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-nez v0, :cond_0

    .line 2187
    new-instance v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    .line 2189
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-nez v0, :cond_1

    .line 2190
    new-instance v0, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    .line 2192
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-nez v0, :cond_2

    .line 2193
    new-instance v0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    .line 2195
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-nez v0, :cond_3

    .line 2196
    new-instance v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    .line 2198
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-nez v0, :cond_4

    .line 2199
    new-instance v0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    .line 2201
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    if-nez v0, :cond_5

    .line 2202
    new-instance v0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    .line 2205
    :cond_5
    const-string v0, "perf - initializeInCall: fragment manager done"

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2207
    invoke-static {}, Lcom/android/incallui/UiAdapter;->init()Lcom/android/incallui/UiAdapter;

    .line 2209
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION:Z

    if-eqz v0, :cond_6

    .line 2210
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    .line 2211
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mRotationEnabledObserver:Landroid/database/ContentObserver;

    .line 2210
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2214
    :cond_6
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2215
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "interactionarea_switch"

    .line 2216
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mOnehandEnabledObserver:Landroid/database/ContentObserver;

    .line 2215
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2217
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_running"

    .line 2218
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mOnehandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

    .line 2217
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2219
    const-string v0, "registerContentObserver about onehand mode"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2222
    :cond_7
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2223
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2225
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2232
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2233
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->UpdateInCallActivity(Lcom/android/incallui/InCallActivity;)V

    .line 2237
    :cond_8
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2238
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->unlock()V

    .line 2239
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->sendMsgCallListChange(I)V

    .line 2242
    :cond_9
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mNeedToRecoverDialpad:Z

    if-eqz v0, :cond_c

    .line 2243
    const-string v0, "initializeInCall : Recover dialpad"

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2244
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2245
    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/PrivatePolicy;->restoreStatus(I)V

    .line 2247
    :cond_a
    invoke-virtual {p0, v3, v4}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    .line 2248
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2249
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/DialpadFragment;

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/DialpadFragment;->restoreDtmfText(Ljava/lang/String;)V

    .line 2251
    :cond_b
    iput-boolean v4, p0, Lcom/android/incallui/InCallActivity;->mNeedToRecoverDialpad:Z

    .line 2253
    :cond_c
    const-string v0, "perf - initializeInCall: done"

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2254
    return-void
.end method

.method private internalResolveIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2015
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2017
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2025
    const-string v7, "automatic_answering_machine"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2026
    iput-boolean v9, p0, Lcom/android/incallui/InCallActivity;->mIsFromAMPopup:Z

    .line 2027
    const-string v7, "fromAMPopup"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2028
    const-string v7, "fromAMPopup"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/incallui/InCallActivity;->mIsFromAMPopup:Z

    .line 2030
    :cond_0
    const-string v7, "elapsedAMTime"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2031
    const-string v7, "elapsedAMTime"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/incallui/InCallActivity;->mElaspedAMTime:I

    .line 2035
    :cond_1
    const-string v7, "fromPopup"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2036
    const-string v7, "fromPopup"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/incallui/InCallActivity;->mIsFromPopup:Z

    .line 2039
    :cond_2
    const-string v7, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2044
    const-string v7, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 2045
    .local v6, "showDialpad":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- internalResolveIntent: SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2047
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v7

    if-nez v7, :cond_4

    .line 2048
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/incallui/InCallActivity;->relaunchedFromDialer(Z)V

    .line 2051
    .end local v6    # "showDialpad":Z
    :cond_4
    const-string v7, "InCallActivity.new_outgoing_call"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2052
    const-string v7, "InCallActivity.new_outgoing_call"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 2054
    .local v1, "call":Lcom/android/incallui/Call;
    if-nez v1, :cond_5

    .line 2055
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 2058
    :cond_5
    const/4 v3, 0x0

    .line 2059
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_6

    .line 2060
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 2062
    :cond_6
    if-nez v3, :cond_7

    .line 2064
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "extras":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2066
    .restart local v3    # "extras":Landroid/os/Bundle;
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2104
    if-eqz v1, :cond_9

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->isEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 2105
    const-string v7, "selectPhoneAccountAccounts"

    .line 2106
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2107
    .local v5, "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    if-nez v7, :cond_9

    if-eqz v5, :cond_8

    .line 2108
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2109
    :cond_8
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 2115
    .end local v1    # "call":Lcom/android/incallui/Call;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v5    # "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_9
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- internalResolveIntent: mIsNewOutgoingCall = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/incallui/InCallActivity;->mIsNewOutgoingCall:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2117
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v4

    .line 2118
    .local v4, "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    if-eqz v4, :cond_d

    .line 2119
    invoke-virtual {p0, v9}, Lcom/android/incallui/InCallActivity;->showCallCardFragment(Z)V

    .line 2121
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 2124
    .restart local v3    # "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_c

    .line 2125
    const-string v7, "selectPhoneAccountAccounts"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2131
    .restart local v5    # "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :goto_1
    const v7, 0x7f090574

    iget-object v8, p0, Lcom/android/incallui/InCallActivity;->mSelectAcctListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    invoke-static {v7, v10, v5, v8}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->newInstance(IZLjava/util/List;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    move-result-object v2

    .line 2134
    .local v2, "dialogFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "tag_select_acct_fragment"

    invoke-virtual {v2, v7, v8}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2141
    .end local v2    # "dialogFragment":Landroid/app/DialogFragment;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    .end local v5    # "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_a
    :goto_2
    return-void

    .line 2113
    :cond_b
    iput-boolean v9, p0, Lcom/android/incallui/InCallActivity;->mIsNewOutgoingCall:Z

    goto :goto_0

    .line 2128
    .restart local v3    # "extras":Landroid/os/Bundle;
    .restart local v4    # "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    :cond_c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5    # "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    goto :goto_1

    .line 2137
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v5    # "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_d
    invoke-virtual {p0, v10}, Lcom/android/incallui/InCallActivity;->showCallCardFragment(Z)V

    goto :goto_2
.end method

.method private isEmergencyCall(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 2157
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    .line 2158
    .local v0, "handle":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 2159
    const/4 v1, 0x0

    .line 2161
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private isKeyEventDtmfCharacters(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 1855
    const/4 v0, 0x7

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isNonSeparator(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 913
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchPopup(I)V
    .locals 2
    .param p1, "caller"    # I

    .prologue
    .line 2330
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->shouldShowPopup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2331
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/SecCallPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2335
    :goto_0
    return-void

    .line 2333
    :cond_0
    const-string v0, "shouldShowPopup()... false"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private launchVideoPopup(I)V
    .locals 2
    .param p1, "caller"    # I

    .prologue
    const/4 v1, 0x1

    .line 2396
    const-string v0, "launchVideoPopup"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2397
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->shouldLaunchVideoPopup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2398
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/SecVideoPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2402
    :goto_0
    return-void

    .line 2400
    :cond_0
    const-string v0, "shouldLaunchVideoPopup()... false"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private okToDialDtmfTones(I)Z
    .locals 6
    .param p1, "keyCode"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1822
    const/4 v1, 0x0

    .line 1823
    .local v1, "okToDial":Z
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v4, :cond_4

    .line 1825
    const-string v4, "support_folder_hardkey"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1827
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->isKeyEventDtmfCharacters(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1828
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1829
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_3

    .line 1830
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 1831
    :cond_0
    const-string v3, "okToDialDTMFTones call disconnect and return false"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1848
    .end local v0    # "call":Lcom/android/incallui/Call;
    :goto_0
    return v2

    .line 1834
    .restart local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    :cond_2
    move v1, v3

    .line 1836
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->isKeyEventDtmfCharacters(I)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 1837
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v2, v3}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/DialpadFragment;

    .line 1847
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_4
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "okToDialDTMFTones okToDial : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v1

    .line 1848
    goto :goto_0

    .restart local v0    # "call":Lcom/android/incallui/Call;
    :cond_5
    move v1, v2

    .line 1834
    goto :goto_1

    .line 1840
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 1842
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1843
    const/4 v1, 0x1

    goto :goto_2
.end method

.method private onDialogDismissed()V
    .locals 1

    .prologue
    .line 2888
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 2889
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    .line 2890
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mFNDBlockedDialog:Z

    .line 2891
    return-void
.end method

.method private queryForCrane()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 868
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_4

    move v1, v3

    .line 869
    .local v1, "hasActiveCall":Z
    :goto_0
    const/4 v0, 0x0

    .line 870
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 871
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 880
    :cond_0
    :goto_1
    const/4 v2, 0x0

    .line 881
    .local v2, "msisdn":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 882
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 883
    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 884
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryForCrane number : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 886
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->checkRemoteCapability(Ljava/lang/String;)V

    .line 887
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableVoiceCallButtons isCraneRemote : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 888
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableVoiceCallButtons isCraneOnlineRemote : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneOnlineRemote:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 889
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-nez v4, :cond_2

    .line 890
    new-instance v4, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-direct {v4, p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    .line 891
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneSelf:Z

    if-eqz v4, :cond_3

    .line 892
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v4, v3}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->setCallPlusValue(Z)V

    .line 893
    :cond_3
    return-void

    .line 868
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "hasActiveCall":Z
    .end local v2    # "msisdn":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 872
    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v1    # "hasActiveCall":Z
    :cond_5
    if-eqz v1, :cond_6

    .line 873
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    goto :goto_1

    .line 875
    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 876
    if-nez v0, :cond_0

    .line 877
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private relaunchedFromDialer(Z)V
    .locals 4
    .param p1, "showDialpad"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 2165
    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    .line 2166
    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    .line 2168
    iget v1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    if-ne v1, v2, :cond_0

    .line 2171
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2172
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 2173
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    .line 2176
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 2165
    goto :goto_0
.end method

.method private sendDtmf(CI)V
    .locals 6
    .param p1, "c"    # C
    .param p2, "duration"    # I

    .prologue
    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDtmf(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 507
    const-string v2, "sendDtmf: invalid key"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    :goto_0
    return-void

    .line 510
    :cond_0
    const/16 v2, 0x64

    if-lt p2, v2, :cond_1

    const/16 v2, 0x1388

    if-le p2, v2, :cond_2

    .line 511
    :cond_1
    const-string v2, "sendDtmf: invalid duration"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 514
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 515
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 516
    :cond_3
    if-nez v0, :cond_4

    .line 517
    const-string v2, "sendDtmf: no active call"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 521
    :cond_4
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "callId":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/android/incallui/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    .line 523
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/incallui/InCallActivity$9;

    invoke-direct {v3, p0, v1}, Lcom/android/incallui/InCallActivity$9;-><init>(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)V

    int-to-long v4, p2

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setInCallViewsVisibility(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 2294
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2295
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2296
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2297
    if-nez p1, :cond_0

    .line 2298
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->updateCallCardPriority()V

    .line 2302
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2303
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallButtonFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2304
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallButtonFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2307
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2308
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2309
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_8

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2312
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2313
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2314
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_9

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2317
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2318
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2319
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_a

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2322
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->getFragment()Lcom/android/incallui/fragment/VideoCallFragment;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2323
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->getFragment()Lcom/android/incallui/fragment/VideoCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2324
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->getFragment()Lcom/android/incallui/fragment/VideoCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_b

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2327
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 2296
    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 2304
    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 2309
    goto/16 :goto_2

    :cond_9
    move v0, v2

    .line 2314
    goto :goto_3

    :cond_a
    move v0, v2

    .line 2319
    goto :goto_4

    :cond_b
    move v1, v2

    .line 2324
    goto :goto_5
.end method

.method private setTopMarginOfDialpad(I)V
    .locals 2
    .param p1, "topMargin"    # I

    .prologue
    .line 3603
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3605
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3606
    .local v0, "dialpadLP":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3607
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3609
    .end local v0    # "dialpadLP":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method private shouldLaunchVideoPopup(I)Z
    .locals 3
    .param p1, "caller"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2405
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2437
    :goto_0
    return v0

    .line 2407
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2408
    const-string v2, "shouldLaunchVideoPopup: Not video call"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2412
    :cond_1
    const-string v2, "support_tphone"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2413
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2414
    const-string v2, "shouldLaunchVideoPopup: tphone mode"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2418
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2419
    const-string v2, "shouldLaunchVideoPopup: isInMultiWindowMode"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2423
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isKidsModeCallApp()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2424
    const-string v2, "shouldLaunchVideoPopup: Kids mode"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2428
    :cond_4
    packed-switch p1, :pswitch_data_0

    .line 2436
    :cond_5
    const-string v0, "shouldLaunchVideoPopup: return true"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    .line 2437
    goto :goto_0

    .line 2430
    :pswitch_0
    const-string v2, "com.android.incallui.InCallActivity"

    invoke-static {v2}, Lcom/android/incallui/util/PackageHelpers;->isTopActivityRunning(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2431
    const-string v2, "shouldLaunchVideoPopup: INCALL_ACTIVITY is top activity"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2428
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private shouldShowPopup(I)Z
    .locals 4
    .param p1, "caller"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2338
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2392
    :cond_0
    :goto_0
    return v1

    .line 2340
    :cond_1
    const-string v3, "support_tphone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2341
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2342
    const-string v3, "shouldShowPopup: tphone mode"

    invoke-static {p0, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2346
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isKidsModeCallApp()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2347
    const-string v3, "shouldShowPopup: Kids mode"

    invoke-static {p0, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2350
    :cond_3
    sget-boolean v3, Lcom/android/incallui/service/vt/VideoCallConfig;->OVERLAY_POPUP_PLAY:Z

    if-eqz v3, :cond_4

    .line 2351
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2352
    const-string v3, "shouldShowPopup: Video call"

    invoke-static {p0, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2357
    :cond_4
    packed-switch p1, :pswitch_data_0

    .line 2391
    :cond_5
    const-string v1, "shouldShowPopup: return true"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v2

    .line 2392
    goto :goto_0

    .line 2359
    :pswitch_0
    const-string v3, "com.android.incallui.InCallActivity"

    invoke-static {v3}, Lcom/android/incallui/util/PackageHelpers;->isTopActivityRunning(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2360
    const-string v3, "shouldShowPopup: INCALL_ACTIVITY is top activity"

    invoke-static {p0, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2373
    :cond_6
    const-string v3, "ims_rcs"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "com.samsung.rcs.share.ContentShareActivity"

    .line 2374
    invoke-static {v3}, Lcom/android/incallui/util/PackageHelpers;->isTopActivityRunning(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2375
    const-string v3, "shouldShowPopup: RCS_ACTIVITY is top activity"

    invoke-static {p0, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2381
    :pswitch_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    .line 2382
    .local v0, "proximitySensor":Lcom/android/incallui/ProximitySensor;
    if-eqz v0, :cond_7

    .line 2383
    invoke-virtual {v0}, Lcom/android/incallui/ProximitySensor;->isScreenReallyOff()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2386
    :cond_7
    iget-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mHasWindowFocus:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    if-eqz v3, :cond_5

    goto :goto_0

    .line 2357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showDialpad(Z)V
    .locals 6
    .param p1, "showDialpad"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2504
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v4, :cond_1

    .line 2505
    const/4 v1, 0x0

    .line 2506
    .local v1, "needToShowMenu":Z
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2507
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/incallui/CallCardUi;->needToShowMenu()Z

    move-result v1

    .line 2510
    :cond_0
    if-eqz p1, :cond_4

    .line 2511
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v4}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->showDialpad()V

    .line 2512
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->updateDialpadIndicatorArea()V

    .line 2513
    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->setPrimaryCallMenuForDialpad(Z)V

    .line 2515
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2516
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2517
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/incallui/CallCardUi;->showMenu(Z)V

    .line 2531
    .end local v1    # "needToShowMenu":Z
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2532
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2533
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/android/incallui/CallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    .line 2535
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    if-nez p1, :cond_6

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/incallui/UiAdapter;->showCallBannerByDialpad(Z)V

    .line 2536
    return-void

    .line 2519
    .restart local v1    # "needToShowMenu":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/android/incallui/CallCardUi;->showMenu(Z)V

    goto :goto_0

    .line 2524
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2525
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/incallui/CallCardUi;->showMenu(Z)V

    .line 2528
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v4}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->hideDialpad()V

    goto :goto_0

    .end local v1    # "needToShowMenu":Z
    :cond_6
    move v2, v3

    .line 2535
    goto :goto_1
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 2862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show Dialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2864
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 2866
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2867
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090046

    new-instance v2, Lcom/android/incallui/InCallActivity$15;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$15;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 2868
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/InCallActivity$14;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$14;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 2874
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2880
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 2882
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2883
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 2884
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2885
    return-void
.end method

.method public static showErrorToast(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2817
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;I)V

    .line 2818
    return-void
.end method

.method private showGreenBar(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x1

    const/16 v4, 0xa0

    .line 3198
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-nez v1, :cond_0

    .line 3199
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sem_statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemStatusBarManager;

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 3201
    :cond_0
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3202
    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-direct {v0}, Lcom/android/incallui/secrcs/RcsShareUI;-><init>()V

    .line 3203
    .local v0, "mRcsShareUI":Lcom/android/incallui/secrcs/RcsShareUI;
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->isShareActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3204
    const-string v1, "SHARE active"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3231
    .end local v0    # "mRcsShareUI":Lcom/android/incallui/secrcs/RcsShareUI;
    :cond_1
    :goto_0
    return-void

    .line 3208
    :cond_2
    const-string v1, "support_tphone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3209
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3210
    const-string v1, "don\'t show green bar during tphone mode."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3211
    const/4 p1, 0x0

    .line 3214
    :cond_3
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3215
    const-string v1, "don\'t show green bar during cover closed"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3216
    const/4 p1, 0x0

    .line 3218
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showGreenBar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3219
    if-ne p1, v3, :cond_5

    .line 3220
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mHasWindowFocus:Z

    if-nez v1, :cond_1

    .line 3221
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3222
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3226
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3227
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3229
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f013e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/SemStatusBarManager;->setIndicatorBgColor(I)V

    goto :goto_0
.end method

.method private showStatusBarWhiteIcon(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 3270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showStatusBarWhiteIcon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3271
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 3272
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3273
    if-eqz p1, :cond_1

    .line 3274
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, -0x2001

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3280
    :cond_0
    :goto_0
    return-void

    .line 3277
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method private startAutoAnsTimer(I)V
    .locals 7
    .param p1, "limit"    # I

    .prologue
    const-wide/16 v4, 0x3e8

    const-wide/16 v2, 0xa

    const/16 v6, 0xa6

    .line 3804
    const-string v0, "startAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3805
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->resetAutoAnsTimer()V

    .line 3806
    if-gtz p1, :cond_2

    .line 3807
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mNeedToInitialize:Z

    if-eqz v0, :cond_0

    .line 3808
    const-string v0, "startAutoAnsTimer: initializeInCall()..."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3809
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3810
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3812
    :cond_0
    new-instance v0, Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/InCallActivity$AutoAnsTimer;-><init>(Lcom/android/incallui/InCallActivity;JJ)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAutoAnsTimer:Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    .line 3816
    :goto_0
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3817
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSystemSettingAllSoundOff()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3818
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAutoAnsTimer:Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity$AutoAnsTimer;->start()Landroid/os/CountDownTimer;

    .line 3823
    :cond_1
    :goto_1
    return-void

    .line 3814
    :cond_2
    new-instance v0, Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    int-to-long v2, p1

    mul-long/2addr v2, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/InCallActivity$AutoAnsTimer;-><init>(Lcom/android/incallui/InCallActivity;JJ)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAutoAnsTimer:Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    goto :goto_0

    .line 3821
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAutoAnsTimer:Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity$AutoAnsTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_1
.end method

.method private startLockScreenDuringCallService()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3516
    const-string v0, "startLockScreenDuringCallService"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3517
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowTabLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3518
    const-string v0, "- startService LockScreenDuringCall..."

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3519
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/LockScreenDuringCall;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3521
    :cond_0
    return-void
.end method

.method private startSelectPhoneAccountDialogActivity(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2144
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2145
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2146
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 2147
    .local v1, "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    if-eqz v1, :cond_0

    .line 2148
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2149
    .local v2, "phoneAccountIntent":Landroid/content/Intent;
    const-class v3, Lcom/android/incallui/SelectPhoneAccountActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2150
    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V

    .line 2151
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->finish()V

    .line 2154
    .end local v1    # "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    .end local v2    # "phoneAccountIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 896
    if-nez p0, :cond_0

    .line 897
    const/4 v4, 0x0

    .line 909
    :goto_0
    return-object v4

    .line 899
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 900
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 902
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 903
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 904
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 905
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 902
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 908
    .end local v0    # "c":C
    :cond_2
    const-string v4, "InCall"

    const-string v5, "InCallActivity striping done...."

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updateDialpadIndicatorArea()V
    .locals 2

    .prologue
    .line 3444
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3445
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3446
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/DialpadUi;->showIndicator(Z)V

    .line 3451
    :cond_0
    :goto_0
    return-void

    .line 3448
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/incallui/DialpadUi;->showIndicator(Z)V

    goto :goto_0
.end method

.method private updateIndicatorArea()V
    .locals 2

    .prologue
    .line 3542
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3543
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/UiAdapter;->showIndicatorArea(Z)V

    .line 3547
    :goto_0
    return-void

    .line 3545
    :cond_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/UiAdapter;->showIndicatorArea(Z)V

    goto :goto_0
.end method

.method private updateScreenType(Z)V
    .locals 5
    .param p1, "forceUpdate"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1927
    const/4 v1, 0x5

    .line 1929
    .local v1, "screenType":I
    const-string v2, "tablet_fullscreen_mode"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1930
    const/4 v1, -0x1

    .line 1933
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1934
    const/4 v1, 0x1

    .line 1935
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->canUseScreenTypeSensor()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1936
    const/16 v1, 0xa

    .line 1938
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyLandscapeUI()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1939
    const/4 v1, 0x0

    .line 1942
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v0

    .line 1943
    .local v0, "isConnectedMirrorLink":Z
    if-eqz v0, :cond_3

    .line 1944
    const/4 v1, 0x1

    .line 1947
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 1949
    const/4 v1, 0x1

    .line 1950
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateScreenType... screenType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1951
    const/4 p1, 0x1

    .line 1954
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getRequestedOrientation()I

    move-result v2

    if-ne v2, v1, :cond_5

    if-eqz p1, :cond_6

    .line 1956
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->setRequestedOrientation(I)V

    .line 1957
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateScreenType... screenType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / RequestedOrientaiton: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1958
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getRequestedOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1957
    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1960
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateScreenType: exit. isConnectedMirrorLink="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1961
    return-void
.end method

.method private voiceCallClicked()V
    .locals 5

    .prologue
    .line 3899
    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 3900
    .local v1, "number":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 3901
    const-string v3, "telecom"

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    .line 3902
    .local v2, "tm":Landroid/telecom/TelecomManager;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3903
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "roaming_auto_dial"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3904
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "feature_lgt"

    .line 3905
    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3906
    const-string v4, "RADDialOption"

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isCallNumberConverted()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "korea"

    :goto_0
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3908
    :cond_0
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3909
    invoke-static {p0, v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->setAvailablePhoneAccountHandle(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 3911
    :cond_1
    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 3913
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v2    # "tm":Landroid/telecom/TelecomManager;
    :cond_2
    return-void

    .line 3906
    .restart local v0    # "extras":Landroid/os/Bundle;
    .restart local v2    # "tm":Landroid/telecom/TelecomManager;
    :cond_3
    const-string v3, "abroad"

    goto :goto_0
.end method


# virtual methods
.method public SmartIVR_speakerOnConfirm()V
    .locals 4

    .prologue
    .line 1247
    const-string v2, "Smart IVR - Confirm Speaker on dialog shown"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1248
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->confirmDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1249
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->confirmDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f090466

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1250
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1251
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040030

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1252
    .local v0, "confirmSpeakerDialogView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->confirmDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1253
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->confirmDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->confirmDialog:Landroid/app/AlertDialog;

    .line 1254
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->confirmDialog:Landroid/app/AlertDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1255
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->confirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1256
    return-void
.end method

.method public addFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 3427
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 3428
    return-void
.end method

.method public animateForHideBackground()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4141
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-nez v0, :cond_0

    .line 4142
    const-string v0, "InCallActivity"

    const-string v1, "animateForHideBackground: mGradientAnimationView is null"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4150
    :goto_0
    return-void

    .line 4145
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4146
    const-string v0, "InCallActivity"

    const-string v1, "animateForHideBackground: hasLiveCallToDisplay"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 4149
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->animateForHide(I)V

    goto :goto_0
.end method

.method public animateForShrinkBackground(Z)V
    .locals 7
    .param p1, "isIncoming"    # Z

    .prologue
    .line 4050
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v4, :cond_1

    .line 4051
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 4052
    .local v3, "duration":I
    new-instance v2, Lcom/android/incallui/InCallActivity$29;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/InCallActivity$29;-><init>(Lcom/android/incallui/InCallActivity;Z)V

    .line 4065
    .local v2, "callback":Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const v5, 0x3ee66666    # 0.45f

    .line 4066
    invoke-direct {p0, v5}, Lcom/android/incallui/InCallActivity;->getAdjustBackgroundScale(F)F

    move-result v5

    .line 4065
    invoke-virtual {v4, v5, v3, v2}, Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForScale(FILcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;)Landroid/animation/Animator;

    move-result-object v0

    .line 4069
    .local v0, "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_1

    .line 4070
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4071
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 4072
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v4}, Lcom/android/incallui/widget/GradientAnimationView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 4073
    invoke-direct {p0, v1, v3}, Lcom/android/incallui/InCallActivity;->animateForDummyBackground(Landroid/animation/AnimatorSet;I)V

    .line 4075
    :cond_0
    const-string v4, "InCallActivity"

    const-string v5, "animateForShrinkBackground"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4076
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v4}, Lcom/android/incallui/widget/GradientAnimationView;->stopStreamAnimation()V

    .line 4077
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 4080
    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v2    # "callback":Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;
    .end local v3    # "duration":I
    :cond_1
    return-void
.end method

.method public answeringMode()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 3871
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 3872
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsFromAMPopup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mIsFromAMPopup:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isAutoAnswered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3874
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3875
    invoke-static {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    .line 3877
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3878
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v1

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v2

    invoke-virtual {v1, v2, p0}, Lcom/android/incallui/fragment/AnswerFragment;->onAnswer(ILandroid/content/Context;)V

    .line 3879
    :cond_0
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3880
    invoke-static {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnsweringMode(Z)V

    .line 3881
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa5

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3882
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "isGuidanceMsgPlaying"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3885
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->resetAutoAnsTimer()V

    .line 3886
    iput-boolean v6, p0, Lcom/android/incallui/InCallActivity;->mIsFromAMPopup:Z

    .line 3891
    :cond_2
    :goto_0
    return-void

    .line 3888
    :cond_3
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3889
    const v1, 0x7f09008d

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public checkAndUpdateScreenType(Lcom/android/incallui/Call;)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1964
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getRequestedOrientation()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    move v0, v2

    .line 1965
    .local v0, "isScreenTypeSensor":Z
    :goto_0
    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallControl;->canUseScreenTypeSensor(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eq v4, v0, :cond_2

    move v1, v2

    .line 1966
    .local v1, "update":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 1967
    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->updateScreenType(Z)V

    .line 1968
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InCallActivity - updateScreenType : isScreenTypeSensor ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->rotation(Ljava/lang/String;)V

    .line 1970
    :cond_0
    return-void

    .end local v0    # "isScreenTypeSensor":Z
    .end local v1    # "update":Z
    :cond_1
    move v0, v3

    .line 1964
    goto :goto_0

    .restart local v0    # "isScreenTypeSensor":Z
    :cond_2
    move v1, v3

    .line 1965
    goto :goto_1
.end method

.method public checkForContentView()V
    .locals 1

    .prologue
    .line 4254
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isActivityFullWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4255
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mContentViewListener:Lcom/android/incallui/service/vt/ContentViewListener;

    if-eqz v0, :cond_0

    .line 4256
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mContentViewListener:Lcom/android/incallui/service/vt/ContentViewListener;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/ContentViewListener;->removeListener()V

    .line 4258
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->onDisplayMetricsChanged()V

    .line 4262
    :goto_0
    return-void

    .line 4260
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->registerContentViewListener()V

    goto :goto_0
.end method

.method public clearDigits()V
    .locals 1

    .prologue
    .line 2456
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2457
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_0

    .line 2458
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->clearSavedDtmfText()V

    .line 2461
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2462
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/DialpadUi;->clearDigits()V

    .line 2464
    :cond_1
    return-void
.end method

.method public clearFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 3431
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    .line 3432
    return-void
.end method

.method public dismissDataChargeAlertDialog()V
    .locals 1

    .prologue
    .line 3950
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3951
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3952
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 3954
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->onDialogDismissed()V

    .line 3955
    return-void
.end method

.method public dismissDataUsageLimitDialog()V
    .locals 1

    .prologue
    .line 3646
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3647
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    .line 3650
    :cond_0
    return-void
.end method

.method public dismissDialogForDisconnect()V
    .locals 3

    .prologue
    .line 3397
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3398
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/fragment/AnswerFragment;->dismissWaitingCallPopup(Z)V

    .line 3400
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_ANSWER_OPTION:Z

    if-eqz v1, :cond_0

    .line 3401
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 3402
    .local v0, "callList":Lcom/android/incallui/CallList;
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/fragment/AnswerFragment;->isShowIncomingHideShowLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3403
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/fragment/AnswerFragment;->enableButtonAnswerAsShowOrHide()V

    .line 3417
    .end local v0    # "callList":Lcom/android/incallui/CallList;
    :cond_0
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_CDMA:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_GSM:Z

    if-eqz v1, :cond_2

    .line 3418
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 3419
    .restart local v0    # "callList":Lcom/android/incallui/CallList;
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3420
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3421
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    .line 3424
    .end local v0    # "callList":Lcom/android/incallui/CallList;
    :cond_2
    return-void
.end method

.method public dismissInCallMenu()V
    .locals 1

    .prologue
    .line 3037
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3038
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 3039
    const-string v0, "- dismissInCallMenu"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3040
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 3043
    :cond_0
    return-void
.end method

.method public dismissKeyguard(Z)V
    .locals 2
    .param p1, "dismiss"    # Z

    .prologue
    const/high16 v1, 0x400000

    .line 2490
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2491
    const-string v0, "dismissKeyguard getWindow() is null"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2499
    :goto_0
    return-void

    .line 2494
    :cond_0
    if-eqz p1, :cond_1

    .line 2495
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 2497
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public dismissPendingDialogs()V
    .locals 2

    .prologue
    .line 2845
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2846
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2847
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 2851
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2852
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->dismissPendingDialogues()V

    .line 2854
    :cond_1
    const-string v0, "roaming_enhancement"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2855
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->dismissCallRoamingGuardDialog(Z)V

    .line 2856
    :cond_2
    return-void
.end method

.method public dismissPostCharPauseDialog()V
    .locals 2

    .prologue
    const/16 v1, 0xa2

    .line 2753
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2754
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2756
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    if-eqz v0, :cond_1

    .line 2757
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    invoke-virtual {v0}, Lcom/android/incallui/PostCharDialogFragment;->dismissAllowingStateLoss()V

    .line 2758
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    .line 2760
    :cond_1
    return-void
.end method

.method public dismissPostCharPauseDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "chars"    # Ljava/lang/String;

    .prologue
    .line 2763
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPostCharPauseDialog()V

    .line 2769
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2775
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2776
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2783
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 2778
    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    if-eqz v0, :cond_0

    .line 2779
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAccessibilityTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2780
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAccessibilityTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2788
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDispatchTouchEventListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_0

    .line 2789
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDispatchTouchEventListener:Landroid/view/View$OnTouchListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2790
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 2791
    const/4 v1, 0x1

    .line 2795
    .end local v0    # "handled":Z
    :goto_0
    return v1

    .line 2794
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->sendLockScreenEvent()V

    .line 2795
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public displayDialpad(ZZ)V
    .locals 6
    .param p1, "showDialpad"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2540
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2656
    :cond_1
    :goto_0
    return-void

    .line 2543
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isConferenceCallManagerShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2544
    const/4 p2, 0x0

    .line 2548
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isShowDialpadRequested()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2549
    const/4 p2, 0x0

    .line 2552
    :cond_4
    const-string v4, "support_folder_single_lcd"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2553
    const/4 p2, 0x0

    .line 2555
    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2559
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez p2, :cond_d

    .line 2560
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->showDialpad(Z)V

    .line 2561
    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->setTopMarginOfDialpad(I)V

    .line 2562
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 2563
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2564
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/incallui/CallButtonUi;->returnButtonsForDialpad(Z)V

    .line 2566
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 2567
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/DialpadUi;->showElapsedTimeContainer()V

    .line 2569
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 2570
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/incallui/CallCardUi;->changeViewForMoveDialpad(Z)V

    .line 2573
    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 2574
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/incallui/CallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    .line 2576
    :cond_9
    if-eqz v0, :cond_a

    .line 2577
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    .line 2579
    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    .line 2649
    :cond_b
    :goto_1
    const-string v3, "clear_dialpad_digits"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2650
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 2651
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/DialpadUi;->clearDigits()V

    .line 2655
    :cond_c
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/incallui/ProximitySensor;->onDialpadVisible(Z)V

    goto/16 :goto_0

    .line 2581
    :cond_d
    if-eqz p1, :cond_e

    .line 2582
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showDialpad(Z)V

    .line 2588
    :cond_e
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v4, :cond_f

    .line 2589
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2590
    .local v1, "duration":I
    if-eqz p1, :cond_16

    .line 2591
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v4, v1}, Lcom/android/incallui/widget/GradientAnimationView;->animateForHide(I)V

    .line 2596
    .end local v1    # "duration":I
    :cond_f
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 2597
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/incallui/CallCardUi;->onDialpadVisiblityChange(Z)V

    .line 2599
    :cond_10
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 2600
    if-nez p1, :cond_11

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/incallui/DialpadUi;->hideElapsedTimeContainer()V

    .line 2604
    :cond_11
    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->setTopMarginOfDialpad(I)V

    .line 2606
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    if-nez v4, :cond_13

    .line 2607
    :cond_12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-ne v4, v2, :cond_17

    .line 2610
    .local v2, "isRtl":Z
    :goto_3
    iget-boolean v4, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    if-eqz v4, :cond_1a

    .line 2611
    if-eqz v2, :cond_18

    const v4, 0x7f050014

    :goto_4
    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    .line 2613
    if-eqz v2, :cond_19

    const v4, 0x7f050017

    :goto_5
    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    .line 2622
    :goto_6
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/incallui/InCallActivity;->mSlideInListner:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2623
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/incallui/InCallActivity;->mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2625
    .end local v2    # "isRtl":Z
    :cond_13
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 2626
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 2627
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz p1, :cond_1b

    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    :goto_7
    invoke-virtual {v5, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2631
    :cond_14
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 2632
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/incallui/CallCardUi;->animateForMoveDialpad(Z)V

    .line 2634
    :cond_15
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 2635
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/android/incallui/CallButtonUi;->enableDialpadButton(Z)V

    .line 2636
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2637
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/incallui/CallButtonUi;->animateForMoveDialpad(Z)V

    .line 2638
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 2639
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/DialpadUi;->showElapsedTimeContainer()V

    goto/16 :goto_1

    .line 2593
    .restart local v1    # "duration":I
    :cond_16
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v4, v1}, Lcom/android/incallui/widget/GradientAnimationView;->animateForShow(I)V

    goto/16 :goto_2

    .end local v1    # "duration":I
    :cond_17
    move v2, v3

    .line 2607
    goto/16 :goto_3

    .line 2611
    .restart local v2    # "isRtl":Z
    :cond_18
    const v4, 0x7f050015

    goto/16 :goto_4

    .line 2613
    :cond_19
    const v4, 0x7f050018

    goto/16 :goto_5

    .line 2616
    :cond_1a
    const v4, 0x7f050013

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    .line 2617
    const v4, 0x7f050016

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    goto/16 :goto_6

    .line 2627
    .end local v2    # "isRtl":Z
    :cond_1b
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    goto :goto_7

    .line 2642
    :cond_1c
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2643
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/incallui/CallButtonUi;->animateForMoveDialpad(Z)V

    goto/16 :goto_1
.end method

.method public enableInCallOrientationEventListener(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 4013
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

    if-eqz v0, :cond_0

    .line 4014
    if-eqz p1, :cond_1

    .line 4015
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallOrientationEventListener;->enable(Z)V

    .line 4020
    :cond_0
    :goto_0
    return-void

    .line 4017
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/incallui/InCallOrientationEventListener;->disable()V

    goto :goto_0
.end method

.method public expandBackgroundForConference(Z)V
    .locals 5
    .param p1, "expand"    # Z

    .prologue
    const/4 v2, 0x1

    .line 4118
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4119
    const-string v3, "InCallActivity"

    const-string v4, "expandBackgroundForConference: incoming call"

    invoke-static {v3, v4, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4138
    :cond_0
    :goto_0
    return-void

    .line 4122
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v3, :cond_0

    .line 4123
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 4124
    .local v1, "duration":I
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4125
    .local v2, "needToShowFullScale":Z
    :cond_2
    :goto_1
    new-instance v0, Lcom/android/incallui/InCallActivity$31;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$31;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 4134
    .local v0, "callback":Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz p1, :cond_5

    if-eqz v2, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v4, v3, v1, v0}, Lcom/android/incallui/widget/GradientAnimationView;->animateForScale(FILcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;)V

    goto :goto_0

    .line 4124
    .end local v0    # "callback":Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;
    .end local v2    # "needToShowFullScale":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 4134
    .restart local v0    # "callback":Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;
    .restart local v2    # "needToShowFullScale":Z
    :cond_4
    const/high16 v3, 0x3f400000    # 0.75f

    .line 4135
    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->getAdjustBackgroundScale(F)F

    move-result v3

    goto :goto_2

    :cond_5
    const v3, 0x3ee66666    # 0.45f

    .line 4136
    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->getAdjustBackgroundScale(F)F

    move-result v3

    goto :goto_2
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 1531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish(). Dialog showing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1532
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1533
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/bike/BikeModeController;->finish(Lcom/android/incallui/InCallActivity;)V

    .line 1536
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hasPendingErrorDialog()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1537
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->finish()V

    .line 1538
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->animateForActivityClosed()V

    .line 1540
    :cond_1
    return-void

    .line 1531
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forceFinish()V
    .locals 2

    .prologue
    .line 1543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceFinish(). Dialog showing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1544
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->finish()V

    .line 1545
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->animateForActivityClosed()V

    .line 1546
    return-void

    .line 1543
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnswerFragment()Lcom/android/incallui/AnswerUi;
    .locals 1

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-eqz v0, :cond_0

    .line 1974
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    .line 1976
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallButtonFragment()Lcom/android/incallui/CallButtonUi;
    .locals 1

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v0, :cond_0

    .line 1981
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v0

    .line 1983
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallCardFragment()Lcom/android/incallui/CallCardUi;
    .locals 1

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v0, :cond_0

    .line 1995
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    .line 1997
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallElapsedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3966
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mLastestCallTime:Ljava/lang/String;

    return-object v0
.end method

.method public getConferenceCallManagerShowingState()Z
    .locals 1

    .prologue
    .line 2702
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2703
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->isFragmentVisible()Z

    move-result v0

    .line 2705
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConferenceManagerFragment()Lcom/android/incallui/ConferenceManagerUi;
    .locals 1

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-eqz v0, :cond_0

    .line 2009
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    .line 2011
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentOrientation()I
    .locals 1

    .prologue
    .line 3178
    iget v0, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    return v0
.end method

.method public getDialpadFragment()Lcom/android/incallui/DialpadUi;
    .locals 1

    .prologue
    .line 1987
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    .line 1990
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDispatchTouchEventListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 4034
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDispatchTouchEventListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 3996
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 1

    .prologue
    .line 3065
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getInVideoCallMenu()Lcom/android/incallui/InVideoCallMenu;
    .locals 1

    .prologue
    .line 3069
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    if-nez v0, :cond_0

    .line 3070
    new-instance v0, Lcom/android/incallui/InVideoCallMenu;

    invoke-direct {v0, p0}, Lcom/android/incallui/InVideoCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    .line 3072
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    return-object v0
.end method

.method public getRcsInvitation()Lcom/android/incallui/secrcs/RcsInvitation;
    .locals 1

    .prologue
    .line 3182
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    return-object v0
.end method

.method public getTouchPointForNewOutgoingCall()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 3147
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTouchPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getVideoCallFragment()Lcom/android/incallui/VideoCallUi;
    .locals 1

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    if-eqz v0, :cond_0

    .line 2002
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->getFragment()Lcom/android/incallui/fragment/VideoCallFragment;

    move-result-object v0

    .line 2004
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;
    .locals 1

    .prologue
    .line 4250
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    return-object v0
.end method

.method public getVoiceCallButtonsGap()I
    .locals 1

    .prologue
    .line 2669
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2670
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->getVoiceCallButtonsGap()I

    move-result v0

    .line 2672
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleCshInfo(Landroid/content/Intent;)V
    .locals 1
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 2962
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2964
    :cond_0
    return-void
.end method

.method public handleError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    const/4 v2, 0x0

    .line 2968
    const-string v0, "handleError"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2969
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->isCshTopMostActivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2970
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    if-eqz v0, :cond_0

    .line 2971
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsInvitation;->discardInvitation()V

    .line 2972
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3027
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 2974
    :pswitch_1
    const v0, 0x7f090222

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2975
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2979
    :pswitch_2
    const v0, 0x7f090223

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2980
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2984
    :pswitch_3
    const v0, 0x7f090086

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2985
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2989
    :pswitch_4
    const v0, 0x7f090555

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2990
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2994
    :pswitch_5
    const v0, 0x7f090556

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2995
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2999
    :pswitch_6
    const v0, 0x7f090224

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 3000
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3004
    :pswitch_7
    const v0, 0x7f090226

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 3005
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3009
    :pswitch_8
    const v0, 0x7f090221

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 3010
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3014
    :pswitch_9
    const v0, 0x7f090225

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 3015
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3020
    :pswitch_a
    const v0, 0x7f090554

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 3021
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2972
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public handleIncommingIMandFT(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2953
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2954
    const-string v0, "handleIncommingIMandFT"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2955
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2956
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->onNewIncomingRcsSession(Ljava/lang/String;)V

    .line 2958
    :cond_0
    return-void
.end method

.method public handleInvitation(ZLandroid/content/Intent;)V
    .locals 2
    .param p1, "isIncoming"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2941
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2942
    const-string v0, "handleRcsAction"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2944
    if-eqz p1, :cond_0

    .line 2945
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->onNewIncomingRcsSession(Ljava/lang/String;)V

    .line 2949
    :cond_0
    return-void
.end method

.method public handleRcsAction(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2927
    const-string v1, "handleRcsAction from secInCall"

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2928
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2929
    const-string v1, "com.samsung.rcs.intent.action.STOP_SHARING_SERVICE_DIALOG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2930
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2931
    .local v0, "activecall":Lcom/android/incallui/Call;
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 2932
    const-string v1, "Showing invitation dialog..."

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2933
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/secrcs/RcsInvitation;->updateState(Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 2937
    .end local v0    # "activecall":Lcom/android/incallui/Call;
    :cond_0
    return-void
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 1511
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mHasWindowFocus:Z

    return v0
.end method

.method public hideDialpadForDisconnect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2471
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2472
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_0

    .line 2473
    invoke-virtual {p0, v1, v1}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    .line 2476
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->updateFragment()V

    .line 2479
    :cond_0
    return-void
.end method

.method public hideDialpadForModifyCall()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2482
    invoke-virtual {p0, v0, v0}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    .line 2484
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_0

    .line 2485
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->updateFragment()V

    .line 2487
    :cond_0
    return-void
.end method

.method public hideRcsCallCard()V
    .locals 2

    .prologue
    .line 1794
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->hideRcsCallCard(Lcom/android/incallui/secrcs/RcsInvitation;)V

    .line 1795
    return-void
.end method

.method public initDialpad()V
    .locals 2

    .prologue
    .line 3989
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3993
    :cond_0
    :goto_0
    return-void

    .line 3991
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/DialpadFragment;

    .line 3992
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->showDialpad(Z)V

    goto :goto_0
.end method

.method public isActivityFullWindow()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 4283
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4284
    .local v0, "context":Landroid/content/Context;
    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 4285
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4286
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4287
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v4, v6, :cond_0

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v4, v6, :cond_0

    move v3, v5

    .line 4288
    .local v3, "isActivityFullWindow":Z
    :goto_0
    const-string v4, "InCallActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isActivityFullWindow="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4289
    return v3

    .line 4287
    .end local v3    # "isActivityFullWindow":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isAnimateDialpadOnShow()Z
    .locals 1

    .prologue
    .line 3730
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    return v0
.end method

.method public isBackgroundShowing()Z
    .locals 1

    .prologue
    .line 4042
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->isGradientShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConferenceCallManagerShowing()Z
    .locals 1

    .prologue
    .line 2709
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2710
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->isVisible()Z

    move-result v0

    .line 2712
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDialpadVisible()Z
    .locals 1

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_0

    .line 2663
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->isShowing()Z

    move-result v0

    .line 2665
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForegroundActivity()Z
    .locals 1

    .prologue
    .line 1495
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method public isInMultiWindowMode()Z
    .locals 1

    .prologue
    .line 864
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->isInMultiWindowMode()Z

    move-result v0

    return v0
.end method

.method public isMenuOpen()Z
    .locals 1

    .prologue
    .line 3046
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v0, :cond_0

    .line 3047
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v0

    .line 3049
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowDialpadRequested()Z
    .locals 2

    .prologue
    .line 3722
    iget v0, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShrinkBackgroundRunning()Z
    .locals 1

    .prologue
    .line 4046
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->isScaleAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 1502
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isSafeToCommitTransactions()Z

    move-result v0

    return v0
.end method

.method public maybeShowErrorDialogOnDisconnect(Landroid/telecom/DisconnectCause;)V
    .locals 3
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    const/4 v2, 0x1

    .line 2799
    const-string v0, "maybeShowErrorDialogOnDisconnect"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2800
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2801
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 2802
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2803
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2804
    :cond_0
    const-string v0, "show ErrorDialog or ErrorToast"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2805
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2806
    invoke-static {p0, p1}, Lcom/android/incallui/operator/usa/InCallUIExtension;->maybeShowErrorToastOnDisconnect(Landroid/content/Context;Landroid/telecom/DisconnectCause;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2814
    :cond_1
    :goto_0
    return-void

    .line 2809
    :cond_2
    const-string v0, "FDN_BLOCKED"

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2810
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mFNDBlockedDialog:Z

    .line 2812
    :cond_3
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public needToAnimateForNewOutgoingCall()Z
    .locals 1

    .prologue
    .line 3138
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsNewOutgoingCall:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1593
    const-string v2, "onBackPressed()..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1595
    const-string v2, "ims_crane"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1596
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1597
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/CallButtonUi;->onBackPress()V

    .line 1602
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1603
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/CallCardUi;->isVisible()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1657
    :cond_1
    :goto_0
    return-void

    .line 1606
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1607
    invoke-virtual {p0, v3, v4}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    goto :goto_0

    .line 1611
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isConferenceCallManagerShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1612
    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->showConferenceCallManager(Z)V

    .line 1613
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1614
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/incallui/CallCardUi;->showManageConferenceCallButton(Z)V

    .line 1618
    :cond_4
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1619
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateCallCardFragment()V

    goto :goto_0

    .line 1625
    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1626
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_7

    .line 1628
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1629
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/fragment/AnswerFragment;->closeDrawer()V

    .line 1631
    :cond_6
    const-string v2, "Consume Back press for an incoming call"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1637
    :cond_7
    const-string v2, "hw_home_key"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1639
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_8

    .line 1640
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_8

    .line 1641
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1642
    :cond_8
    const-string v2, "Consume Back press for calling"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1647
    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isLostPhoneLock()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1648
    const-string v2, "Consume Back press for isLostPhoneLock"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1653
    :cond_a
    :try_start_0
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1654
    :catch_0
    move-exception v1

    .line 1655
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "InCallActivity"

    const-string v3, "super.onBackPressed() error"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x1

    .line 1872
    if-nez p1, :cond_0

    .line 1873
    const-string v2, "onConfigurationChanged - return : newConfig is null"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1874
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1924
    :goto_0
    return-void

    .line 1878
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1879
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->checkForContentView()V

    .line 1880
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1882
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v1

    .line 1883
    .local v1, "proximitySensor":Lcom/android/incallui/ProximitySensor;
    if-eqz v1, :cond_1

    .line 1884
    invoke-virtual {v1, p1}, Lcom/android/incallui/ProximitySensor;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1887
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->canUseScreenTypeSensor()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1888
    invoke-static {p0}, Lcom/android/incallui/util/VideoCallAppLogging;->orientationMode(Landroid/app/Activity;)V

    .line 1892
    :cond_2
    const-string v2, "ims_rcs"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1893
    const-string v2, "onConfigurationChanged()->setOrientation()"

    invoke-static {p0, v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1894
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Lcom/android/incallui/secrcs/RcsInvitation;->setOrientation(I)V

    .line 1897
    :cond_3
    const-string v2, "support_mobile_keyboard"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1898
    iget v2, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iget v3, p0, Lcom/android/incallui/InCallActivity;->mCurrentMobileKeyboardCovered:I

    if-eq v2, v3, :cond_4

    .line 1899
    iget v2, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v2, p0, Lcom/android/incallui/InCallActivity;->mCurrentMobileKeyboardCovered:I

    .line 1900
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->onMobileKeyboardChanged()V

    .line 1903
    :cond_4
    iget v2, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_5

    .line 1904
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    .line 1905
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallPresenter;->onConfigurationChange(I)V

    .line 1906
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->updateNavigationBar()V

    .line 1909
    :cond_5
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sget v3, Lcom/android/incallui/InCallActivity;->TABLET_SMALL_WIDTH_VALUE:I

    if-lt v2, v3, :cond_a

    .line 1910
    .local v0, "isTabletScreen":Z
    :goto_1
    sget-boolean v2, Lcom/android/incallui/InCallActivity;->isTabletUX:Z

    if-eq v0, v2, :cond_9

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1911
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v2, :cond_7

    .line 1912
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->onSMultiWindowOnChanged()V

    .line 1914
    :cond_7
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v2, :cond_8

    .line 1915
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->onSMultiWindowOnChanged()V

    .line 1917
    :cond_8
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1918
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    if-eqz v2, :cond_9

    .line 1919
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->onSMultiWindowOnChanged()V

    .line 1923
    :cond_9
    sput-boolean v0, Lcom/android/incallui/InCallActivity;->isTabletUX:Z

    goto/16 :goto_0

    .line 1909
    .end local v0    # "isTabletScreen":Z
    :cond_a
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onContinue(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1266
    const-string v2, "Smart IVR - Speaker switched on"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1267
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1268
    .local v1, "context":Landroid/content/Context;
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1269
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 1270
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 1271
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->toggleSpeakerphone()V

    .line 1272
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->confirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1273
    return-void
.end method

.method public onCoverStateChanged(Z)V
    .locals 5
    .param p1, "isClosed"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCoverStateChanged isClosed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3456
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3457
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->returnToNormalWindowMode()V

    .line 3459
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->setInCallViewsVisibility(Z)V

    .line 3460
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 3461
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 3462
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->updateStatusBarColor(I)V

    .line 3463
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    .line 3464
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    .line 3468
    :cond_1
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p1, :cond_2

    .line 3469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCoverStateChanged : isAutoAnswered - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3470
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3471
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3472
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_0
    invoke-interface {v3, v1}, Lcom/android/incallui/CallCardUi;->setAMView(Z)V

    .line 3487
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v1, v2

    .line 3472
    goto :goto_0

    .line 3473
    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-nez v3, :cond_2

    .line 3474
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 3475
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/CallCardUi;->clearAMView()V

    .line 3476
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/android/incallui/CallCardUi;->changeCallCardForAM(I)V

    .line 3477
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/incallui/CallCardUi;->showMenu(Z)V

    .line 3479
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3480
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/incallui/CallButtonUi;->setCallButtonContainerVisibility(Z)V

    .line 3482
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3483
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerUi;->showAnswerUi(Z)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 593
    const-string v9, "VerificationLog"

    const-string v10, "onCreate"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "perf - onCreate()...  this = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 596
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 598
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 599
    .local v0, "call":Lcom/android/incallui/Call;
    const-string v9, "support_outgoing_dialer_animation"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 600
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getOutgoingFromDialer(Lcom/android/incallui/Call;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 601
    const-string v9, "launching activity with fade in animation"

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 602
    const v9, 0x7f05000d

    const v10, 0x7f05000e

    invoke-virtual {p0, v9, v10}, Lcom/android/incallui/InCallActivity;->overridePendingTransition(II)V

    .line 605
    :cond_0
    const-string v9, "tablet_device"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "tablet_fullscreen_mode"

    .line 606
    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 607
    const-string v9, "TABLET_DEVICE , finish"

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 608
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->finish()V

    .line 611
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 612
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/android/incallui/bike/BikeModeController;->onCreate(Lcom/android/incallui/InCallActivity;)V

    .line 614
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 615
    .local v2, "decor":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 616
    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v9

    or-int/lit16 v9, v9, 0x400

    or-int/lit16 v9, v9, 0x200

    invoke-virtual {v2, v9}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 622
    :cond_3
    const v5, -0x7fd78000

    .line 628
    .local v5, "flags":I
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/Window;->addFlags(I)V

    .line 629
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 631
    if-eqz v0, :cond_4

    .line 632
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/incallui/InCallActivity;->updateStatusBarColor(I)V

    .line 633
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    .line 646
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "sem_statusbar"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/SemStatusBarManager;

    iput-object v9, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 647
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v9, :cond_5

    .line 648
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v9}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    .line 651
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 653
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v9, "samsung_screen_timeout_incall"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 654
    const-wide/16 v10, 0x7530

    invoke-virtual {v6, v10, v11}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    .line 655
    const-wide/16 v10, 0x4e20

    invoke-virtual {v6, v10, v11}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    .line 658
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 659
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getWindow().setAttributes(lp) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    const v9, 0x7f0400dc

    invoke-virtual {p0, v9}, Lcom/android/incallui/InCallActivity;->setContentView(I)V

    .line 667
    new-instance v9, Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-direct {v9, p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v9, p0, Lcom/android/incallui/InCallActivity;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    .line 668
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->checkForContentView()V

    .line 669
    const v9, 0x7f1001d4

    invoke-virtual {p0, v9}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/incallui/widget/GradientAnimationView;

    iput-object v9, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    .line 670
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v9}, Lcom/android/incallui/widget/GradientAnimationView;->setUp()V

    .line 671
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    .line 674
    const-string v9, "ims_rcs"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 675
    new-instance v9, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    invoke-direct {v9, p0}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;-><init>(Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;)V

    iput-object v9, p0, Lcom/android/incallui/InCallActivity;->mRcsBroadcastReceiver:Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    .line 676
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mRcsBroadcastReceiver:Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    invoke-virtual {v9, p0}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 677
    const-string v9, "mRcsBroadcastReceiver.register"

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 678
    const v9, 0x7f100299

    invoke-virtual {p0, v9}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    .line 679
    .local v8, "stub_invitation":Landroid/view/ViewStub;
    if-eqz v8, :cond_7

    .line 680
    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 681
    const v9, 0x7f1001a9

    invoke-virtual {p0, v9}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/incallui/secrcs/RcsInvitation;

    iput-object v9, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    .line 686
    .end local v8    # "stub_invitation":Landroid/view/ViewStub;
    :cond_7
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/incallui/InCallActivity;->mNeedToInitialize:Z

    .line 688
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/incallui/InCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    .line 690
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 691
    .local v1, "configuration":Landroid/content/res/Configuration;
    iget v9, v1, Landroid/content/res/Configuration;->orientation:I

    iput v9, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    .line 692
    iget v9, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_14

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    .line 693
    const-string v9, "support_mobile_keyboard"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 694
    iget v9, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v9, p0, Lcom/android/incallui/InCallActivity;->mCurrentMobileKeyboardCovered:I

    .line 697
    :cond_8
    if-eqz p1, :cond_c

    .line 702
    const-string v9, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 703
    const-string v9, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 704
    .local v7, "showDialpad":Z
    if-eqz v7, :cond_15

    const/4 v9, 0x2

    :goto_1
    iput v9, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    .line 705
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    .line 706
    iput-boolean v7, p0, Lcom/android/incallui/InCallActivity;->mNeedToRecoverDialpad:Z

    .line 708
    .end local v7    # "showDialpad":Z
    :cond_9
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    .line 709
    const-string v9, "InCallActivity.dialpad_text"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    .line 712
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const-string v10, "tag_select_acct_fragment"

    invoke-virtual {v9, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    .line 713
    .local v3, "dialogFragment":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    if-eqz v3, :cond_a

    .line 714
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mSelectAcctListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    invoke-virtual {v3, v9}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->setListener(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V

    .line 717
    :cond_a
    const-string v9, "visual_call_center_callerid_info"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "smart_ivr_callerid_info"

    .line 718
    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 719
    :cond_b
    const-string v9, "InCallActivity.has_outgoing_call"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/incallui/InCallActivity;->mHasOutgoingCall:Z

    .line 720
    const-string v9, "InCallActivity.has_ivr"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/incallui/InCallActivity;->mHasIVR:Z

    .line 730
    .end local v3    # "dialogFragment":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    :cond_c
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v9, :cond_e

    .line 731
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 732
    .local v4, "filter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isEcholocateEnabled()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 733
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 735
    :cond_d
    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 736
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v4}, Lcom/android/incallui/InCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 740
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_e
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mDtmfReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v9, :cond_f

    .line 741
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 742
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    const-string v9, "samsung.intent.action.knoxcustom.SEND_DTMF"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 743
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mDtmfReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v4}, Lcom/android/incallui/InCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 747
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_f
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mSystemUIIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v9, :cond_10

    .line 748
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 749
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    const-string v9, "com.samsung.systemui.statusbar.STARTED"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 750
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mSystemUIIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v4}, Lcom/android/incallui/InCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 753
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_10
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->setActivity(Lcom/android/incallui/InCallActivity;)V

    .line 754
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->addListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    .line 757
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Contact_SupportWhitePages"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 758
    invoke-static {p0}, Lcom/whitepages/nameid/NameIDHelper;->isNameIDInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 759
    invoke-static {p0}, Lcom/whitepages/nameid/NameIDHelper;->init(Landroid/content/Context;)V

    .line 767
    :cond_11
    const-string v9, "ims_capability_check_on_call_end"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 768
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/util/ImsCommonUtils;->connectCapabilityManager(Landroid/content/Context;)V

    .line 771
    :cond_12
    const-string v9, "ims_crane"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 772
    const-string v9, "queryForCrane called"

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 773
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->queryForCrane()V

    .line 775
    :cond_13
    const-string v9, "onCreate(): exit"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 776
    return-void

    .line 692
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 704
    .restart local v7    # "showDialpad":Z
    :cond_15
    const/4 v9, 0x3

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/16 v5, 0xa0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy()...  this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1313
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onDestroy()V

    .line 1315
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1316
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/bike/BikeModeController;->onDestroy(Lcom/android/incallui/InCallActivity;)V

    .line 1318
    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityDestroyed(Lcom/android/incallui/InCallActivity;)V

    .line 1319
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->unsetActivity(Lcom/android/incallui/InCallActivity;)V

    .line 1320
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updateIsChangingConfigurations()V

    .line 1322
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1323
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->unlock()V

    .line 1326
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1327
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1328
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasOutgoingCall()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1329
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->handleShowGreenBarMessage()V

    .line 1332
    :cond_3
    const-string v0, "support_tphone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1333
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1334
    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->showGreenBar(Z)V

    .line 1337
    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1338
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1339
    const-string v0, "!CallList.getInstance().hasLiveCall()"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1340
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRcsBroadcastReceiver:Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 1341
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->disconnect(Landroid/content/Context;)V

    .line 1343
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->setExcludeFromRecents(Z)V

    .line 1346
    :cond_6
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->OVERLAY_POPUP_PLAY:Z

    if-eqz v0, :cond_7

    .line 1347
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hideVideoPopup()V

    .line 1350
    :cond_7
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->destroyInCall()V

    .line 1352
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1353
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->resetAutoAnsTimer()V

    .line 1356
    :cond_8
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_9

    .line 1358
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1361
    :goto_0
    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    .line 1362
    const-string v0, " unregisterReceiver - - mScreenOffReceiver"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1365
    :cond_9
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_a

    .line 1366
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1370
    :cond_a
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDtmfReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_b

    .line 1371
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDtmfReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1375
    :cond_b
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSystemUIIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_c

    .line 1376
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSystemUIIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1379
    :cond_c
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    if-eqz v0, :cond_d

    .line 1380
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->tearDown()V

    .line 1383
    :cond_d
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_e

    .line 1384
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->tearDown()V

    .line 1385
    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    .line 1387
    :cond_e
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_f

    .line 1388
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->tearDown()V

    .line 1389
    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    .line 1392
    :cond_f
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->setActivity(Lcom/android/incallui/InCallActivity;)V

    .line 1393
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->removeListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    .line 1395
    const-string v0, "visual_call_center_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1396
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDeviceOnWiFi()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "visual_call_status"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_10

    .line 1397
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/incallui/InCallActivity$12;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$12;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1410
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1412
    :cond_10
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {v3}, Lcom/android/incallui/util/VisualCallCenter;->VCC_setDisplayDailpad(Z)V

    .line 1415
    :cond_11
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_12

    .line 1416
    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/PrivatePolicy;->clearForActivityOnDestroy()V

    .line 1419
    :cond_12
    const-string v0, "ims_capability_check_on_call_end"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1420
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->disconnectCapabilityManager()V

    .line 1422
    :cond_13
    return-void

    .line 1359
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onFragmentAttached(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 1867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFragmentAttached "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1868
    return-void
.end method

.method public onHmtStateChanged(Z)V
    .locals 0
    .param p1, "isDocked"    # Z

    .prologue
    .line 3495
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 1714
    sparse-switch p1, :sswitch_data_0

    .line 1780
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/InCallActivity;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1784
    :cond_1
    :goto_0
    return v4

    .line 1716
    :sswitch_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1717
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/incallui/bike/BikeModeController;->onKeyDownConsumed(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1723
    :sswitch_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->handleCallKey()Z

    move-result v1

    .line 1724
    .local v1, "handled":Z
    if-nez v1, :cond_1

    .line 1725
    const-string v3, "InCallActivity should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1738
    .end local v1    # "handled":Z
    :sswitch_2
    const-string v3, "support_folder_single_lcd"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1739
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getInVideoCallMenu()Lcom/android/incallui/InVideoCallMenu;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1740
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getInVideoCallMenu()Lcom/android/incallui/InVideoCallMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InVideoCallMenu;->clickedCaptureImage()V

    goto :goto_0

    .line 1752
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 1753
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/incallui/CallCardUi;->onVolumeKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1761
    :sswitch_4
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1766
    :sswitch_5
    sget-boolean v3, Lcom/android/incallui/Log;->VERBOSE:Z

    if-eqz v3, :cond_0

    .line 1767
    const-string v3, "----------- InCallActivity View dump --------------"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1769
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1770
    .local v2, "w":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1771
    .local v0, "decorView":Landroid/view/View;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View dump:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1784
    .end local v0    # "decorView":Landroid/view/View;
    .end local v2    # "w":Landroid/view/Window;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 1714
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_2
        0x4c -> :sswitch_5
        0x5b -> :sswitch_4
        0xa4 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1673
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/incallui/DialpadUi;->onDialerKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1709
    :cond_0
    :goto_0
    return v1

    .line 1675
    :cond_1
    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    .line 1676
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1677
    .local v0, "call":Lcom/android/incallui/Call;
    const-string v2, "support_folder_hardkey"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isFolerClosed()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 1678
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 1679
    const-string v2, "onKeyUp KEYCODE_CALL"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1680
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->voiceCallClicked()V

    goto :goto_0

    .line 1683
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_2
    const/16 v2, 0x52

    if-ne p1, v2, :cond_5

    .line 1684
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/CallCardUi;->isMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1685
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v2}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v2}, Lcom/android/incallui/InCallMenu;->getUniqueMenuItem()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1686
    const-string v2, "KEYCODE_MENU showInCallMenu"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1688
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isCSVideoCall()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1689
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isPrimaryVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1690
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->showInCallMenu()V

    goto :goto_0

    .line 1692
    :cond_3
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->toggleVideoButtonContainer()V

    .line 1693
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/incallui/InCallActivity$13;

    invoke-direct {v3, p0}, Lcom/android/incallui/InCallActivity$13;-><init>(Lcom/android/incallui/InCallActivity;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1701
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->showInCallMenu()V

    goto/16 :goto_0

    .line 1709
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onMenuItemClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3093
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3094
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 5
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    const/16 v4, 0xa6

    const/4 v3, 0x1

    .line 782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMultiWindowModeChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 784
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onMultiWindowModeChanged(Z)V

    .line 785
    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->updateScreenType(Z)V

    .line 787
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mNeedToInitialize:Z

    if-eqz v1, :cond_4

    .line 788
    const-string v1, "onModeChanged: initializeInCall()..."

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 789
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 790
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 829
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 830
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    if-eqz v1, :cond_f

    .line 831
    if-nez p1, :cond_1

    .line 833
    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    .line 837
    const-string v1, "onModeChanged - unregisterReceiver  - mScreenOffReceiver"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 850
    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 851
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->resetFullScreenMode()V

    .line 854
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->updateDialpadIndicatorArea()V

    .line 855
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->updateIndicatorArea()V

    .line 856
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 857
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getCoverViewManager()Lcom/android/incallui/accessory/CoverViewManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 858
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getCoverViewManager()Lcom/android/incallui/accessory/CoverViewManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/accessory/CoverViewManager;->onCoverStateChanged(Z)V

    .line 860
    :cond_3
    return-void

    .line 791
    :cond_4
    const-string v1, "support_onehand_operation"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isOnehandModeOn()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 792
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v1, :cond_5

    .line 793
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->onSMultiWindowOnChanged()V

    .line 794
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v1, :cond_6

    .line 795
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->onSMultiWindowOnChanged()V

    .line 796
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-eqz v1, :cond_7

    .line 797
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->onSMultiWindowOnChanged()V

    .line 798
    :cond_7
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v1, :cond_0

    .line 799
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 800
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->onSMultiWindowOnChanged()V

    goto/16 :goto_0

    .line 802
    :cond_8
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 803
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v1, :cond_9

    .line 804
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->onSMultiWindowOnChanged()V

    .line 806
    :cond_9
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v1, :cond_a

    .line 807
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->onSMultiWindowOnChanged()V

    .line 809
    :cond_a
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v1, :cond_0

    .line 810
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->onSMultiWindowOnChanged()V

    goto/16 :goto_0

    .line 812
    :cond_b
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 813
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 814
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    if-eqz v1, :cond_c

    .line 815
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->onSMultiWindowOnChanged()V

    .line 817
    :cond_c
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v1, :cond_d

    .line 818
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->onSMultiWindowOnChanged()V

    .line 820
    :cond_d
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v1, :cond_0

    .line 821
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->onSMultiWindowOnChanged()V

    goto/16 :goto_0

    .line 824
    :cond_e
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v1, :cond_0

    .line 825
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->onSMultiWindowOnChanged()V

    goto/16 :goto_0

    .line 840
    :cond_f
    if-eqz p1, :cond_1

    .line 841
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 842
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 843
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 844
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 845
    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    .line 846
    const-string v1, "onModeChanged -  registerReceiver - mScreenOffReceiver "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 834
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 1560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent: intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1570
    const-string v2, "ims_rcs"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1571
    const-string v2, "EXTRA_INTENT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1572
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "onNewIntent()->startActivity()"

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1573
    if-eqz v1, :cond_0

    .line 1575
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1589
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1576
    .restart local v1    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1577
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1582
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallActivity;->setIntent(Landroid/content/Intent;)V

    .line 1588
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1661
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1662
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1663
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 1664
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->onBackPressed()V

    .line 1665
    const/4 v1, 0x1

    .line 1667
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v1, p1}, Lcom/android/incallui/InCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 12

    .prologue
    const/16 v11, 0xa7

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1157
    const-string v5, "onPause()..."

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1158
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onPause()V

    .line 1160
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-static {v5, v9, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1161
    .local v0, "call":Lcom/android/incallui/Call;
    iput-boolean v8, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    .line 1162
    iput-boolean v8, p0, Lcom/android/incallui/InCallActivity;->mIsNewOutgoingCall:Z

    .line 1163
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1164
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v5

    const/4 v6, -0x1

    invoke-interface {v5, v6, v9}, Lcom/android/incallui/DialpadUi;->onDialerKeyUp(ILandroid/view/KeyEvent;)Z

    .line 1167
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    .line 1168
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityPaused(Lcom/android/incallui/InCallActivity;)V

    .line 1169
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1170
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/incallui/InCallPresenter;->unsetActivity(Lcom/android/incallui/InCallActivity;)V

    .line 1171
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityDestroyed(Lcom/android/incallui/InCallActivity;)V

    .line 1174
    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/incallui/InCallActivity;->updateAppSwitchSystemKeyEvent(Z)V

    .line 1175
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1176
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/incallui/bike/BikeModeController;->onPause(Lcom/android/incallui/InCallActivity;)V

    .line 1177
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/incallui/InCallActivity;->setStatusBar(Z)V

    .line 1178
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v7}, Lcom/android/incallui/InCallActivity;->showGreenBar(Z)V

    .line 1179
    :cond_3
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1185
    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isKidsModeCallApp()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1186
    invoke-virtual {p0, v10, v8}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    .line 1187
    const-string v5, "Enable home key"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1190
    :cond_5
    const-string v5, "true"

    const-string v6, "ril.domesticOtaStart"

    invoke-static {v6}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1191
    const-string v5, "domesticOtaStart - Enable home key"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p0, v10, v8}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    .line 1196
    :cond_6
    const-string v5, "ims_rcs"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1197
    const-string v5, "RcsShareUI.unregisterRcsObservers"

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1198
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/incallui/secrcs/RcsShareUI;->unregisterRcsObserver(I)V

    .line 1200
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.PHONE_INACTIVE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1201
    .local v2, "i":Landroid/content/Intent;
    const-string v5, "com.samsung.rcs.framework.mediatransfer.contentshare.notification"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1202
    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1206
    .end local v2    # "i":Landroid/content/Intent;
    :cond_7
    const-string v5, "smart_ivr_callerid_info"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1207
    const-string v5, "Achintya : in onPause before if statement "

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Achintya : before if : VoiceCallButtonVCCFragment.wasIvrCall =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->wasIvrCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " call object : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Achintya : before if : VoiceCallButtonVCCFragment.wasIvrCall =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->wasIvrCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " call object : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1210
    sget-boolean v5, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->wasIvrCall:Z

    if-eqz v5, :cond_b

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_b

    .line 1211
    :cond_8
    sput-boolean v7, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->SMART_IVR_first:Z

    .line 1212
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 1213
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/util/VisualCallCenter;->VCC_deleteShortCutsFromInCallUI()V

    .line 1215
    :cond_9
    sget-object v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->publicCallPath:Ljava/lang/String;

    .line 1216
    .local v4, "path":Ljava/lang/String;
    if-eqz v4, :cond_a

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/incallui/util/VisualCallCenter;->VCC_isShortcutPath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Achintya : in onPause path fetched is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Achintya : in onPause getting inCallApp Context: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1219
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    .line 1220
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/incallui/SmartIVRDialogActivity;

    invoke-direct {v3, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1221
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "shortcut_path"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1222
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1223
    sput-boolean v8, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->wasIvrCall:Z

    .line 1224
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1226
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_a
    sput-object v9, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->publicCallPath:Ljava/lang/String;

    .line 1231
    .end local v4    # "path":Ljava/lang/String;
    :cond_b
    iget-object v5, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v5}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 1232
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    .line 1234
    :cond_c
    const-string v5, "lock_screen_during_call"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1235
    iget-object v5, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1236
    iget-object v5, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1238
    :cond_d
    const-string v5, "stopService LockScreenDuringCall..."

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1239
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/incallui/service/LockScreenDuringCall;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5}, Lcom/android/incallui/InCallActivity;->stopService(Landroid/content/Intent;)Z

    .line 1242
    :cond_e
    const-string v5, "onPause(): exit"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1243
    return-void

    .line 1182
    :cond_f
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 14

    .prologue
    .line 960
    const-string v10, "VerificationLog"

    const-string v11, "onResume"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const-string v10, "perf - onResume()..."

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 962
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onResume()V

    .line 964
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->awaken()V

    .line 966
    const-string v10, "ims_support_multimedia_caller_id"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isMcidDownloadble()Z

    move-result v10

    if-nez v10, :cond_0

    .line 967
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x2000

    invoke-virtual {v10, v11}, Landroid/view/Window;->addFlags(I)V

    .line 968
    const-string v10, "SecInCallActiviy onResume - FLAG_SECURE : on"

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 971
    :cond_0
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    .line 972
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/incallui/InCallActivity;->updateScreenType(Z)V

    .line 973
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 974
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/incallui/InCallPresenter;->onCoverStateChanged(Z)V

    .line 979
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    .line 980
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityResumed(Lcom/android/incallui/InCallActivity;)V

    .line 982
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/InCallPresenter;->clearFullscreen()V

    .line 983
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 984
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 985
    :cond_2
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_15

    const/4 v10, 0x1

    :goto_0
    invoke-static {p0, v10}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    .line 988
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->checkAndUpdateDeivceOrientation()V

    .line 990
    sget-boolean v10, Lcom/android/incallui/service/vt/VideoCallConfig;->OVERLAY_POPUP_PLAY:Z

    if-eqz v10, :cond_4

    .line 991
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hideVideoPopup()V

    .line 993
    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hideCallPopup()V

    .line 995
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateKeepScreenOnFlag()V

    .line 997
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/incallui/InCallActivity;->showGreenBar(Z)V

    .line 999
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v10

    if-eqz v10, :cond_16

    const/4 v5, 0x1

    .line 1003
    .local v5, "hasIncomingCall":Z
    :goto_1
    iget-boolean v10, p0, Lcom/android/incallui/InCallActivity;->mNeedToInitialize:Z

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xa6

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1004
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateGradientColor()V

    .line 1005
    if-eqz v5, :cond_17

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isScreenOn()Z

    move-result v10

    if-nez v10, :cond_17

    .line 1014
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    .line 1016
    if-eqz v5, :cond_19

    .line 1017
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xa1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1018
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xa1

    const-wide/16 v12, 0x1f4

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1022
    :cond_6
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xa4

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1023
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xa4

    const-wide/16 v12, 0x7d0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1028
    :cond_7
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/incallui/InCallActivity;->updateAppSwitchSystemKeyEvent(Z)V

    .line 1029
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/incallui/InCallActivity;->setStatusBar(Z)V

    .line 1035
    :goto_3
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1041
    :cond_8
    :goto_4
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isKidsModeCallApp()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1042
    const/4 v10, 0x3

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    .line 1043
    const-string v10, "Disable home key"

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1046
    :cond_9
    const-string v10, "true"

    const-string v11, "ril.domesticOtaStart"

    invoke-static {v11}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1047
    const-string v10, "domesticOtaStart - Disable home key"

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1048
    const/4 v10, 0x3

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    .line 1052
    :cond_a
    iget v10, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_c

    .line 1053
    iget v10, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1d

    .line 1056
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/incallui/InCallPresenter;->setFullScreen(ZZ)V

    .line 1058
    const/4 v10, 0x1

    iget-boolean v11, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    .line 1059
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    .line 1061
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 1062
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v10

    iget-object v11, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    invoke-interface {v10, v11}, Lcom/android/incallui/DialpadUi;->setDtmfText(Ljava/lang/String;)V

    .line 1070
    :cond_b
    :goto_5
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    .line 1074
    :cond_c
    const-string v10, "ims_rcs"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1075
    const-string v10, "RcsShareUI.registerRcsObservers"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1076
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, p0, v11}, Lcom/android/incallui/secrcs/RcsShareUI;->registerRcsObserver(Landroid/content/Context;I)V

    .line 1078
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 1079
    .local v9, "window":Landroid/view/Window;
    if-eqz v9, :cond_d

    .line 1080
    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    new-instance v11, Lcom/android/incallui/InCallActivity$11;

    invoke-direct {v11, p0}, Lcom/android/incallui/InCallActivity$11;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1087
    :cond_d
    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.PHONE_ACTIVE"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1088
    .local v6, "i":Landroid/content/Intent;
    const-string v10, "com.samsung.rcs.framework.mediatransfer.contentshare.notification"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1089
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v10}, Lcom/android/incallui/InCallActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1091
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    .line 1092
    .local v7, "mCallList":Lcom/android/incallui/CallList;
    invoke-virtual {v7}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v4

    .line 1093
    .local v4, "hasActiveCall":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " hasActiveCall "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1094
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " hasIncomingCall "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1096
    if-nez v5, :cond_e

    if-eqz v4, :cond_e

    .line 1097
    const-string v10, " RcsShareUI resumeShare called"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1098
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/incallui/secrcs/RcsShareUI;->resumeShare(Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 1103
    .end local v4    # "hasActiveCall":Z
    .end local v6    # "i":Landroid/content/Intent;
    .end local v7    # "mCallList":Lcom/android/incallui/CallList;
    .end local v9    # "window":Landroid/view/Window;
    :cond_e
    iget-boolean v10, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogOnResume:Z

    if-eqz v10, :cond_f

    .line 1104
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogCallId:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogChars:Ljava/lang/String;

    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/InCallActivity;->showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    :cond_f
    const-string v10, "vzw_volte_ui"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1108
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtyNotification()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1109
    const-string v10, "display tty notification!"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1110
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/incallui/InCallActivity;->onTtyNotification(Z)V

    .line 1113
    :cond_10
    const-string v10, "lock_screen_during_call"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1114
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->sendLockScreenEvent()V

    .line 1117
    :cond_11
    const-string v10, "support_tphone"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1118
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1119
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->returnToNormalWindowMode()V

    .line 1122
    :cond_12
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v10, :cond_13

    .line 1123
    iget-boolean v10, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    if-eqz v10, :cond_1e

    .line 1124
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v10

    if-nez v10, :cond_13

    .line 1126
    :try_start_0
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10}, Lcom/android/incallui/InCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    :goto_6
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    .line 1130
    const-string v10, " unregisterReceiver - mScreenOffReceiver "

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1144
    :cond_13
    :goto_7
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 1145
    .local v1, "config":Landroid/content/res/Configuration;
    if-eqz v1, :cond_14

    .line 1146
    iget v10, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sget v11, Lcom/android/incallui/InCallActivity;->TABLET_SMALL_WIDTH_VALUE:I

    if-lt v10, v11, :cond_1f

    const/4 v10, 0x1

    :goto_8
    sput-boolean v10, Lcom/android/incallui/InCallActivity;->isTabletUX:Z

    .line 1149
    :cond_14
    const-string v10, "VerificationLog"

    const-string v11, "Executed"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const-string v10, "perf - onResume(): done"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1151
    return-void

    .line 985
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v5    # "hasIncomingCall":Z
    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 999
    :cond_16
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1008
    .restart local v5    # "hasIncomingCall":Z
    :cond_17
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v8

    .line 1009
    .local v8, "needToInitializeImmediately":Z
    if-eqz v8, :cond_18

    const/4 v2, 0x0

    .line 1010
    .local v2, "delay":I
    :goto_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "perf - onResume: initializeInCall will be called after "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1011
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xa6

    int-to-long v12, v2

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 1009
    .end local v2    # "delay":I
    :cond_18
    const/16 v2, 0x3e8

    goto :goto_9

    .line 1030
    .end local v8    # "needToInitializeImmediately":Z
    :cond_19
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isLostPhoneLock()Z

    move-result v10

    if-nez v10, :cond_1a

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOtaMode()Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 1031
    :cond_1a
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/incallui/InCallActivity;->setStatusBar(Z)V

    goto/16 :goto_3

    .line 1033
    :cond_1b
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/incallui/InCallActivity;->setStatusBar(Z)V

    goto/16 :goto_3

    .line 1038
    :cond_1c
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    goto/16 :goto_4

    .line 1065
    :cond_1d
    const-string v10, "onResume : force hide dialpad"

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 1067
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    goto/16 :goto_5

    .line 1133
    :cond_1e
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1134
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1135
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1136
    const/16 v10, 0x3e7

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1137
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10, v3}, Lcom/android/incallui/InCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1138
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    .line 1139
    const-string v10, "- registerReceiver - mScreenOffReceiver"

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1146
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v1    # "config":Landroid/content/res/Configuration;
    :cond_1f
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 1127
    .end local v1    # "config":Landroid/content/res/Configuration;
    :catch_0
    move-exception v10

    goto/16 :goto_6
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 920
    const-string v0, "InCallActivity.show_dialpad"

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/CallButtonUi;->isDialpadVisible()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 922
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 923
    const-string v0, "InCallActivity.dialpad_text"

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/DialpadUi;->getDtmfText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v0, :cond_3

    const-string v0, "visual_call_center_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "smart_ivr_callerid_info"

    .line 927
    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 928
    :cond_2
    const-string v0, "InCallActivity.has_outgoing_call"

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    iget-boolean v1, v1, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsOutGoingCall:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 929
    const-string v0, "InCallActivity.has_ivr"

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    iget-boolean v1, v1, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsHasIVR:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 932
    :cond_3
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 933
    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0
    .param p1, "isStarted"    # Z

    .prologue
    .line 3491
    return-void
.end method

.method public onSpeakerOff(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1260
    const-string v0, "Smart IVR - Speaker not switched on"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1261
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->confirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1262
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 937
    const-string v2, "onStart()..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 938
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onStart()V

    .line 940
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->checkAndStartAnswerMemo()V

    .line 941
    const-string v2, "ims_rcs"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 942
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.intent.action.RESUME_SHARING_SERVICE_DIALOG"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 943
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 944
    .local v0, "activecall":Lcom/android/incallui/Call;
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 945
    const-string v2, "Showing invitation dialog..."

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 946
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/incallui/secrcs/RcsInvitation;->updateState(Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 950
    .end local v0    # "activecall":Lcom/android/incallui/Call;
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/InCallPresenter;->setActivity(Lcom/android/incallui/InCallActivity;)V

    .line 951
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getRequestedOrientation()I

    move-result v2

    sget v3, Lcom/android/incallui/InCallOrientationEventListener;->FULL_SENSOR_SCREEN_ORIENTATION:I

    if-ne v2, v3, :cond_1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->enableInCallOrientationEventListener(Z)V

    .line 954
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->onActivityStarted()V

    .line 955
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityStarted(Lcom/android/incallui/InCallActivity;)V

    .line 956
    return-void

    .line 951
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1278
    const-string v1, "onStop()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1279
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onStop()V

    .line 1281
    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->enableInCallOrientationEventListener(Z)V

    .line 1282
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->updateIsChangingConfigurations()V

    .line 1283
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->onActivityStopped()V

    .line 1284
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityStopped(Lcom/android/incallui/InCallActivity;)V

    .line 1288
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->OVERLAY_POPUP_PLAY:Z

    if-eqz v1, :cond_0

    .line 1289
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->launchVideoPopup(I)V

    .line 1292
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1293
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/CallCardUi;->resetRevealAnimator()V

    .line 1295
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->showGreenBar(Z)V

    .line 1296
    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->setStatusBar(Z)V

    .line 1297
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mFNDBlockedDialog:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 1298
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1299
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->onDialogDismissed()V

    .line 1301
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    .line 1302
    .local v0, "proximitySensor":Lcom/android/incallui/ProximitySensor;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/ProximitySensor;->isScreenReallyOff()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v1, :cond_3

    .line 1304
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v1}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    .line 1307
    :cond_3
    const-string v1, "onStop(): exit"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1308
    return-void
.end method

.method public onTtyNotification(Z)V
    .locals 4
    .param p1, "isIncoming"    # Z

    .prologue
    const/4 v3, 0x1

    .line 3557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTtyNotification : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3558
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3559
    const-string v0, "onTtyNotification return "

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3583
    :goto_0
    return-void

    .line 3563
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0905a4

    .line 3564
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902db

    .line 3565
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/incallui/InCallActivity$21;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$21;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 3566
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/InCallActivity$20;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/InCallActivity$20;-><init>(Lcom/android/incallui/InCallActivity;Z)V

    .line 3570
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3578
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    .line 3579
    const-string v0, "onTtyNotification show "

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3581
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3582
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/InCallUISystemDB;->setTtyNotification(I)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7
    .param p1, "hasFocus"    # Z

    .prologue
    const/16 v6, 0xa6

    const/4 v5, 0x1

    .line 1426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perf - onWindowFocusChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1427
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mHasWindowFocus:Z

    .line 1429
    if-eqz p1, :cond_2

    .line 1431
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1433
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hideCallPopup()V

    .line 1434
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1437
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/incallui/CallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    .line 1440
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1441
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/DialpadUi;->showSoftInput()V

    .line 1443
    :cond_1
    const-string v2, "lock_screen_during_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1444
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->sendLockScreenEvent()V

    .line 1447
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_2
    const-string v2, "block_data_during_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1448
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1449
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/incallui/TelecomAdapter;->setCallProtectionValue(Z)V

    .line 1450
    const-string v2, "onWindowFocusChanged: setCallProtectionValue()..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1454
    :cond_3
    iget-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mHasWindowFocus:Z

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCarModeOn()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1455
    invoke-direct {p0, v5}, Lcom/android/incallui/InCallActivity;->showGreenBar(Z)V

    .line 1458
    :cond_4
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/incallui/TelecomAdapter;->notifyInCallUIWindowFocus(Z)V

    .line 1460
    if-eqz p1, :cond_5

    .line 1463
    iget-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mNeedToInitialize:Z

    if-eqz v2, :cond_5

    .line 1464
    const-string v2, "perf - onWindowFocusChanged: initializeInCall()..."

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1465
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1466
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateGradientColor()V

    .line 1467
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    .line 1469
    const/4 v1, 0x0

    .line 1479
    .local v1, "initializeImmediately":Z
    if-eqz v1, :cond_6

    .line 1480
    const-string v2, "initialize immediately"

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1481
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->initializeInCall()V

    .line 1488
    .end local v1    # "initializeImmediately":Z
    :cond_5
    :goto_0
    const-string v2, "perf - onWindowFocusChanged: done"

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1489
    return-void

    .line 1483
    .restart local v1    # "initializeImmediately":Z
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public postAccessibilityEventForUpdateScreen()V
    .locals 3

    .prologue
    .line 3709
    const-string v2, "postAccessibilityEventForUpdateScreen"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3711
    const-string v2, "accessibility"

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 3712
    .local v1, "manager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3713
    const/16 v2, 0x800

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3714
    .local v0, "e":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3715
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 3716
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3717
    const-string v2, "sent TYPE_WINDOW_CONTENT_CHANGED"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3719
    .end local v0    # "e":Landroid/view/accessibility/AccessibilityEvent;
    :cond_1
    return-void
.end method

.method public registerContentViewListener()V
    .locals 5

    .prologue
    .line 4265
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 4266
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 4267
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4268
    .local v1, "contentView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mContentViewListener:Lcom/android/incallui/service/vt/ContentViewListener;

    if-nez v2, :cond_1

    .line 4269
    new-instance v2, Lcom/android/incallui/InCallActivity$32;

    invoke-direct {v2, p0, v1}, Lcom/android/incallui/InCallActivity$32;-><init>(Lcom/android/incallui/InCallActivity;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mContentViewListener:Lcom/android/incallui/service/vt/ContentViewListener;

    .line 4279
    .end local v1    # "contentView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 4276
    .restart local v1    # "contentView":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mContentViewListener:Lcom/android/incallui/service/vt/ContentViewListener;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/ContentViewListener;->registerListener()V

    goto :goto_0
.end method

.method public requestSystemKeyEvent(IZ)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "request"    # Z

    .prologue
    .line 3098
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    .line 3099
    .local v0, "semWindowManager":Lcom/samsung/android/view/SemWindowManager;
    if-eqz v0, :cond_0

    .line 3100
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/view/SemWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v1

    .line 3102
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method resetAutoAnsTimer()V
    .locals 1

    .prologue
    .line 3831
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAutoAnsTimer:Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    if-eqz v0, :cond_0

    .line 3832
    const-string v0, "resetAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3833
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAutoAnsTimer:Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity$AutoAnsTimer;->cancel()V

    .line 3834
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAutoAnsTimer:Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    .line 3836
    :cond_0
    return-void
.end method

.method public returnToNormalWindowMode()V
    .locals 3

    .prologue
    .line 3532
    const-string v1, "returnToNormalWindowMode"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3534
    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->semExitMultiWindowMode()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 3539
    :goto_0
    return-void

    .line 3535
    :catch_0
    move-exception v0

    .line 3537
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method public sendLockScreenEvent()V
    .locals 1

    .prologue
    .line 3498
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->sendLockScreenEvent(Z)V

    .line 3499
    return-void
.end method

.method public sendLockScreenEvent(Z)V
    .locals 5
    .param p1, "now"    # Z

    .prologue
    const/16 v4, 0xa7

    .line 3502
    const-string v0, "lock_screen_during_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3503
    const-string v0, "sendLockScreenEvent"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3504
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3505
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3507
    :cond_0
    if-eqz p1, :cond_2

    .line 3508
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->startLockScreenDuringCallService()V

    .line 3513
    :cond_1
    :goto_0
    return-void

    .line 3510
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public setAnimateDialpadOnShow(Z)V
    .locals 0
    .param p1, "mAnimateDialpadOnShow"    # Z

    .prologue
    .line 3734
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    .line 3735
    return-void
.end method

.method public setCallElapsedTime(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 3958
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 3959
    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mLastestCallTime:Ljava/lang/String;

    .line 3963
    :goto_0
    return-void

    .line 3961
    :cond_0
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mLastestCallTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDispatchTouchEventListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "mDispatchTouchEventListener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 4038
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mDispatchTouchEventListener:Landroid/view/View$OnTouchListener;

    .line 4039
    return-void
.end method

.method public setExcludeFromRecents(Z)V
    .locals 9
    .param p1, "exclude"    # Z

    .prologue
    .line 3970
    const-string v6, "InCallActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setExcludeFromRecents : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3971
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3972
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v5

    .line 3973
    .local v5, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getTaskId()I

    move-result v4

    .line 3974
    .local v4, "taskId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 3975
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$AppTask;

    .line 3977
    .local v3, "task":Landroid/app/ActivityManager$AppTask;
    :try_start_0
    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v6

    iget v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne v6, v4, :cond_0

    .line 3978
    invoke-virtual {v3, p1}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3974
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3980
    :catch_0
    move-exception v1

    .line 3981
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "InCallActivity"

    const-string v7, "IllegalArgumentException when excluding task from recents."

    invoke-static {v6, v7, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 3982
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 3983
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v6, "InCallActivity"

    const-string v7, "RuntimeException when excluding task from recents."

    invoke-static {v6, v7, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 3986
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "task":Landroid/app/ActivityManager$AppTask;
    :cond_1
    return-void
.end method

.method public setInCallMenuInstance(Lcom/android/incallui/InCallMenu;)V
    .locals 0
    .param p1, "incallmenu"    # Lcom/android/incallui/InCallMenu;

    .prologue
    .line 3076
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    .line 3077
    return-void
.end method

.method public setNeedToAnimateForNewOutgoingCall(Z)V
    .locals 0
    .param p1, "isNewOutgoingCall"    # Z

    .prologue
    .line 3143
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mIsNewOutgoingCall:Z

    .line 3144
    return-void
.end method

.method public setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 2676
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2677
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/DialpadUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    .line 2679
    :cond_0
    return-void
.end method

.method public setPrimaryCallMenuForDialpad(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 2682
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2683
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/DialpadUi;->setPrimaryCallMenuForDialpad(Z)V

    .line 2685
    :cond_0
    return-void
.end method

.method public setShowDialpadRequested(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 3726
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    .line 3727
    return-void

    .line 3726
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public setStatusBar(Z)V
    .locals 2
    .param p1, "onStatus"    # Z

    .prologue
    .line 3250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatusBar = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3251
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-nez v0, :cond_0

    .line 3252
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sem_statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 3254
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3255
    const/4 p1, 0x1

    .line 3257
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v0, :cond_2

    .line 3258
    if-eqz p1, :cond_4

    .line 3259
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/SemStatusBarManager;->disable(I)V

    .line 3265
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3266
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/incallui/bike/BikeModeController;->setStatusBar(Lcom/android/incallui/InCallActivity;Landroid/app/SemStatusBarManager;Z)V

    .line 3267
    :cond_3
    return-void

    .line 3261
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/SemStatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method public setUpRcsCallCard(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1789
    const-string v0, "setUpRcsCallCard"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1790
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->setupRcsCallCard(Landroid/content/Context;Lcom/android/incallui/secrcs/RcsInvitation;Lcom/android/incallui/Call;)V

    .line 1791
    return-void
.end method

.method public setupInCallMenu(ILandroid/view/View;)V
    .locals 3
    .param p1, "menuRes"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 3080
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- setupInCallMenu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3081
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0b011f

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 3082
    .local v0, "contextWrapper":Landroid/view/ContextThemeWrapper;
    new-instance v1, Lcom/android/incallui/InCallActivity$InCallActivityMenu;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/incallui/InCallActivity$InCallActivityMenu;-><init>(Lcom/android/incallui/InCallActivity;Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    .line 3084
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    .line 3085
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 3086
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 3088
    :cond_0
    return-void
.end method

.method public showCallCardFragment(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 4023
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4024
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->setVisible(Z)V

    .line 4026
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4027
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4028
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->setVisible(Z)V

    .line 4031
    :cond_1
    return-void
.end method

.method public showConferenceCallManager()V
    .locals 1

    .prologue
    .line 2688
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->showConferenceCallManager(Z)V

    .line 2689
    return-void
.end method

.method public showConferenceCallManager(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2693
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->setVisible(Z)V

    .line 2696
    :cond_0
    const-string v0, "support_folder_hardkey"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2697
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/incallui/CallButtonUi;->setFocusInCallButton(Z)V

    .line 2699
    :cond_1
    return-void

    .line 2697
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDataChargeAlertDialog()V
    .locals 7

    .prologue
    .line 3917
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "videoAlertShowNeverAgainIncomingCall"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3918
    .local v3, "showNeverAgain":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " showIncomingDataChargeAlert showNeverAgain = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3919
    if-eqz v3, :cond_0

    .line 3947
    :goto_0
    return-void

    .line 3922
    :cond_0
    const v4, 0x7f04003e

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3923
    .local v1, "contents":Landroid/view/View;
    const v4, 0x7f1000e3

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3924
    .local v2, "mDialogCheckbox":Landroid/view/View;
    new-instance v4, Lcom/android/incallui/InCallActivity$26;

    invoke-direct {v4, p0, v2}, Lcom/android/incallui/InCallActivity$26;-><init>(Lcom/android/incallui/InCallActivity;Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3930
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3931
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3932
    const v4, 0x7f090311

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090046

    new-instance v6, Lcom/android/incallui/InCallActivity$28;

    invoke-direct {v6, p0}, Lcom/android/incallui/InCallActivity$28;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 3933
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/incallui/InCallActivity$27;

    invoke-direct {v5, p0}, Lcom/android/incallui/InCallActivity$27;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 3938
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 3945
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 3946
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public showDataChargeAlertToast()V
    .locals 2

    .prologue
    .line 3680
    const v0, 0x7f0902e1

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3681
    return-void
.end method

.method public showDataUsageLimitDialog(I)V
    .locals 3
    .param p1, "msgId"    # I

    .prologue
    .line 3612
    const-string v0, "showDataUsageLimitDialog"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3613
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3614
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3615
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    .line 3618
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f0b0010

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3619
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900e5

    new-instance v2, Lcom/android/incallui/InCallActivity$23;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$23;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 3620
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900e6

    new-instance v2, Lcom/android/incallui/InCallActivity$22;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$22;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 3631
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3637
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    .line 3639
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 3640
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3641
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 3642
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3643
    return-void
.end method

.method public showDataUsageLimitDialogforTMO()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3653
    const-string v0, "showDataUsageLimitDialogforTMO"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3654
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3655
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    .line 3659
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f0b0010

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900e9

    .line 3660
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090046

    new-instance v2, Lcom/android/incallui/InCallActivity$24;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$24;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 3661
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3666
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    .line 3668
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 3669
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3670
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 3671
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3673
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3674
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    .line 3675
    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    .line 3677
    :cond_1
    return-void
.end method

.method public showErrorDialog_Divert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2833
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showIMSErrorDialog_Divert: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2835
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 2836
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/incallui/util/SecErrorDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2837
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "error_message"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2838
    const-string v2, "number"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2839
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2840
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2841
    const-string v2, "sendStartUpErrorViaATCommand"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2842
    return-void
.end method

.method public showInCallMenu()V
    .locals 1

    .prologue
    .line 3030
    const-string v0, "- showInCallMenu"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3031
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 3032
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 3034
    :cond_0
    return-void
.end method

.method public showNotifyWifiToLteDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3684
    const-string v4, "showNotifyWifiToLteDialog"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3685
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 3686
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 3687
    iput-object v6, p0, Lcom/android/incallui/InCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    .line 3690
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 3691
    .local v2, "factory":Landroid/view/LayoutInflater;
    const v4, 0x7f04003b

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3692
    .local v1, "contents":Landroid/view/View;
    const v4, 0x7f1000e1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3693
    .local v3, "waringAlertTextView":Landroid/widget/TextView;
    const v4, 0x7f0905a8

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3695
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3696
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3697
    const v4, 0x7f090046

    new-instance v5, Lcom/android/incallui/InCallActivity$25;

    invoke-direct {v5, p0}, Lcom/android/incallui/InCallActivity$25;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3703
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    .line 3704
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v4, v5}, Landroid/view/Window;->setDimAmount(F)V

    .line 3705
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 3706
    return-void
.end method

.method public showPostCharPauseDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "chars"    # Ljava/lang/String;

    .prologue
    .line 2742
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPostCharPauseDialog()V

    .line 2743
    new-instance v1, Lcom/android/incallui/PostCharDialogFragment;

    const-string v2, "postCharPause"

    invoke-direct {v1, p1, p2, v2}, Lcom/android/incallui/PostCharDialogFragment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    .line 2745
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "postCharPause"

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/PostCharDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2746
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2750
    :goto_0
    return-void

    .line 2747
    :catch_0
    move-exception v0

    .line 2748
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "showPostCharPauseDialog is ignored"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "chars"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 2724
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPostCharWaitDialog during Screen off callId  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  chars  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2726
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mWaitDialog_callId:Ljava/lang/String;

    .line 2727
    iput-object p2, p0, Lcom/android/incallui/InCallActivity;->mWaitDialog_chars:Ljava/lang/String;

    .line 2739
    :goto_0
    return-void

    .line 2731
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPostCharPauseDialog()V

    .line 2733
    new-instance v1, Lcom/android/incallui/PostCharDialogFragment;

    const-string v2, "postCharWait"

    invoke-direct {v1, p1, p2, v2}, Lcom/android/incallui/PostCharDialogFragment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    .line 2735
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "postCharWait"

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/PostCharDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2736
    :catch_0
    move-exception v0

    .line 2737
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "showPostCharWaitDialog is ignored"

    invoke-static {p0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public updateAppSwitchSystemKeyEvent(Z)V
    .locals 2
    .param p1, "request"    # Z

    .prologue
    .line 3106
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3107
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeModeController;->updateAppSwitchSystemKeyEventConsumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3116
    :cond_0
    :goto_0
    return-void

    .line 3111
    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsAppSwitchSystemKeyEventRequested:Z

    if-eq v0, p1, :cond_0

    .line 3112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAppSwitchSystemKeyEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3113
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mIsAppSwitchSystemKeyEventRequested:Z

    .line 3114
    const/16 v0, 0xbb

    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    goto :goto_0
.end method

.method public updateCallCardFragment()V
    .locals 2

    .prologue
    .line 2716
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v0, :cond_0

    .line 2717
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallCardFragment;

    .line 2719
    :cond_0
    return-void
.end method

.method public declared-synchronized updateGradientBackground()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 4165
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 4166
    .local v1, "call":Lcom/android/incallui/Call;
    if-nez v1, :cond_1

    .line 4247
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4167
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    const/16 v10, 0x9

    if-eq v9, v10, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_3

    .line 4168
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v1, v10}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v5

    .line 4169
    .local v5, "secondCall":Lcom/android/incallui/Call;
    if-eqz v5, :cond_3

    move-object v1, v5

    .line 4172
    .end local v5    # "secondCall":Lcom/android/incallui/Call;
    :cond_3
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    .line 4173
    .local v4, "secCall":Lcom/android/incallui/SecCall;
    const/4 v2, -0x1

    .line 4174
    .local v2, "currentModifyType":I
    if-eqz v4, :cond_4

    .line 4175
    invoke-virtual {v4}, Lcom/android/incallui/SecCall;->getModifyType()I

    move-result v2

    .line 4177
    :cond_4
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-nez v9, :cond_5

    .line 4178
    const-string v6, "InCallActivity"

    const-string v7, "updateGradientBackground: mGradientAnimationView is null"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4165
    .end local v1    # "call":Lcom/android/incallui/Call;
    .end local v2    # "currentModifyType":I
    .end local v4    # "secCall":Lcom/android/incallui/SecCall;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 4182
    .restart local v1    # "call":Lcom/android/incallui/Call;
    .restart local v2    # "currentModifyType":I
    .restart local v4    # "secCall":Lcom/android/incallui/SecCall;
    :cond_5
    :try_start_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 4183
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    .line 4194
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    .line 4195
    .local v0, "answerUi":Lcom/android/incallui/AnswerUi;
    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/incallui/AnswerUi;->isAlreadyAnimationProcessing()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 4196
    const-string v6, "InCallActivity"

    const-string v7, "updateGradientBackground: answer is processing"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 4185
    .end local v0    # "answerUi":Lcom/android/incallui/AnswerUi;
    :cond_6
    const-string v6, "InCallActivity"

    const-string v7, "updateGradientBackground: video call"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4186
    iget-object v6, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    .line 4187
    iget-object v6, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v6}, Lcom/android/incallui/widget/GradientAnimationView;->isStreamAnimationRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4188
    const-string v6, "InCallActivity"

    const-string v7, "updateGradientBackground: stopStreamAnimation"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4189
    iget-object v6, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v6}, Lcom/android/incallui/widget/GradientAnimationView;->stopStreamAnimation()V

    goto :goto_0

    .line 4200
    .restart local v0    # "answerUi":Lcom/android/incallui/AnswerUi;
    :cond_7
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 4201
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v9}, Lcom/android/incallui/widget/GradientAnimationView;->endFadeAnimationImmediately()V

    .line 4202
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v10

    if-eqz v10, :cond_d

    :goto_1
    invoke-virtual {v9, v8}, Lcom/android/incallui/widget/GradientAnimationView;->setAlpha(F)V

    .line 4209
    :cond_8
    :goto_2
    const-string v8, "InCallActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateGradientBackground: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    invoke-static {v10}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4210
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 4225
    :pswitch_0
    iget-object v8, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v8}, Lcom/android/incallui/widget/GradientAnimationView;->isStreamAnimationRunning()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 4226
    const-string v8, "InCallActivity"

    const-string v9, "updateGradientBackground: stopStreamAnimation"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4227
    iget-object v8, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v8}, Lcom/android/incallui/widget/GradientAnimationView;->stopStreamAnimation()V

    .line 4229
    :cond_9
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4232
    iget-object v8, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v8}, Lcom/android/incallui/widget/GradientAnimationView;->isScaleAnimationRunning()Z

    move-result v8

    if-nez v8, :cond_c

    .line 4233
    iget-object v8, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/incallui/widget/GradientAnimationView;->setPivotY(F)V

    .line 4234
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getConferenceCallManagerShowingState()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 4235
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v8

    if-nez v8, :cond_a

    .line 4236
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_a
    move v3, v7

    .line 4237
    .local v3, "needToShowFullScale":Z
    :cond_b
    iget-object v7, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v3, :cond_11

    :goto_3
    invoke-virtual {v7, v6}, Lcom/android/incallui/widget/GradientAnimationView;->setScaleY(F)V

    .line 4246
    .end local v3    # "needToShowFullScale":Z
    :cond_c
    :goto_4
    iput v2, p0, Lcom/android/incallui/InCallActivity;->mPreviousModifyType:I

    goto/16 :goto_0

    :cond_d
    move v8, v6

    .line 4202
    goto :goto_1

    .line 4203
    :cond_e
    iget v8, p0, Lcom/android/incallui/InCallActivity;->mPreviousModifyType:I

    sget v9, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    if-eq v8, v9, :cond_8

    .line 4204
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/16 v9, 0x9

    if-eq v8, v9, :cond_f

    .line 4205
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_8

    .line 4206
    :cond_f
    iget-object v8, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    goto/16 :goto_2

    .line 4216
    :pswitch_1
    iget-object v6, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v6}, Lcom/android/incallui/widget/GradientAnimationView;->isStreamAnimationRunning()Z

    move-result v6

    if-nez v6, :cond_10

    .line 4217
    const-string v6, "InCallActivity"

    const-string v7, "updateGradientBackground: animateForStream"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4218
    iget-object v6, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v6}, Lcom/android/incallui/widget/GradientAnimationView;->animateForStream()V

    .line 4220
    :cond_10
    iget-object v6, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v6}, Lcom/android/incallui/widget/GradientAnimationView;->isScaleAnimationRunning()Z

    move-result v6

    if-nez v6, :cond_c

    .line 4221
    iget-object v6, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Lcom/android/incallui/widget/GradientAnimationView;->setScaleY(F)V

    goto :goto_4

    .line 4237
    .restart local v3    # "needToShowFullScale":Z
    :cond_11
    const/high16 v6, 0x3f400000    # 0.75f

    .line 4238
    invoke-direct {p0, v6}, Lcom/android/incallui/InCallActivity;->getAdjustBackgroundScale(F)F

    move-result v6

    goto :goto_3

    .line 4240
    .end local v3    # "needToShowFullScale":Z
    :cond_12
    iget-object v6, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const v7, 0x3ee66666    # 0.45f

    invoke-direct {p0, v7}, Lcom/android/incallui/InCallActivity;->getAdjustBackgroundScale(F)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/widget/GradientAnimationView;->setScaleY(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 4210
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateGradientColor()V
    .locals 1

    .prologue
    .line 4153
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_0

    .line 4154
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColor()V

    .line 4156
    :cond_0
    return-void
.end method

.method public updateGradientColor(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4159
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_0

    .line 4160
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColor(Landroid/graphics/drawable/Drawable;)V

    .line 4162
    :cond_0
    return-void
.end method

.method public updateKeepScreenOnFlag()V
    .locals 5

    .prologue
    const/16 v4, 0x80

    const/4 v3, 0x1

    .line 3120
    const/4 v0, 0x0

    .line 3121
    .local v0, "isAnswermemoRecording":Z
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3122
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3123
    const/4 v0, 0x1

    .line 3125
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateKeepScreenOnFlag: Answering message - isAnswermemoRecording "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3128
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 3129
    :cond_2
    const-string v1, "updateKeepScreenOnFlag: add FLAG_KEEP_SCREEN_ON"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3130
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 3135
    :goto_0
    return-void

    .line 3132
    :cond_3
    const-string v1, "updateKeepScreenOnFlag: clear FLAG_KEEP_SCREEN_ON"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3133
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public updateNavigationBarIconColor(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    .line 3328
    :try_start_0
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "semSetNavigationBarIconColor"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3329
    .local v1, "setNavigationBarIconColorMethod":Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3330
    const/16 v2, 0x9

    if-eq p1, v2, :cond_0

    const/16 v2, 0xa

    if-ne p1, v2, :cond_1

    .line 3331
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f00c1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3345
    .end local v1    # "setNavigationBarIconColorMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 3333
    .restart local v1    # "setNavigationBarIconColorMethod":Ljava/lang/reflect/Method;
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f00c0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 3342
    .end local v1    # "setNavigationBarIconColorMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 3343
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3336
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "setNavigationBarIconColorMethod":Ljava/lang/reflect/Method;
    :cond_2
    const/16 v2, 0xd

    if-eq p1, v2, :cond_3

    const/4 v2, 0x6

    if-ne p1, v2, :cond_4

    .line 3337
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f00c2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3342
    .end local v1    # "setNavigationBarIconColorMethod":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    goto :goto_1

    .line 3339
    .restart local v1    # "setNavigationBarIconColorMethod":Ljava/lang/reflect/Method;
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f00c1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 3342
    .end local v1    # "setNavigationBarIconColorMethod":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V
    .locals 4
    .param p1, "state"    # Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;
    .param p2, "block"    # I

    .prologue
    .line 3187
    const-string v0, "InCallActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhotoring state state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3189
    const-string v0, "InCallActivity"

    const-string v1, "call ui.updatePhotoringState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/CallCardUi;->updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V

    .line 3195
    :goto_0
    return-void

    .line 3192
    :cond_0
    const-string v0, "InCallActivity"

    const-string v1, "UI not ready update later"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa3

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public updateStatusBarColor(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const v3, 0x7f0f0183

    const/4 v0, 0x0

    .line 3348
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3349
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 3393
    :goto_0
    return-void

    .line 3352
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3353
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 3354
    .local v0, "isRejectedOrMissed":Z
    :cond_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3359
    :pswitch_1
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3360
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 3362
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0196

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 3366
    :pswitch_2
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3367
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 3369
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0186

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 3374
    :pswitch_3
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 3375
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    goto/16 :goto_0

    .line 3377
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    goto/16 :goto_0

    .line 3382
    .end local v0    # "isRejectedOrMissed":Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto/16 :goto_0

    .line 3354
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateStatusBarWhiteIcon(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3283
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isClearCoverClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3284
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    .line 3324
    :goto_0
    return-void

    .line 3287
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3288
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v0, v2

    .line 3289
    .local v0, "isRejectedOrMissed":Z
    :goto_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3294
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    .end local v0    # "isRejectedOrMissed":Z
    :cond_2
    move v0, v1

    .line 3288
    goto :goto_1

    .line 3297
    .restart local v0    # "isRejectedOrMissed":Z
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    .line 3301
    :pswitch_3
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 3302
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    .line 3304
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    .line 3309
    .end local v0    # "isRejectedOrMissed":Z
    :cond_4
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mIsSlideOutRunning:Z

    if-nez v3, :cond_5

    .line 3310
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    .line 3312
    :cond_5
    packed-switch p1, :pswitch_data_1

    .line 3318
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    .line 3315
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    .line 3289
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3312
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_4
    .end packed-switch
.end method

.method public updatedVideoCallMenu()V
    .locals 4

    .prologue
    .line 3053
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3054
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissInCallMenu()V

    .line 3055
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/incallui/InCallActivity$16;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$16;-><init>(Lcom/android/incallui/InCallActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3062
    :cond_0
    return-void
.end method
