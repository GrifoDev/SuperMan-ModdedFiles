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

.field private static final DIALPAD_REQUEST_HIDE:I = 0x3

.field private static final DIALPAD_REQUEST_NONE:I = 0x1

.field private static final DIALPAD_REQUEST_SHOW:I = 0x2

.field public static final DIALPAD_TEXT_EXTRA:Ljava/lang/String; = "InCallActivity.dialpad_text"

.field private static final EXTRA_INTENT:Ljava/lang/String; = "EXTRA_INTENT"

.field public static final HAS_IVR:Ljava/lang/String; = "InCallActivity.has_ivr"

.field public static final HAS_OUTGOING_CALL:Ljava/lang/String; = "InCallActivity.has_outgoing_call"

.field private static final INCALL_ACTIVITY:Ljava/lang/String; = "com.android.incallui.InCallActivity"

.field private static final INITIALIZE_INCALL:I = 0xa6

.field private static final INITIALIZE_INCALL_DELAY:I = 0x3e8

.field public static final NEW_OUTGOING_CALL_EXTRA:Ljava/lang/String; = "InCallActivity.new_outgoing_call"

.field private static final PAUSE_DIALOG_COMPLETE:I = 0xa2

.field private static final PAUSE_DIALOG_COMPLETE_TIMEOUT:I = 0x7d0

.field private static final PHONE_APP:I = 0x0

.field private static final PLAY_AUTO_ANSWER_MESSAGE:I = 0xa5

.field private static final PLAY_AUTO_ANSWER_MESSAGE_DELAY:I = 0x3e8

.field private static final PLAY_AUTO_ANSWER_MESSAGE_DELAY_KDI:I = 0x7d0

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

.field private static isTabletUX:Z


# instance fields
.field confirmDialog:Landroid/app/AlertDialog;

.field confirmDialogBuilder:Landroid/app/AlertDialog$Builder;

.field final mAccessibilityTask:Ljava/lang/Runnable;

.field private mAnimateDialpadOnShow:Z

.field private mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

.field private mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

.field private mAutoAnsTimer:Lcom/android/incallui/InCallActivity$AutoAnsTimer;

.field private mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

.field private mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

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
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/InCallActivity;->isTabletUX:Z

    .line 325
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

    .line 203
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mFNDBlockedDialog:Z

    .line 212
    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mMenu:Lcom/android/incallui/InCallMenu;

    .line 228
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    .line 255
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mNeedToRecoverDialpad:Z

    .line 257
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mHasOutgoingCall:Z

    .line 258
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mHasIVR:Z

    .line 261
    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->confirmDialog:Landroid/app/AlertDialog;

    .line 262
    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->confirmDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 271
    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    .line 277
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    .line 278
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsFromPopup:Z

    .line 280
    iput v1, p0, Lcom/android/incallui/InCallActivity;->mPreviousModifyType:I

    .line 327
    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mLastestCallTime:Ljava/lang/String;

    .line 329
    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mWaitDialog_callId:Ljava/lang/String;

    .line 330
    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mWaitDialog_chars:Ljava/lang/String;

    .line 337
    new-instance v0, Lcom/android/incallui/InCallActivity$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$1;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSlideInListner:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    .line 371
    new-instance v0, Lcom/android/incallui/InCallActivity$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$2;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    .line 403
    new-instance v0, Lcom/android/incallui/InCallActivity$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$3;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSelectAcctListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    .line 417
    new-instance v0, Lcom/android/incallui/InCallActivity$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$4;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 428
    new-instance v0, Lcom/android/incallui/InCallActivity$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$5;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAccessibilityTask:Ljava/lang/Runnable;

    .line 437
    new-instance v0, Lcom/android/incallui/InCallActivity$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$6;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 468
    new-instance v0, Lcom/android/incallui/InCallActivity$7;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$7;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSystemUIIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 482
    new-instance v0, Lcom/android/incallui/InCallActivity$8;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$8;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDtmfReceiver:Landroid/content/BroadcastReceiver;

    .line 531
    new-instance v0, Lcom/android/incallui/InCallActivity$10;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$10;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    .line 3119
    new-instance v0, Lcom/android/incallui/InCallActivity$17;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/InCallActivity$17;-><init>(Lcom/android/incallui/InCallActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mRotationEnabledObserver:Landroid/database/ContentObserver;

    .line 3130
    new-instance v0, Lcom/android/incallui/InCallActivity$18;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/InCallActivity$18;-><init>(Lcom/android/incallui/InCallActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mOnehandEnabledObserver:Landroid/database/ContentObserver;

    .line 3138
    new-instance v0, Lcom/android/incallui/InCallActivity$19;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/InCallActivity$19;-><init>(Lcom/android/incallui/InCallActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mOnehandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

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

    .line 3404
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

    .line 3405
    if-eqz p1, :cond_0

    .line 3406
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 3410
    :goto_0
    return-void

    .line 3408
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method private animateForActivityClosed()V
    .locals 3

    .prologue
    .line 1522
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->getBaseActivity()Ljava/lang/String;

    move-result-object v0

    .line 1523
    .local v0, "baseActivity":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.android.app.easylauncher.Launcher"

    .line 1524
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1525
    :cond_0
    const-string v1, "animateForActivityClosed: baseActivity is launcher"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1529
    :goto_0
    return-void

    .line 1527
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
    .line 4070
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4102
    :cond_0
    :goto_0
    return-void

    .line 4071
    :cond_1
    const-string v3, "InCallActivity"

    const-string v4, "animateForDummyBackground"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4072
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    if-nez v3, :cond_2

    .line 4073
    const v3, 0x7f100291

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/widget/GradientAnimationView;

    iput-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    .line 4074
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->setUp()V

    .line 4075
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    .line 4077
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v4}, Lcom/android/incallui/widget/GradientAnimationView;->getStartColor()I

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v5}, Lcom/android/incallui/widget/GradientAnimationView;->getEndColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColor(II)V

    .line 4078
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setScaleY(F)V

    .line 4079
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setAlpha(F)V

    .line 4080
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    .line 4082
    new-instance v0, Lcom/android/incallui/InCallActivity$30;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$30;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 4091
    .local v0, "callback":Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const v4, 0x3ee66666    # 0.45f

    .line 4092
    invoke-direct {p0, v4}, Lcom/android/incallui/InCallActivity;->getAdjustBackgroundScale(F)F

    move-result v4

    .line 4091
    invoke-virtual {v3, v4, p2, v0}, Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForScale(FILcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;)Landroid/animation/Animator;

    move-result-object v2

    .line 4095
    .local v2, "scaleAnimator":Landroid/animation/Animator;
    if-eqz v2, :cond_3

    .line 4096
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 4098
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3, p2}, Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForShow(I)Landroid/animation/Animator;

    move-result-object v1

    .line 4099
    .local v1, "fadeInAnimator":Landroid/animation/Animator;
    if-eqz v1, :cond_0

    .line 4100
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0
.end method

.method private checkAndStartAnswerMemo()V
    .locals 12

    .prologue
    const/16 v9, 0xa5

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3710
    const-string v8, "automatic_answering_machine"

    .line 3711
    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3713
    iget-boolean v8, p0, Lcom/android/incallui/InCallActivity;->mIsFromAMPopup:Z

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3714
    invoke-static {v6}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnsweringMode(Z)V

    .line 3715
    const-string v8, "feature_kdi"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3716
    iget-object v8, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3720
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "isGuidanceMsgPlaying"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3721
    iput-boolean v7, p0, Lcom/android/incallui/InCallActivity;->mIsFromAMPopup:Z

    .line 3777
    :cond_0
    :goto_1
    return-void

    .line 3718
    :cond_1
    iget-object v8, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3726
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 3727
    .local v1, "call":Lcom/android/incallui/Call;
    const/4 v3, 0x0

    .line 3729
    .local v3, "hasActiveCall":Z
    if-eqz v1, :cond_3

    .line 3730
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_7

    move v3, v6

    .line 3733
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "callsettings_ring_duration"

    const/16 v10, 0xd

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 3737
    .local v5, "limit":I
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "callsettings_answer_memo"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3741
    .local v0, "answerMemo":I
    const/4 v4, 0x0

    .line 3742
    .local v4, "isVoicePartyCall":Z
    const-string v8, "feature_kdi"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3743
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v4

    .line 3745
    :cond_4
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

    .line 3746
    iget-boolean v8, p0, Lcom/android/incallui/InCallActivity;->mIsFromAMPopup:Z

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/android/incallui/InCallActivity;->mElaspedAMTime:I

    if-lez v8, :cond_5

    .line 3747
    iget v8, p0, Lcom/android/incallui/InCallActivity;->mElaspedAMTime:I

    sub-int/2addr v5, v8

    .line 3750
    :cond_5
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

    .line 3751
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

    .line 3752
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

    .line 3753
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

    .line 3754
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

    .line 3755
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

    .line 3756
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

    .line 3758
    if-eqz v0, :cond_6

    if-ne v0, v6, :cond_8

    .line 3760
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkPhoneVibrateOrSilentMode()Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_6
    if-nez v3, :cond_8

    if-nez v4, :cond_8

    .line 3763
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3764
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v8

    if-nez v8, :cond_8

    .line 3765
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v8

    if-nez v8, :cond_8

    move v2, v6

    .line 3766
    .local v2, "canAMStart":Z
    :goto_3
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

    .line 3768
    if-eqz v2, :cond_0

    .line 3769
    const-string v6, "answerMemo  ON "

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3770
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3771
    invoke-direct {p0, v5}, Lcom/android/incallui/InCallActivity;->startAutoAnsTimer(I)V

    goto/16 :goto_1

    .end local v0    # "answerMemo":I
    .end local v2    # "canAMStart":Z
    .end local v4    # "isVoicePartyCall":Z
    .end local v5    # "limit":I
    :cond_7
    move v3, v7

    .line 3730
    goto/16 :goto_2

    .restart local v0    # "answerMemo":I
    .restart local v4    # "isVoicePartyCall":Z
    .restart local v5    # "limit":I
    :cond_8
    move v2, v7

    .line 3765
    goto :goto_3

    .line 3773
    .restart local v2    # "canAMStart":Z
    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->memoryFullAnswerMemoNotification()V

    goto/16 :goto_1
.end method

.method private checkAndUpdateDeivceOrientation()V
    .locals 2

    .prologue
    .line 3987
    iget v0, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 3988
    const-string v0, "InCallActivity - checkAndUpdateDeivceOrientation"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->rotation(Ljava/lang/String;)V

    .line 3989
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onConfigurationChange(I)V

    .line 3991
    :cond_0
    return-void
.end method

.method private destroyInCall()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2230
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->addFlagTurnOnScreen(Z)V

    .line 2232
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v0, :cond_0

    .line 2233
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->onDestroy()V

    .line 2234
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    .line 2236
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v0, :cond_1

    .line 2237
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->onDestroy()V

    .line 2238
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    .line 2240
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-eqz v0, :cond_2

    .line 2241
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->onDestroy()V

    .line 2242
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    .line 2244
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_3

    .line 2245
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->onDestroy()V

    .line 2246
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    .line 2248
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-eqz v0, :cond_4

    .line 2249
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->onDestroy()V

    .line 2250
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    .line 2252
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    if-eqz v0, :cond_5

    .line 2253
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->onDestroy()V

    .line 2254
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    .line 2256
    :cond_5
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION:Z

    if-eqz v0, :cond_6

    .line 2257
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mRotationEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2259
    :cond_6
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2260
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mOnehandEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2261
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mOnehandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2263
    :cond_7
    invoke-static {}, Lcom/android/incallui/UiAdapter;->deInit()V

    .line 2264
    return-void
.end method

.method private dismissTtyNotificationOnFinish()V
    .locals 1

    .prologue
    .line 3519
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3520
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    .line 3523
    :cond_0
    return-void
.end method

.method public static divertToVoiceCall(Ljava/lang/String;)V
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2790
    if-nez p0, :cond_0

    .line 2799
    :goto_0
    return-void

    .line 2792
    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->storeSpeakerState(Z)V

    .line 2794
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 2795
    .local v0, "context":Landroid/content/Context;
    const-string v3, "telecom"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    .line 2796
    .local v2, "tm":Landroid/telecom/TelecomManager;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2797
    .local v1, "extras":Landroid/os/Bundle;
    const-string v3, "cs_voice_call_outgoing"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2798
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
    .line 4292
    invoke-static {p0}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    if-eqz v2, :cond_0

    .line 4293
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    int-to-float v2, v2

    mul-float v1, v2, p1

    .line 4294
    .local v1, "scaleHeight":F
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    int-to-float v2, v2

    invoke-static {p0}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    add-float v0, v2, v3

    .line 4295
    .local v0, "fullHeight":F
    div-float p1, v1, v0

    .line 4297
    .end local v0    # "fullHeight":F
    .end local v1    # "scaleHeight":F
    .end local p1    # "scale":F
    :cond_0
    return p1
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1772
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

    .line 1774
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1775
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/bike/BikeModeController;->handleDialerKeyDown(ILandroid/view/KeyEvent;)V

    .line 1780
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->okToDialDtmfTones(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1781
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/incallui/DialpadUi;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1791
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
    .line 3493
    const-string v1, "why"

    sget v2, Lcom/android/incallui/wrapper/WindowManagerPolicyWrapper;->OFF_BECAUSE_OF_USER:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3494
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

    .line 3495
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/incallui/wrapper/WindowManagerPolicyWrapper;->OFF_BECAUSE_OF_PROX_SENSOR:I

    if-eq v0, v1, :cond_0

    .line 3496
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->returnToNormalWindowMode()V

    .line 3498
    :cond_0
    return-void
.end method

.method private handleShowGreenBarMessage()V
    .locals 4

    .prologue
    .line 3203
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3216
    :cond_0
    :goto_0
    return-void

    .line 3204
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-nez v1, :cond_2

    .line 3205
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sem_statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemStatusBarManager;

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 3208
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

    .line 3209
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 3210
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 3211
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 3212
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f013d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 3211
    :goto_1
    invoke-virtual {v2, v1}, Landroid/app/SemStatusBarManager;->setIndicatorBgColor(I)V

    goto :goto_0

    .line 3213
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
    .line 1479
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
    .line 2422
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2423
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/SecCallPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->stopService(Landroid/content/Intent;)Z

    .line 2426
    :cond_0
    return-void
.end method

.method private hideVideoPopup()V
    .locals 2

    .prologue
    .line 2414
    const-string v0, "hideVideoPopup"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2415
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getVideoPopupService()Lcom/android/incallui/service/SecVideoPopupService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2416
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->hideVideoPopup()V

    .line 2417
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/SecVideoPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->stopService(Landroid/content/Intent;)Z

    .line 2419
    :cond_0
    return-void
.end method

.method private initializeInCall()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2152
    iput-boolean v4, p0, Lcom/android/incallui/InCallActivity;->mNeedToInitialize:Z

    .line 2153
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->boostCPU(Landroid/content/Context;)V

    .line 2155
    const-string v0, "perf - initializeInCall: start"

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2156
    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->updateGradientColor(Z)V

    .line 2157
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    .line 2159
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-nez v0, :cond_0

    .line 2160
    new-instance v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    .line 2162
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-nez v0, :cond_1

    .line 2163
    new-instance v0, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    .line 2165
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-nez v0, :cond_2

    .line 2166
    new-instance v0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    .line 2168
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-nez v0, :cond_3

    .line 2169
    new-instance v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    .line 2171
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-nez v0, :cond_4

    .line 2172
    new-instance v0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    .line 2174
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    if-nez v0, :cond_5

    .line 2175
    new-instance v0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    .line 2178
    :cond_5
    const-string v0, "perf - initializeInCall: fragment manager done"

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2180
    invoke-static {}, Lcom/android/incallui/UiAdapter;->init()Lcom/android/incallui/UiAdapter;

    .line 2182
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION:Z

    if-eqz v0, :cond_6

    .line 2183
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    .line 2184
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mRotationEnabledObserver:Landroid/database/ContentObserver;

    .line 2183
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2187
    :cond_6
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2188
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "interactionarea_switch"

    .line 2189
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mOnehandEnabledObserver:Landroid/database/ContentObserver;

    .line 2188
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2190
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_running"

    .line 2191
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mOnehandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

    .line 2190
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2192
    const-string v0, "registerContentObserver about onehand mode"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2195
    :cond_7
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2196
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2198
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2205
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2206
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->UpdateInCallActivity(Lcom/android/incallui/InCallActivity;)V

    .line 2210
    :cond_8
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2211
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->unlock()V

    .line 2212
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->sendMsgCallListChange(I)V

    .line 2215
    :cond_9
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mNeedToRecoverDialpad:Z

    if-eqz v0, :cond_c

    .line 2216
    const-string v0, "initializeInCall : Recover dialpad"

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2217
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2218
    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/PrivatePolicy;->restoreStatus(I)V

    .line 2220
    :cond_a
    invoke-virtual {p0, v3, v4}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    .line 2221
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2222
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/DialpadFragment;

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/DialpadFragment;->restoreDtmfText(Ljava/lang/String;)V

    .line 2224
    :cond_b
    iput-boolean v4, p0, Lcom/android/incallui/InCallActivity;->mNeedToRecoverDialpad:Z

    .line 2226
    :cond_c
    const-string v0, "perf - initializeInCall: done"

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2227
    return-void
.end method

.method private internalResolveIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1988
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1990
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1998
    const-string v7, "automatic_answering_machine"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1999
    iput-boolean v9, p0, Lcom/android/incallui/InCallActivity;->mIsFromAMPopup:Z

    .line 2000
    const-string v7, "fromAMPopup"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2001
    const-string v7, "fromAMPopup"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/incallui/InCallActivity;->mIsFromAMPopup:Z

    .line 2003
    :cond_0
    const-string v7, "elapsedAMTime"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2004
    const-string v7, "elapsedAMTime"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/incallui/InCallActivity;->mElaspedAMTime:I

    .line 2008
    :cond_1
    const-string v7, "fromPopup"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2009
    const-string v7, "fromPopup"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/incallui/InCallActivity;->mIsFromPopup:Z

    .line 2012
    :cond_2
    const-string v7, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2017
    const-string v7, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 2018
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

    .line 2020
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v7

    if-nez v7, :cond_4

    .line 2021
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/incallui/InCallActivity;->relaunchedFromDialer(Z)V

    .line 2024
    .end local v6    # "showDialpad":Z
    :cond_4
    const-string v7, "InCallActivity.new_outgoing_call"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2025
    const-string v7, "InCallActivity.new_outgoing_call"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2026
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 2027
    .local v1, "call":Lcom/android/incallui/Call;
    if-nez v1, :cond_5

    .line 2028
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 2031
    :cond_5
    const/4 v3, 0x0

    .line 2032
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_6

    .line 2033
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 2035
    :cond_6
    if-nez v3, :cond_7

    .line 2037
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "extras":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2039
    .restart local v3    # "extras":Landroid/os/Bundle;
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2077
    if-eqz v1, :cond_9

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->isEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 2078
    const-string v7, "selectPhoneAccountAccounts"

    .line 2079
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2080
    .local v5, "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    if-nez v7, :cond_9

    if-eqz v5, :cond_8

    .line 2081
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2082
    :cond_8
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 2088
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

    .line 2090
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v4

    .line 2091
    .local v4, "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    if-eqz v4, :cond_d

    .line 2092
    invoke-virtual {p0, v9}, Lcom/android/incallui/InCallActivity;->showCallCardFragment(Z)V

    .line 2094
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 2097
    .restart local v3    # "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_c

    .line 2098
    const-string v7, "selectPhoneAccountAccounts"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2104
    .restart local v5    # "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :goto_1
    const v7, 0x7f090573

    iget-object v8, p0, Lcom/android/incallui/InCallActivity;->mSelectAcctListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    invoke-static {v7, v10, v5, v8}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->newInstance(IZLjava/util/List;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    move-result-object v2

    .line 2107
    .local v2, "dialogFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "tag_select_acct_fragment"

    invoke-virtual {v2, v7, v8}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2114
    .end local v2    # "dialogFragment":Landroid/app/DialogFragment;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    .end local v5    # "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_a
    :goto_2
    return-void

    .line 2086
    :cond_b
    iput-boolean v9, p0, Lcom/android/incallui/InCallActivity;->mIsNewOutgoingCall:Z

    goto :goto_0

    .line 2101
    .restart local v3    # "extras":Landroid/os/Bundle;
    .restart local v4    # "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    :cond_c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5    # "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    goto :goto_1

    .line 2110
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
    .line 2130
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    .line 2131
    .local v0, "handle":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 2132
    const/4 v1, 0x0

    .line 2134
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
    .line 1828
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

.method private launchPopup(I)V
    .locals 2
    .param p1, "caller"    # I

    .prologue
    .line 2303
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->shouldShowPopup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2304
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/SecCallPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2308
    :goto_0
    return-void

    .line 2306
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

    .line 2369
    const-string v0, "launchVideoPopup"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2370
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->shouldLaunchVideoPopup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2371
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/SecVideoPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2375
    :goto_0
    return-void

    .line 2373
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

    .line 1795
    const/4 v1, 0x0

    .line 1796
    .local v1, "okToDial":Z
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v4, :cond_4

    .line 1798
    const-string v4, "support_folder_hardkey"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1800
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->isKeyEventDtmfCharacters(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1801
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1802
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_3

    .line 1803
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 1804
    :cond_0
    const-string v3, "okToDialDTMFTones call disconnect and return false"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1821
    .end local v0    # "call":Lcom/android/incallui/Call;
    :goto_0
    return v2

    .line 1807
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

    .line 1809
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->isKeyEventDtmfCharacters(I)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 1810
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v2, v3}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/DialpadFragment;

    .line 1820
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

    .line 1821
    goto :goto_0

    .restart local v0    # "call":Lcom/android/incallui/Call;
    :cond_5
    move v1, v2

    .line 1807
    goto :goto_1

    .line 1813
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 1815
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1816
    const/4 v1, 0x1

    goto :goto_2
.end method

.method private onDialogDismissed()V
    .locals 1

    .prologue
    .line 2857
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 2858
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    .line 2859
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mFNDBlockedDialog:Z

    .line 2860
    return-void
.end method

.method private queryForCrane()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 860
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_4

    move v1, v3

    .line 861
    .local v1, "hasActiveCall":Z
    :goto_0
    const/4 v0, 0x0

    .line 862
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 863
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 872
    :cond_0
    :goto_1
    const/4 v2, 0x0

    .line 873
    .local v2, "msisdn":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 874
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 875
    invoke-static {v2}, Lcom/android/incallui/secrcs/RcsShareUI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 876
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

    .line 878
    :cond_1
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    .line 879
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/incallui/secrcs/RcsShareUI;->checkRemoteCapability(Ljava/lang/String;)V

    .line 880
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

    .line 881
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableVoiceCallButtons isCrane : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 882
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-nez v4, :cond_2

    .line 883
    new-instance v4, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-direct {v4, p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    .line 884
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v4, :cond_3

    .line 885
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v4, v3}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->setCallPlusValue(Z)V

    .line 886
    :cond_3
    return-void

    .line 860
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "hasActiveCall":Z
    .end local v2    # "msisdn":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 864
    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v1    # "hasActiveCall":Z
    :cond_5
    if-eqz v1, :cond_6

    .line 865
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    goto/16 :goto_1

    .line 867
    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 868
    if-nez v0, :cond_0

    .line 869
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

    .line 2138
    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    .line 2139
    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    .line 2141
    iget v1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    if-ne v1, v2, :cond_0

    .line 2144
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2145
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 2146
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    .line 2149
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 2138
    goto :goto_0
.end method

.method private sendDtmf(CI)V
    .locals 6
    .param p1, "c"    # C
    .param p2, "duration"    # I

    .prologue
    .line 496
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

    .line 498
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 499
    const-string v2, "sendDtmf: invalid key"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    :goto_0
    return-void

    .line 502
    :cond_0
    const/16 v2, 0x64

    if-lt p2, v2, :cond_1

    const/16 v2, 0x1388

    if-le p2, v2, :cond_2

    .line 503
    :cond_1
    const-string v2, "sendDtmf: invalid duration"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 507
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 508
    :cond_3
    if-nez v0, :cond_4

    .line 509
    const-string v2, "sendDtmf: no active call"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 513
    :cond_4
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "callId":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/android/incallui/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    .line 515
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

    .line 2267
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2268
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2269
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2270
    if-nez p1, :cond_0

    .line 2271
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->updateCallCardPriority()V

    .line 2275
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2276
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallButtonFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2277
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallButtonFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2280
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2281
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2282
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_8

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2285
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2286
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2287
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_9

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2290
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2291
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2292
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_a

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2295
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->getFragment()Lcom/android/incallui/fragment/VideoCallFragment;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2296
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->getFragment()Lcom/android/incallui/fragment/VideoCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2297
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->getFragment()Lcom/android/incallui/fragment/VideoCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_b

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2300
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 2269
    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 2277
    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 2282
    goto/16 :goto_2

    :cond_9
    move v0, v2

    .line 2287
    goto :goto_3

    :cond_a
    move v0, v2

    .line 2292
    goto :goto_4

    :cond_b
    move v1, v2

    .line 2297
    goto :goto_5
.end method

.method private setTopMarginOfDialpad(I)V
    .locals 2
    .param p1, "topMargin"    # I

    .prologue
    .line 3572
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3574
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3575
    .local v0, "dialpadLP":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3576
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3578
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

    .line 2378
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2410
    :goto_0
    return v0

    .line 2380
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2381
    const-string v2, "shouldLaunchVideoPopup: Not video call"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2385
    :cond_1
    const-string v2, "support_tphone"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2386
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2387
    const-string v2, "shouldLaunchVideoPopup: tphone mode"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2391
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2392
    const-string v2, "shouldLaunchVideoPopup: isInMultiWindowMode"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2396
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isKidsModeCallApp()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2397
    const-string v2, "shouldLaunchVideoPopup: Kids mode"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2401
    :cond_4
    packed-switch p1, :pswitch_data_0

    .line 2409
    :cond_5
    const-string v0, "shouldLaunchVideoPopup: return true"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    .line 2410
    goto :goto_0

    .line 2403
    :pswitch_0
    const-string v2, "com.android.incallui.InCallActivity"

    invoke-static {v2}, Lcom/android/incallui/util/PackageHelpers;->isTopActivityRunning(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2404
    const-string v2, "shouldLaunchVideoPopup: INCALL_ACTIVITY is top activity"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2401
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

    .line 2311
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2365
    :cond_0
    :goto_0
    return v1

    .line 2313
    :cond_1
    const-string v3, "support_tphone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2314
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2315
    const-string v3, "shouldShowPopup: tphone mode"

    invoke-static {p0, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2319
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isKidsModeCallApp()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2320
    const-string v3, "shouldShowPopup: Kids mode"

    invoke-static {p0, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2323
    :cond_3
    sget-boolean v3, Lcom/android/incallui/service/vt/VideoCallConfig;->OVERLAY_POPUP_PLAY:Z

    if-eqz v3, :cond_4

    .line 2324
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2325
    const-string v3, "shouldShowPopup: Video call"

    invoke-static {p0, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2330
    :cond_4
    packed-switch p1, :pswitch_data_0

    .line 2364
    :cond_5
    const-string v1, "shouldShowPopup: return true"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v2

    .line 2365
    goto :goto_0

    .line 2332
    :pswitch_0
    const-string v3, "com.android.incallui.InCallActivity"

    invoke-static {v3}, Lcom/android/incallui/util/PackageHelpers;->isTopActivityRunning(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2333
    const-string v3, "shouldShowPopup: INCALL_ACTIVITY is top activity"

    invoke-static {p0, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2346
    :cond_6
    const-string v3, "ims_rcs"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "com.samsung.rcs.share.ContentShareActivity"

    .line 2347
    invoke-static {v3}, Lcom/android/incallui/util/PackageHelpers;->isTopActivityRunning(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2348
    const-string v3, "shouldShowPopup: RCS_ACTIVITY is top activity"

    invoke-static {p0, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2354
    :pswitch_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    .line 2355
    .local v0, "proximitySensor":Lcom/android/incallui/ProximitySensor;
    if-eqz v0, :cond_7

    .line 2356
    invoke-virtual {v0}, Lcom/android/incallui/ProximitySensor;->isScreenReallyOff()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2359
    :cond_7
    iget-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mHasWindowFocus:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    if-eqz v3, :cond_5

    goto :goto_0

    .line 2330
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

    .line 2477
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v4, :cond_1

    .line 2478
    const/4 v1, 0x0

    .line 2479
    .local v1, "needToShowMenu":Z
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2480
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/incallui/CallCardUi;->needToShowMenu()Z

    move-result v1

    .line 2483
    :cond_0
    if-eqz p1, :cond_4

    .line 2484
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v4}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->showDialpad()V

    .line 2485
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->updateDialpadIndicatorArea()V

    .line 2486
    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->setPrimaryCallMenuForDialpad(Z)V

    .line 2488
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2489
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2490
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/incallui/CallCardUi;->showMenu(Z)V

    .line 2504
    .end local v1    # "needToShowMenu":Z
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2505
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2506
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/android/incallui/CallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    .line 2508
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    if-nez p1, :cond_6

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/incallui/UiAdapter;->showCallBannerByDialpad(Z)V

    .line 2509
    return-void

    .line 2492
    .restart local v1    # "needToShowMenu":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/android/incallui/CallCardUi;->showMenu(Z)V

    goto :goto_0

    .line 2497
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2498
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/incallui/CallCardUi;->showMenu(Z)V

    .line 2501
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v4}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->hideDialpad()V

    goto :goto_0

    .end local v1    # "needToShowMenu":Z
    :cond_6
    move v2, v3

    .line 2508
    goto :goto_1
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 2831
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

    .line 2833
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 2835
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2836
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090046

    new-instance v2, Lcom/android/incallui/InCallActivity$15;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$15;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 2837
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/InCallActivity$14;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$14;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 2843
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2849
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 2851
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2852
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 2853
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2854
    return-void
.end method

.method public static showErrorToast(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2786
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;I)V

    .line 2787
    return-void
.end method

.method private showGreenBar(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x1

    const/16 v4, 0xa0

    .line 3167
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-nez v1, :cond_0

    .line 3168
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sem_statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemStatusBarManager;

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 3170
    :cond_0
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3171
    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-direct {v0}, Lcom/android/incallui/secrcs/RcsShareUI;-><init>()V

    .line 3172
    .local v0, "mRcsShareUI":Lcom/android/incallui/secrcs/RcsShareUI;
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->isShareActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3173
    const-string v1, "SHARE active"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3200
    .end local v0    # "mRcsShareUI":Lcom/android/incallui/secrcs/RcsShareUI;
    :cond_1
    :goto_0
    return-void

    .line 3177
    :cond_2
    const-string v1, "support_tphone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3178
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3179
    const-string v1, "don\'t show green bar during tphone mode."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3180
    const/4 p1, 0x0

    .line 3183
    :cond_3
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3184
    const-string v1, "don\'t show green bar during cover closed"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3185
    const/4 p1, 0x0

    .line 3187
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

    .line 3188
    if-ne p1, v3, :cond_5

    .line 3189
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mHasWindowFocus:Z

    if-nez v1, :cond_1

    .line 3190
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3191
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3195
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3196
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3198
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
    .line 3239
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

    .line 3240
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 3241
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3242
    if-eqz p1, :cond_1

    .line 3243
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, -0x2001

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3249
    :cond_0
    :goto_0
    return-void

    .line 3246
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

    .line 3787
    const-string v0, "startAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3788
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->resetAutoAnsTimer()V

    .line 3789
    if-gtz p1, :cond_2

    .line 3790
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mNeedToInitialize:Z

    if-eqz v0, :cond_0

    .line 3791
    const-string v0, "startAutoAnsTimer: initializeInCall()..."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3792
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3793
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3795
    :cond_0
    new-instance v0, Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/InCallActivity$AutoAnsTimer;-><init>(Lcom/android/incallui/InCallActivity;JJ)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAutoAnsTimer:Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    .line 3799
    :goto_0
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3800
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSystemSettingAllSoundOff()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3801
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAutoAnsTimer:Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity$AutoAnsTimer;->start()Landroid/os/CountDownTimer;

    .line 3806
    :cond_1
    :goto_1
    return-void

    .line 3797
    :cond_2
    new-instance v0, Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    int-to-long v2, p1

    mul-long/2addr v2, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/InCallActivity$AutoAnsTimer;-><init>(Lcom/android/incallui/InCallActivity;JJ)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAutoAnsTimer:Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    goto :goto_0

    .line 3804
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAutoAnsTimer:Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity$AutoAnsTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_1
.end method

.method private startLockScreenDuringCallService()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3485
    const-string v0, "startLockScreenDuringCallService"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3486
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowTabLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3487
    const-string v0, "- startService LockScreenDuringCall..."

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3488
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/LockScreenDuringCall;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3490
    :cond_0
    return-void
.end method

.method private startSelectPhoneAccountDialogActivity(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2117
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2118
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2119
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 2120
    .local v1, "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    if-eqz v1, :cond_0

    .line 2121
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2122
    .local v2, "phoneAccountIntent":Landroid/content/Intent;
    const-class v3, Lcom/android/incallui/SelectPhoneAccountActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2123
    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V

    .line 2124
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->finish()V

    .line 2127
    .end local v1    # "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    .end local v2    # "phoneAccountIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private updateDialpadIndicatorArea()V
    .locals 2

    .prologue
    .line 3413
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3414
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3415
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/DialpadUi;->showIndicator(Z)V

    .line 3420
    :cond_0
    :goto_0
    return-void

    .line 3417
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
    .line 3511
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3512
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/UiAdapter;->showIndicatorArea(Z)V

    .line 3516
    :goto_0
    return-void

    .line 3514
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

    .line 1900
    const/4 v1, 0x5

    .line 1902
    .local v1, "screenType":I
    const-string v2, "tablet_fullscreen_mode"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1903
    const/4 v1, -0x1

    .line 1906
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1907
    const/4 v1, 0x1

    .line 1908
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->canUseScreenTypeSensor()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1909
    const/16 v1, 0xa

    .line 1911
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyLandscapeUI()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1912
    const/4 v1, 0x0

    .line 1915
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v0

    .line 1916
    .local v0, "isConnectedMirrorLink":Z
    if-eqz v0, :cond_3

    .line 1917
    const/4 v1, 0x1

    .line 1920
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 1922
    const/4 v1, 0x1

    .line 1923
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

    .line 1924
    const/4 p1, 0x1

    .line 1927
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getRequestedOrientation()I

    move-result v2

    if-ne v2, v1, :cond_5

    if-eqz p1, :cond_6

    .line 1929
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->setRequestedOrientation(I)V

    .line 1930
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

    .line 1931
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getRequestedOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1930
    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1933
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

    .line 1934
    return-void
.end method

.method private voiceCallClicked()V
    .locals 5

    .prologue
    .line 3886
    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 3887
    .local v1, "number":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 3888
    const-string v3, "telecom"

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    .line 3889
    .local v2, "tm":Landroid/telecom/TelecomManager;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3890
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "roaming_auto_dial"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3891
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "feature_lgt"

    .line 3892
    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3893
    const-string v4, "RADDialOption"

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isCallNumberConverted()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "korea"

    :goto_0
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3895
    :cond_0
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3896
    invoke-static {p0, v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->setAvailablePhoneAccountHandle(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 3898
    :cond_1
    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 3900
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v2    # "tm":Landroid/telecom/TelecomManager;
    :cond_2
    return-void

    .line 3893
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
    .line 1220
    const-string v2, "Smart IVR - Confirm Speaker on dialog shown"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1221
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->confirmDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1222
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->confirmDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f090470

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1223
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1224
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040030

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1225
    .local v0, "confirmSpeakerDialogView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->confirmDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1226
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->confirmDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->confirmDialog:Landroid/app/AlertDialog;

    .line 1227
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->confirmDialog:Landroid/app/AlertDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1228
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->confirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1229
    return-void
.end method

.method public addFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 3396
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 3397
    return-void
.end method

.method public animateForHideBackground()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4128
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-nez v0, :cond_0

    .line 4129
    const-string v0, "InCallActivity"

    const-string v1, "animateForHideBackground: mGradientAnimationView is null"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4137
    :goto_0
    return-void

    .line 4132
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4133
    const-string v0, "InCallActivity"

    const-string v1, "animateForHideBackground: hasLiveCallToDisplay"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 4136
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
    .line 4037
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v4, :cond_1

    .line 4038
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 4039
    .local v3, "duration":I
    new-instance v2, Lcom/android/incallui/InCallActivity$29;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/InCallActivity$29;-><init>(Lcom/android/incallui/InCallActivity;Z)V

    .line 4052
    .local v2, "callback":Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const v5, 0x3ee66666    # 0.45f

    .line 4053
    invoke-direct {p0, v5}, Lcom/android/incallui/InCallActivity;->getAdjustBackgroundScale(F)F

    move-result v5

    .line 4052
    invoke-virtual {v4, v5, v3, v2}, Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForScale(FILcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;)Landroid/animation/Animator;

    move-result-object v0

    .line 4056
    .local v0, "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_1

    .line 4057
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4058
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 4059
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v4}, Lcom/android/incallui/widget/GradientAnimationView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 4060
    invoke-direct {p0, v1, v3}, Lcom/android/incallui/InCallActivity;->animateForDummyBackground(Landroid/animation/AnimatorSet;I)V

    .line 4062
    :cond_0
    const-string v4, "InCallActivity"

    const-string v5, "animateForShrinkBackground"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4063
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v4}, Lcom/android/incallui/widget/GradientAnimationView;->stopStreamAnimation()V

    .line 4064
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 4067
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
    const/16 v6, 0xa5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3854
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 3855
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3856
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

    .line 3857
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3858
    invoke-static {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    .line 3860
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3861
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v1

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v2

    invoke-virtual {v1, v2, p0}, Lcom/android/incallui/fragment/AnswerFragment;->onAnswer(ILandroid/content/Context;)V

    .line 3862
    :cond_0
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3863
    invoke-static {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnsweringMode(Z)V

    .line 3864
    const-string v1, "feature_kdi"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3865
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3869
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "isGuidanceMsgPlaying"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3872
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->resetAutoAnsTimer()V

    .line 3873
    iput-boolean v5, p0, Lcom/android/incallui/InCallActivity;->mIsFromAMPopup:Z

    .line 3878
    :cond_2
    :goto_1
    return-void

    .line 3867
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3875
    :cond_4
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3876
    const v1, 0x7f09008f

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public checkAndUpdateScreenType(Lcom/android/incallui/Call;)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1937
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getRequestedOrientation()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    move v0, v2

    .line 1938
    .local v0, "isScreenTypeSensor":Z
    :goto_0
    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallControl;->canUseScreenTypeSensor(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eq v4, v0, :cond_2

    move v1, v2

    .line 1939
    .local v1, "update":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 1940
    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->updateScreenType(Z)V

    .line 1941
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

    .line 1943
    :cond_0
    return-void

    .end local v0    # "isScreenTypeSensor":Z
    .end local v1    # "update":Z
    :cond_1
    move v0, v3

    .line 1937
    goto :goto_0

    .restart local v0    # "isScreenTypeSensor":Z
    :cond_2
    move v1, v3

    .line 1938
    goto :goto_1
.end method

.method public checkForContentView()V
    .locals 1

    .prologue
    .line 4253
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isActivityFullWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4254
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mContentViewListener:Lcom/android/incallui/service/vt/ContentViewListener;

    if-eqz v0, :cond_0

    .line 4255
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mContentViewListener:Lcom/android/incallui/service/vt/ContentViewListener;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/ContentViewListener;->removeListener()V

    .line 4257
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->onDisplayMetricsChanged()V

    .line 4261
    :goto_0
    return-void

    .line 4259
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->registerContentViewListener()V

    goto :goto_0
.end method

.method public clearDigits()V
    .locals 1

    .prologue
    .line 2429
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2430
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_0

    .line 2431
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->clearSavedDtmfText()V

    .line 2434
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2435
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/DialpadUi;->clearDigits()V

    .line 2437
    :cond_1
    return-void
.end method

.method public clearFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 3400
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    .line 3401
    return-void
.end method

.method public dismissDataChargeAlertDialog()V
    .locals 1

    .prologue
    .line 3937
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3938
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3939
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 3941
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->onDialogDismissed()V

    .line 3942
    return-void
.end method

.method public dismissDataUsageLimitDialog()V
    .locals 1

    .prologue
    .line 3615
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3616
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3617
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    .line 3619
    :cond_0
    return-void
.end method

.method public dismissDialogForDisconnect()V
    .locals 3

    .prologue
    .line 3366
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3367
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/fragment/AnswerFragment;->dismissWaitingCallPopup(Z)V

    .line 3369
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_ANSWER_OPTION:Z

    if-eqz v1, :cond_0

    .line 3370
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 3371
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

    .line 3372
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/fragment/AnswerFragment;->enableButtonAnswerAsShowOrHide()V

    .line 3386
    .end local v0    # "callList":Lcom/android/incallui/CallList;
    :cond_0
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_CDMA:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_GSM:Z

    if-eqz v1, :cond_2

    .line 3387
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 3388
    .restart local v0    # "callList":Lcom/android/incallui/CallList;
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3389
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3390
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    .line 3393
    .end local v0    # "callList":Lcom/android/incallui/CallList;
    :cond_2
    return-void
.end method

.method public dismissInCallMenu()V
    .locals 1

    .prologue
    .line 3006
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3007
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 3008
    const-string v0, "- dismissInCallMenu"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3009
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 3012
    :cond_0
    return-void
.end method

.method public dismissKeyguard(Z)V
    .locals 2
    .param p1, "dismiss"    # Z

    .prologue
    const/high16 v1, 0x400000

    .line 2463
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2464
    const-string v0, "dismissKeyguard getWindow() is null"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2472
    :goto_0
    return-void

    .line 2467
    :cond_0
    if-eqz p1, :cond_1

    .line 2468
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 2470
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public dismissPendingDialogs()V
    .locals 2

    .prologue
    .line 2814
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2815
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2816
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 2820
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2821
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->dismissPendingDialogues()V

    .line 2823
    :cond_1
    const-string v0, "roaming_enhancement"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2824
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->dismissCallRoamingGuardDialog(Z)V

    .line 2825
    :cond_2
    return-void
.end method

.method public dismissPostCharPauseDialog()V
    .locals 2

    .prologue
    const/16 v1, 0xa2

    .line 2722
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2723
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2725
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    if-eqz v0, :cond_1

    .line 2726
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    invoke-virtual {v0}, Lcom/android/incallui/PostCharDialogFragment;->dismissAllowingStateLoss()V

    .line 2727
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    .line 2729
    :cond_1
    return-void
.end method

.method public dismissPostCharPauseDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "chars"    # Ljava/lang/String;

    .prologue
    .line 2732
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPostCharPauseDialog()V

    .line 2738
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2744
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2745
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2752
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 2747
    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    if-eqz v0, :cond_0

    .line 2748
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAccessibilityTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2749
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
    .line 2757
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDispatchTouchEventListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_0

    .line 2758
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDispatchTouchEventListener:Landroid/view/View$OnTouchListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2759
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 2760
    const/4 v1, 0x1

    .line 2764
    .end local v0    # "handled":Z
    :goto_0
    return v1

    .line 2763
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->sendLockScreenEvent()V

    .line 2764
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

    .line 2513
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2625
    :cond_1
    :goto_0
    return-void

    .line 2516
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isConferenceCallManagerShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2517
    const/4 p2, 0x0

    .line 2521
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isShowDialpadRequested()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2522
    const/4 p2, 0x0

    .line 2525
    :cond_4
    const-string v4, "support_folder_single_lcd"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2526
    const/4 p2, 0x0

    .line 2528
    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2532
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez p2, :cond_c

    .line 2533
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->showDialpad(Z)V

    .line 2534
    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->setTopMarginOfDialpad(I)V

    .line 2535
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 2536
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/incallui/CallButtonUi;->returnButtonsForDialpad(Z)V

    .line 2537
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/incallui/CallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    .line 2539
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 2540
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/DialpadUi;->showElapsedTimeContainer()V

    .line 2542
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 2543
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/incallui/CallCardUi;->changeViewForMoveDialpad(Z)V

    .line 2545
    :cond_8
    if-eqz v0, :cond_9

    .line 2546
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    .line 2548
    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    .line 2618
    :cond_a
    :goto_1
    const-string v3, "clear_dialpad_digits"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2619
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 2620
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/DialpadUi;->clearDigits()V

    .line 2624
    :cond_b
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/incallui/ProximitySensor;->onDialpadVisible(Z)V

    goto/16 :goto_0

    .line 2550
    :cond_c
    if-eqz p1, :cond_d

    .line 2551
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showDialpad(Z)V

    .line 2557
    :cond_d
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v4, :cond_e

    .line 2558
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2559
    .local v1, "duration":I
    if-eqz p1, :cond_15

    .line 2560
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v4, v1}, Lcom/android/incallui/widget/GradientAnimationView;->animateForHide(I)V

    .line 2565
    .end local v1    # "duration":I
    :cond_e
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 2566
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/incallui/CallCardUi;->onDialpadVisiblityChange(Z)V

    .line 2568
    :cond_f
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 2569
    if-nez p1, :cond_10

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/incallui/DialpadUi;->hideElapsedTimeContainer()V

    .line 2573
    :cond_10
    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->setTopMarginOfDialpad(I)V

    .line 2575
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    if-nez v4, :cond_12

    .line 2576
    :cond_11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-ne v4, v2, :cond_16

    .line 2579
    .local v2, "isRtl":Z
    :goto_3
    iget-boolean v4, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    if-eqz v4, :cond_19

    .line 2580
    if-eqz v2, :cond_17

    const v4, 0x7f050014

    :goto_4
    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    .line 2582
    if-eqz v2, :cond_18

    const v4, 0x7f050017

    :goto_5
    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    .line 2591
    :goto_6
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/incallui/InCallActivity;->mSlideInListner:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2592
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/incallui/InCallActivity;->mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2594
    .end local v2    # "isRtl":Z
    :cond_12
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 2595
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 2596
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz p1, :cond_1a

    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    :goto_7
    invoke-virtual {v5, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2600
    :cond_13
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 2601
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/incallui/CallCardUi;->animateForMoveDialpad(Z)V

    .line 2603
    :cond_14
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 2604
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/android/incallui/CallButtonUi;->enableDialpadButton(Z)V

    .line 2605
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2606
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/incallui/CallButtonUi;->animateForMoveDialpad(Z)V

    .line 2607
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 2608
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/DialpadUi;->showElapsedTimeContainer()V

    goto/16 :goto_1

    .line 2562
    .restart local v1    # "duration":I
    :cond_15
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v4, v1}, Lcom/android/incallui/widget/GradientAnimationView;->animateForShow(I)V

    goto/16 :goto_2

    .end local v1    # "duration":I
    :cond_16
    move v2, v3

    .line 2576
    goto/16 :goto_3

    .line 2580
    .restart local v2    # "isRtl":Z
    :cond_17
    const v4, 0x7f050015

    goto/16 :goto_4

    .line 2582
    :cond_18
    const v4, 0x7f050018

    goto/16 :goto_5

    .line 2585
    :cond_19
    const v4, 0x7f050013

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    .line 2586
    const v4, 0x7f050016

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    goto/16 :goto_6

    .line 2596
    .end local v2    # "isRtl":Z
    :cond_1a
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    goto :goto_7

    .line 2611
    :cond_1b
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2612
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/incallui/CallButtonUi;->animateForMoveDialpad(Z)V

    goto/16 :goto_1
.end method

.method public enableInCallOrientationEventListener(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 4000
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

    if-eqz v0, :cond_0

    .line 4001
    if-eqz p1, :cond_1

    .line 4002
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallOrientationEventListener;->enable(Z)V

    .line 4007
    :cond_0
    :goto_0
    return-void

    .line 4004
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

    .line 4105
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4106
    const-string v3, "InCallActivity"

    const-string v4, "expandBackgroundForConference: incoming call"

    invoke-static {v3, v4, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4125
    :cond_0
    :goto_0
    return-void

    .line 4109
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v3, :cond_0

    .line 4110
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 4111
    .local v1, "duration":I
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4112
    .local v2, "needToShowFullScale":Z
    :cond_2
    :goto_1
    new-instance v0, Lcom/android/incallui/InCallActivity$31;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$31;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 4121
    .local v0, "callback":Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz p1, :cond_5

    if-eqz v2, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v4, v3, v1, v0}, Lcom/android/incallui/widget/GradientAnimationView;->animateForScale(FILcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;)V

    goto :goto_0

    .line 4111
    .end local v0    # "callback":Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;
    .end local v2    # "needToShowFullScale":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 4121
    .restart local v0    # "callback":Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;
    .restart local v2    # "needToShowFullScale":Z
    :cond_4
    const/high16 v3, 0x3f400000    # 0.75f

    .line 4122
    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->getAdjustBackgroundScale(F)F

    move-result v3

    goto :goto_2

    :cond_5
    const v3, 0x3ee66666    # 0.45f

    .line 4123
    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->getAdjustBackgroundScale(F)F

    move-result v3

    goto :goto_2
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 1504
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

    .line 1505
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1506
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/bike/BikeModeController;->finish(Lcom/android/incallui/InCallActivity;)V

    .line 1509
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hasPendingErrorDialog()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1510
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->finish()V

    .line 1511
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->animateForActivityClosed()V

    .line 1513
    :cond_1
    return-void

    .line 1504
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forceFinish()V
    .locals 2

    .prologue
    .line 1516
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

    .line 1517
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->finish()V

    .line 1518
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->animateForActivityClosed()V

    .line 1519
    return-void

    .line 1516
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnswerFragment()Lcom/android/incallui/AnswerUi;
    .locals 1

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-eqz v0, :cond_0

    .line 1947
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    .line 1949
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallButtonFragment()Lcom/android/incallui/CallButtonUi;
    .locals 1

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v0, :cond_0

    .line 1954
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v0

    .line 1956
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallCardFragment()Lcom/android/incallui/CallCardUi;
    .locals 1

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v0, :cond_0

    .line 1968
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    .line 1970
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallElapsedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3953
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mLastestCallTime:Ljava/lang/String;

    return-object v0
.end method

.method public getConferenceCallManagerShowingState()Z
    .locals 1

    .prologue
    .line 2671
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2672
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->isFragmentVisible()Z

    move-result v0

    .line 2674
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConferenceManagerFragment()Lcom/android/incallui/ConferenceManagerUi;
    .locals 1

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-eqz v0, :cond_0

    .line 1982
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    .line 1984
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentOrientation()I
    .locals 1

    .prologue
    .line 3147
    iget v0, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    return v0
.end method

.method public getDialpadFragment()Lcom/android/incallui/DialpadUi;
    .locals 1

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_0

    .line 1961
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    .line 1963
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDispatchTouchEventListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 4021
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDispatchTouchEventListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 3983
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 1

    .prologue
    .line 3034
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getInVideoCallMenu()Lcom/android/incallui/InVideoCallMenu;
    .locals 1

    .prologue
    .line 3038
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    if-nez v0, :cond_0

    .line 3039
    new-instance v0, Lcom/android/incallui/InVideoCallMenu;

    invoke-direct {v0, p0}, Lcom/android/incallui/InVideoCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    .line 3041
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    return-object v0
.end method

.method public getRcsInvitation()Lcom/android/incallui/secrcs/RcsInvitation;
    .locals 1

    .prologue
    .line 3151
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    return-object v0
.end method

.method public getTouchPointForNewOutgoingCall()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 3116
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTouchPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getVideoCallFragment()Lcom/android/incallui/VideoCallUi;
    .locals 1

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    if-eqz v0, :cond_0

    .line 1975
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->getFragment()Lcom/android/incallui/fragment/VideoCallFragment;

    move-result-object v0

    .line 1977
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;
    .locals 1

    .prologue
    .line 4249
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    return-object v0
.end method

.method public getVoiceCallButtonsGap()I
    .locals 1

    .prologue
    .line 2638
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2639
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->getVoiceCallButtonsGap()I

    move-result v0

    .line 2641
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
    .line 2931
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2933
    :cond_0
    return-void
.end method

.method public handleError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    const/4 v2, 0x0

    .line 2937
    const-string v0, "handleError"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2938
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->isCshTopMostActivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2939
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    if-eqz v0, :cond_0

    .line 2940
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsInvitation;->discardInvitation()V

    .line 2941
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2996
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 2943
    :pswitch_1
    const v0, 0x7f090228

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2944
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2948
    :pswitch_2
    const v0, 0x7f090229

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2949
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2953
    :pswitch_3
    const v0, 0x7f090088

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2954
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2958
    :pswitch_4
    const v0, 0x7f09055a

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2959
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2963
    :pswitch_5
    const v0, 0x7f09055b

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2964
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2968
    :pswitch_6
    const v0, 0x7f09022a

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2969
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2973
    :pswitch_7
    const v0, 0x7f09022c

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2974
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2978
    :pswitch_8
    const v0, 0x7f090227

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2979
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2983
    :pswitch_9
    const v0, 0x7f09022b

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2984
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2989
    :pswitch_a
    const v0, 0x7f090559

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2990
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2941
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
    .line 2922
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2923
    const-string v0, "handleIncommingIMandFT"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2924
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2925
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->onNewIncomingRcsSession(Ljava/lang/String;)V

    .line 2927
    :cond_0
    return-void
.end method

.method public handleInvitation(ZLandroid/content/Intent;)V
    .locals 2
    .param p1, "isIncoming"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2910
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2911
    const-string v0, "handleRcsAction"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2913
    if-eqz p1, :cond_0

    .line 2914
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->onNewIncomingRcsSession(Ljava/lang/String;)V

    .line 2918
    :cond_0
    return-void
.end method

.method public handleRcsAction(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2896
    const-string v1, "handleRcsAction from secInCall"

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2897
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2898
    const-string v1, "com.samsung.rcs.intent.action.STOP_SHARING_SERVICE_DIALOG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2899
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2900
    .local v0, "activecall":Lcom/android/incallui/Call;
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 2901
    const-string v1, "Showing invitation dialog..."

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2902
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/secrcs/RcsInvitation;->updateState(Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 2906
    .end local v0    # "activecall":Lcom/android/incallui/Call;
    :cond_0
    return-void
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 1484
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mHasWindowFocus:Z

    return v0
.end method

.method public hideDialpadForDisconnect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2444
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2445
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_0

    .line 2446
    invoke-virtual {p0, v1, v1}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    .line 2449
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->updateFragment()V

    .line 2452
    :cond_0
    return-void
.end method

.method public hideDialpadForModifyCall()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2455
    invoke-virtual {p0, v0, v0}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    .line 2457
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_0

    .line 2458
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->updateFragment()V

    .line 2460
    :cond_0
    return-void
.end method

.method public hideRcsCallCard()V
    .locals 2

    .prologue
    .line 1767
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->hideRcsCallCard(Lcom/android/incallui/secrcs/RcsInvitation;)V

    .line 1768
    return-void
.end method

.method public initDialpad()V
    .locals 2

    .prologue
    .line 3976
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3980
    :cond_0
    :goto_0
    return-void

    .line 3978
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/DialpadFragment;

    .line 3979
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->showDialpad(Z)V

    goto :goto_0
.end method

.method public isActivityFullWindow()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 4282
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4283
    .local v0, "context":Landroid/content/Context;
    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 4284
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4285
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4286
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v4, v6, :cond_0

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v4, v6, :cond_0

    move v3, v5

    .line 4287
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

    .line 4288
    return v3

    .line 4286
    .end local v3    # "isActivityFullWindow":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isAnimateDialpadOnShow()Z
    .locals 1

    .prologue
    .line 3699
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    return v0
.end method

.method public isBackgroundShowing()Z
    .locals 1

    .prologue
    .line 4029
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
    .line 2678
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2679
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->isVisible()Z

    move-result v0

    .line 2681
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDialpadVisible()Z
    .locals 1

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_0

    .line 2632
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->isShowing()Z

    move-result v0

    .line 2634
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForegroundActivity()Z
    .locals 1

    .prologue
    .line 1468
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method public isInMultiWindowMode()Z
    .locals 1

    .prologue
    .line 856
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->isInMultiWindowMode()Z

    move-result v0

    return v0
.end method

.method public isMenuOpen()Z
    .locals 1

    .prologue
    .line 3015
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v0, :cond_0

    .line 3016
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v0

    .line 3018
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowDialpadRequested()Z
    .locals 2

    .prologue
    .line 3691
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
    .line 4033
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
    .line 1475
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isSafeToCommitTransactions()Z

    move-result v0

    return v0
.end method

.method public maybeShowErrorDialogOnDisconnect(Landroid/telecom/DisconnectCause;)V
    .locals 3
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    const/4 v2, 0x1

    .line 2768
    const-string v0, "maybeShowErrorDialogOnDisconnect"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2769
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2770
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 2771
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2772
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2773
    :cond_0
    const-string v0, "show ErrorDialog or ErrorToast"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2774
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2775
    invoke-static {p0, p1}, Lcom/android/incallui/operator/usa/InCallUIExtension;->maybeShowErrorToastOnDisconnect(Landroid/content/Context;Landroid/telecom/DisconnectCause;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2783
    :cond_1
    :goto_0
    return-void

    .line 2778
    :cond_2
    const-string v0, "FDN_BLOCKED"

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2779
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mFNDBlockedDialog:Z

    .line 2781
    :cond_3
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public needToAnimateForNewOutgoingCall()Z
    .locals 1

    .prologue
    .line 3107
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsNewOutgoingCall:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1566
    const-string v2, "onBackPressed()..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1568
    const-string v2, "ims_crane"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1569
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1570
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/CallButtonUi;->onBackPress()V

    .line 1575
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1576
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/CallCardUi;->isVisible()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1630
    :cond_1
    :goto_0
    return-void

    .line 1579
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1580
    invoke-virtual {p0, v3, v4}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    goto :goto_0

    .line 1584
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isConferenceCallManagerShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1585
    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->showConferenceCallManager(Z)V

    .line 1586
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1587
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/incallui/CallCardUi;->showManageConferenceCallButton(Z)V

    .line 1591
    :cond_4
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1592
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateCallCardFragment()V

    goto :goto_0

    .line 1598
    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1599
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_7

    .line 1601
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1602
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/fragment/AnswerFragment;->closeDrawer()V

    .line 1604
    :cond_6
    const-string v2, "Consume Back press for an incoming call"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1610
    :cond_7
    const-string v2, "hw_home_key"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1612
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_8

    .line 1613
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_8

    .line 1614
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1615
    :cond_8
    const-string v2, "Consume Back press for calling"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1620
    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isLostPhoneLock()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1621
    const-string v2, "Consume Back press for isLostPhoneLock"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1626
    :cond_a
    :try_start_0
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1627
    :catch_0
    move-exception v1

    .line 1628
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

    .line 1845
    if-nez p1, :cond_0

    .line 1846
    const-string v2, "onConfigurationChanged - return : newConfig is null"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1847
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1897
    :goto_0
    return-void

    .line 1851
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

    .line 1852
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->checkForContentView()V

    .line 1853
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1855
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v1

    .line 1856
    .local v1, "proximitySensor":Lcom/android/incallui/ProximitySensor;
    if-eqz v1, :cond_1

    .line 1857
    invoke-virtual {v1, p1}, Lcom/android/incallui/ProximitySensor;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1860
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->canUseScreenTypeSensor()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1861
    invoke-static {p0}, Lcom/android/incallui/util/VideoCallAppLogging;->orientationMode(Landroid/app/Activity;)V

    .line 1865
    :cond_2
    const-string v2, "ims_rcs"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1866
    const-string v2, "onConfigurationChanged()->setOrientation()"

    invoke-static {p0, v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1867
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Lcom/android/incallui/secrcs/RcsInvitation;->setOrientation(I)V

    .line 1870
    :cond_3
    const-string v2, "support_mobile_keyboard"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1871
    iget v2, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iget v3, p0, Lcom/android/incallui/InCallActivity;->mCurrentMobileKeyboardCovered:I

    if-eq v2, v3, :cond_4

    .line 1872
    iget v2, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v2, p0, Lcom/android/incallui/InCallActivity;->mCurrentMobileKeyboardCovered:I

    .line 1873
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->onMobileKeyboardChanged()V

    .line 1876
    :cond_4
    iget v2, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_5

    .line 1877
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    .line 1878
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallPresenter;->onConfigurationChange(I)V

    .line 1879
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->updateNavigationBar()V

    .line 1882
    :cond_5
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sget v3, Lcom/android/incallui/InCallActivity;->TABLET_SMALL_WIDTH_VALUE:I

    if-lt v2, v3, :cond_a

    .line 1883
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

    .line 1884
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v2, :cond_7

    .line 1885
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->onSMultiWindowOnChanged()V

    .line 1887
    :cond_7
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v2, :cond_8

    .line 1888
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->onSMultiWindowOnChanged()V

    .line 1890
    :cond_8
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1891
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    if-eqz v2, :cond_9

    .line 1892
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->onSMultiWindowOnChanged()V

    .line 1896
    :cond_9
    sput-boolean v0, Lcom/android/incallui/InCallActivity;->isTabletUX:Z

    goto/16 :goto_0

    .line 1882
    .end local v0    # "isTabletScreen":Z
    :cond_a
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onContinue(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1239
    const-string v2, "Smart IVR - Speaker switched on"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1240
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1241
    .local v1, "context":Landroid/content/Context;
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1242
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 1243
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 1244
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->toggleSpeakerphone()V

    .line 1245
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->confirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1246
    return-void
.end method

.method public onCoverStateChanged(Z)V
    .locals 5
    .param p1, "isClosed"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3424
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

    .line 3425
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3426
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->returnToNormalWindowMode()V

    .line 3428
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->setInCallViewsVisibility(Z)V

    .line 3429
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 3430
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 3431
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->updateStatusBarColor(I)V

    .line 3432
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    .line 3433
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    .line 3437
    :cond_1
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p1, :cond_2

    .line 3438
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

    .line 3439
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3440
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3441
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_0
    invoke-interface {v3, v1}, Lcom/android/incallui/CallCardUi;->setAMView(Z)V

    .line 3456
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v1, v2

    .line 3441
    goto :goto_0

    .line 3442
    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-nez v3, :cond_2

    .line 3443
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 3444
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/CallCardUi;->clearAMView()V

    .line 3445
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/android/incallui/CallCardUi;->changeCallCardForAM(I)V

    .line 3446
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/incallui/CallCardUi;->showMenu(Z)V

    .line 3448
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3449
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/incallui/CallButtonUi;->setCallButtonContainerVisibility(Z)V

    .line 3451
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3452
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerUi;->showAnswerUi(Z)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 585
    const-string v9, "VerificationLog"

    const-string v10, "onCreate"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
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

    .line 588
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 590
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 591
    .local v0, "call":Lcom/android/incallui/Call;
    const-string v9, "support_outgoing_dialer_animation"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 592
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getOutgoingFromDialer(Lcom/android/incallui/Call;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 593
    const-string v9, "launching activity with fade in animation"

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 594
    const v9, 0x7f05000d

    const v10, 0x7f05000e

    invoke-virtual {p0, v9, v10}, Lcom/android/incallui/InCallActivity;->overridePendingTransition(II)V

    .line 597
    :cond_0
    const-string v9, "tablet_device"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "tablet_fullscreen_mode"

    .line 598
    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 599
    const-string v9, "TABLET_DEVICE , finish"

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 600
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->finish()V

    .line 603
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 604
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/android/incallui/bike/BikeModeController;->onCreate(Lcom/android/incallui/InCallActivity;)V

    .line 606
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 607
    .local v2, "decor":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 608
    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v9

    or-int/lit16 v9, v9, 0x400

    or-int/lit16 v9, v9, 0x200

    invoke-virtual {v2, v9}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 614
    :cond_3
    const v5, -0x7fd78000

    .line 620
    .local v5, "flags":I
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/Window;->addFlags(I)V

    .line 621
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 623
    if-eqz v0, :cond_4

    .line 624
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/incallui/InCallActivity;->updateStatusBarColor(I)V

    .line 625
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    .line 638
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "sem_statusbar"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/SemStatusBarManager;

    iput-object v9, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 639
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v9, :cond_5

    .line 640
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v9}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    .line 643
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 645
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v9, "samsung_screen_timeout_incall"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 646
    const-wide/16 v10, 0x7530

    invoke-virtual {v6, v10, v11}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    .line 647
    const-wide/16 v10, 0x4e20

    invoke-virtual {v6, v10, v11}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    .line 650
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 651
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

    .line 658
    const v9, 0x7f0400dc

    invoke-virtual {p0, v9}, Lcom/android/incallui/InCallActivity;->setContentView(I)V

    .line 659
    new-instance v9, Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-direct {v9, p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v9, p0, Lcom/android/incallui/InCallActivity;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    .line 660
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->checkForContentView()V

    .line 661
    const v9, 0x7f1001d4

    invoke-virtual {p0, v9}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/incallui/widget/GradientAnimationView;

    iput-object v9, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    .line 662
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v9}, Lcom/android/incallui/widget/GradientAnimationView;->setUp()V

    .line 663
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    .line 666
    const-string v9, "ims_rcs"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 667
    new-instance v9, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    invoke-direct {v9, p0}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;-><init>(Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;)V

    iput-object v9, p0, Lcom/android/incallui/InCallActivity;->mRcsBroadcastReceiver:Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    .line 668
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mRcsBroadcastReceiver:Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    invoke-virtual {v9, p0}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 669
    const-string v9, "mRcsBroadcastReceiver.register"

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 670
    const v9, 0x7f100299

    invoke-virtual {p0, v9}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    .line 671
    .local v8, "stub_invitation":Landroid/view/ViewStub;
    if-eqz v8, :cond_7

    .line 672
    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 673
    const v9, 0x7f1001a9

    invoke-virtual {p0, v9}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/incallui/secrcs/RcsInvitation;

    iput-object v9, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    .line 678
    .end local v8    # "stub_invitation":Landroid/view/ViewStub;
    :cond_7
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/incallui/InCallActivity;->mNeedToInitialize:Z

    .line 680
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/incallui/InCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    .line 682
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 683
    .local v1, "configuration":Landroid/content/res/Configuration;
    iget v9, v1, Landroid/content/res/Configuration;->orientation:I

    iput v9, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    .line 684
    iget v9, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_14

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    .line 685
    const-string v9, "support_mobile_keyboard"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 686
    iget v9, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v9, p0, Lcom/android/incallui/InCallActivity;->mCurrentMobileKeyboardCovered:I

    .line 689
    :cond_8
    if-eqz p1, :cond_c

    .line 694
    const-string v9, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 695
    const-string v9, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 696
    .local v7, "showDialpad":Z
    if-eqz v7, :cond_15

    const/4 v9, 0x2

    :goto_1
    iput v9, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    .line 697
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    .line 698
    iput-boolean v7, p0, Lcom/android/incallui/InCallActivity;->mNeedToRecoverDialpad:Z

    .line 700
    .end local v7    # "showDialpad":Z
    :cond_9
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    .line 701
    const-string v9, "InCallActivity.dialpad_text"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    .line 704
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const-string v10, "tag_select_acct_fragment"

    invoke-virtual {v9, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    .line 705
    .local v3, "dialogFragment":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    if-eqz v3, :cond_a

    .line 706
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mSelectAcctListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    invoke-virtual {v3, v9}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->setListener(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V

    .line 709
    :cond_a
    const-string v9, "visual_call_center_callerid_info"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "smart_ivr_callerid_info"

    .line 710
    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 711
    :cond_b
    const-string v9, "InCallActivity.has_outgoing_call"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/incallui/InCallActivity;->mHasOutgoingCall:Z

    .line 712
    const-string v9, "InCallActivity.has_ivr"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/incallui/InCallActivity;->mHasIVR:Z

    .line 722
    .end local v3    # "dialogFragment":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    :cond_c
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v9, :cond_e

    .line 723
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 724
    .local v4, "filter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isEcholocateEnabled()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 725
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 727
    :cond_d
    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 728
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v4}, Lcom/android/incallui/InCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 732
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_e
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mDtmfReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v9, :cond_f

    .line 733
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 734
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    const-string v9, "samsung.intent.action.knoxcustom.SEND_DTMF"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 735
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mDtmfReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v4}, Lcom/android/incallui/InCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 739
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_f
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mSystemUIIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v9, :cond_10

    .line 740
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 741
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    const-string v9, "com.samsung.systemui.statusbar.STARTED"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 742
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mSystemUIIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v4}, Lcom/android/incallui/InCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 745
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_10
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->setActivity(Lcom/android/incallui/InCallActivity;)V

    .line 746
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->addListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    .line 749
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Contact_SupportWhitePages"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 750
    invoke-static {p0}, Lcom/whitepages/nameid/NameIDHelper;->isNameIDInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 751
    invoke-static {p0}, Lcom/whitepages/nameid/NameIDHelper;->init(Landroid/content/Context;)V

    .line 759
    :cond_11
    const-string v9, "ims_capability_check_on_call_end"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 760
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/util/ImsCommonUtils;->connectCapabilityManager(Landroid/content/Context;)V

    .line 763
    :cond_12
    const-string v9, "ims_crane"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v9

    if-nez v9, :cond_13

    .line 764
    const-string v9, "queryForCrane called"

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 765
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->queryForCrane()V

    .line 767
    :cond_13
    const-string v9, "onCreate(): exit"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 768
    return-void

    .line 684
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 696
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

    .line 1285
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

    .line 1286
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onDestroy()V

    .line 1288
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1289
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/bike/BikeModeController;->onDestroy(Lcom/android/incallui/InCallActivity;)V

    .line 1291
    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityDestroyed(Lcom/android/incallui/InCallActivity;)V

    .line 1292
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->unsetActivity(Lcom/android/incallui/InCallActivity;)V

    .line 1293
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updateIsChangingConfigurations()V

    .line 1295
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1296
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->unlock()V

    .line 1299
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1300
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1301
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasOutgoingCall()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1302
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->handleShowGreenBarMessage()V

    .line 1305
    :cond_3
    const-string v0, "support_tphone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1306
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1307
    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->showGreenBar(Z)V

    .line 1310
    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1311
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1312
    const-string v0, "!CallList.getInstance().hasLiveCall()"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1313
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRcsBroadcastReceiver:Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 1314
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->disconnect(Landroid/content/Context;)V

    .line 1316
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->setExcludeFromRecents(Z)V

    .line 1319
    :cond_6
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->OVERLAY_POPUP_PLAY:Z

    if-eqz v0, :cond_7

    .line 1320
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hideVideoPopup()V

    .line 1323
    :cond_7
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->destroyInCall()V

    .line 1325
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1326
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->resetAutoAnsTimer()V

    .line 1329
    :cond_8
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_9

    .line 1331
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1334
    :goto_0
    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    .line 1335
    const-string v0, " unregisterReceiver - - mScreenOffReceiver"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1338
    :cond_9
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_a

    .line 1339
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1343
    :cond_a
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDtmfReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_b

    .line 1344
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDtmfReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1348
    :cond_b
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSystemUIIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_c

    .line 1349
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSystemUIIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1352
    :cond_c
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    if-eqz v0, :cond_d

    .line 1353
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->tearDown()V

    .line 1356
    :cond_d
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_e

    .line 1357
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->tearDown()V

    .line 1358
    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    .line 1360
    :cond_e
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_f

    .line 1361
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->tearDown()V

    .line 1362
    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    .line 1365
    :cond_f
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->setActivity(Lcom/android/incallui/InCallActivity;)V

    .line 1366
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->removeListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    .line 1368
    const-string v0, "visual_call_center_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1369
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDeviceOnWiFi()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "visual_call_status"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_10

    .line 1370
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/incallui/InCallActivity$12;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$12;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1383
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1385
    :cond_10
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {v3}, Lcom/android/incallui/util/VisualCallCenter;->VCC_setDisplayDailpad(Z)V

    .line 1388
    :cond_11
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_12

    .line 1389
    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/PrivatePolicy;->clearForActivityOnDestroy()V

    .line 1392
    :cond_12
    const-string v0, "ims_capability_check_on_call_end"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1393
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->disconnectCapabilityManager()V

    .line 1395
    :cond_13
    return-void

    .line 1332
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onFragmentAttached(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 1840
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

    .line 1841
    return-void
.end method

.method public onHmtStateChanged(Z)V
    .locals 0
    .param p1, "isDocked"    # Z

    .prologue
    .line 3464
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 1687
    sparse-switch p1, :sswitch_data_0

    .line 1753
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/InCallActivity;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1757
    :cond_1
    :goto_0
    return v4

    .line 1689
    :sswitch_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1690
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/incallui/bike/BikeModeController;->onKeyDownConsumed(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1696
    :sswitch_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->handleCallKey()Z

    move-result v1

    .line 1697
    .local v1, "handled":Z
    if-nez v1, :cond_1

    .line 1698
    const-string v3, "InCallActivity should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1711
    .end local v1    # "handled":Z
    :sswitch_2
    const-string v3, "support_folder_single_lcd"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1712
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getInVideoCallMenu()Lcom/android/incallui/InVideoCallMenu;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1713
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getInVideoCallMenu()Lcom/android/incallui/InVideoCallMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InVideoCallMenu;->clickedCaptureImage()V

    goto :goto_0

    .line 1725
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 1726
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/incallui/CallCardUi;->onVolumeKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1734
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

    .line 1739
    :sswitch_5
    sget-boolean v3, Lcom/android/incallui/Log;->VERBOSE:Z

    if-eqz v3, :cond_0

    .line 1740
    const-string v3, "----------- InCallActivity View dump --------------"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1742
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1743
    .local v2, "w":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1744
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

    .line 1757
    .end local v0    # "decorView":Landroid/view/View;
    .end local v2    # "w":Landroid/view/Window;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 1687
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

    .line 1646
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

    .line 1682
    :cond_0
    :goto_0
    return v1

    .line 1648
    :cond_1
    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    .line 1649
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1650
    .local v0, "call":Lcom/android/incallui/Call;
    const-string v2, "support_folder_hardkey"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isFolerClosed()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 1651
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 1652
    const-string v2, "onKeyUp KEYCODE_CALL"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1653
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->voiceCallClicked()V

    goto :goto_0

    .line 1656
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_2
    const/16 v2, 0x52

    if-ne p1, v2, :cond_5

    .line 1657
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/CallCardUi;->isMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1658
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

    .line 1659
    const-string v2, "KEYCODE_MENU showInCallMenu"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1661
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isCSVideoCall()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1662
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isPrimaryVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1663
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->showInCallMenu()V

    goto :goto_0

    .line 1665
    :cond_3
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->toggleVideoButtonContainer()V

    .line 1666
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/incallui/InCallActivity$13;

    invoke-direct {v3, p0}, Lcom/android/incallui/InCallActivity$13;-><init>(Lcom/android/incallui/InCallActivity;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1674
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->showInCallMenu()V

    goto/16 :goto_0

    .line 1682
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3061
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

    .line 3062
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3063
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

    .line 774
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

    .line 776
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onMultiWindowModeChanged(Z)V

    .line 777
    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->updateScreenType(Z)V

    .line 779
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mNeedToInitialize:Z

    if-eqz v1, :cond_4

    .line 780
    const-string v1, "onModeChanged: initializeInCall()..."

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 781
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 782
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 821
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 822
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    if-eqz v1, :cond_f

    .line 823
    if-nez p1, :cond_1

    .line 825
    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    .line 829
    const-string v1, "onModeChanged - unregisterReceiver  - mScreenOffReceiver"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 842
    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 843
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->resetFullScreenMode()V

    .line 846
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->updateDialpadIndicatorArea()V

    .line 847
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->updateIndicatorArea()V

    .line 848
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 849
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getCoverViewManager()Lcom/android/incallui/accessory/CoverViewManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 850
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getCoverViewManager()Lcom/android/incallui/accessory/CoverViewManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/accessory/CoverViewManager;->onCoverStateChanged(Z)V

    .line 852
    :cond_3
    return-void

    .line 783
    :cond_4
    const-string v1, "support_onehand_operation"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isOnehandModeOn()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 784
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v1, :cond_5

    .line 785
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->onSMultiWindowOnChanged()V

    .line 786
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v1, :cond_6

    .line 787
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->onSMultiWindowOnChanged()V

    .line 788
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-eqz v1, :cond_7

    .line 789
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->onSMultiWindowOnChanged()V

    .line 790
    :cond_7
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v1, :cond_0

    .line 791
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 792
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->onSMultiWindowOnChanged()V

    goto/16 :goto_0

    .line 794
    :cond_8
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 795
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v1, :cond_9

    .line 796
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->onSMultiWindowOnChanged()V

    .line 798
    :cond_9
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v1, :cond_a

    .line 799
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->onSMultiWindowOnChanged()V

    .line 801
    :cond_a
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v1, :cond_0

    .line 802
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->onSMultiWindowOnChanged()V

    goto/16 :goto_0

    .line 804
    :cond_b
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 806
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    if-eqz v1, :cond_c

    .line 807
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->onSMultiWindowOnChanged()V

    .line 809
    :cond_c
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v1, :cond_d

    .line 810
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->onSMultiWindowOnChanged()V

    .line 812
    :cond_d
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v1, :cond_0

    .line 813
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->onSMultiWindowOnChanged()V

    goto/16 :goto_0

    .line 816
    :cond_e
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->onSMultiWindowOnChanged()V

    goto/16 :goto_0

    .line 832
    :cond_f
    if-eqz p1, :cond_1

    .line 833
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 834
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 835
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 836
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 837
    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    .line 838
    const-string v1, "onModeChanged -  registerReceiver - mScreenOffReceiver "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 826
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

    .line 1533
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

    .line 1543
    const-string v2, "ims_rcs"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1544
    const-string v2, "EXTRA_INTENT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1545
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "onNewIntent()->startActivity()"

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1546
    if-eqz v1, :cond_0

    .line 1548
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1562
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1549
    .restart local v1    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1550
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

    .line 1555
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallActivity;->setIntent(Landroid/content/Intent;)V

    .line 1561
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1634
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1635
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1636
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 1637
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->onBackPressed()V

    .line 1638
    const/4 v1, 0x1

    .line 1640
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

    .line 1130
    const-string v5, "onPause()..."

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1131
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onPause()V

    .line 1133
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-static {v5, v9, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1134
    .local v0, "call":Lcom/android/incallui/Call;
    iput-boolean v8, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    .line 1135
    iput-boolean v8, p0, Lcom/android/incallui/InCallActivity;->mIsNewOutgoingCall:Z

    .line 1136
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1137
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v5

    const/4 v6, -0x1

    invoke-interface {v5, v6, v9}, Lcom/android/incallui/DialpadUi;->onDialerKeyUp(ILandroid/view/KeyEvent;)Z

    .line 1140
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    .line 1141
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityPaused(Lcom/android/incallui/InCallActivity;)V

    .line 1142
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1143
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/incallui/InCallPresenter;->unsetActivity(Lcom/android/incallui/InCallActivity;)V

    .line 1144
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityDestroyed(Lcom/android/incallui/InCallActivity;)V

    .line 1147
    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/incallui/InCallActivity;->updateAppSwitchSystemKeyEvent(Z)V

    .line 1148
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1149
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/incallui/bike/BikeModeController;->onPause(Lcom/android/incallui/InCallActivity;)V

    .line 1150
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/incallui/InCallActivity;->setStatusBar(Z)V

    .line 1151
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v7}, Lcom/android/incallui/InCallActivity;->showGreenBar(Z)V

    .line 1152
    :cond_3
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1158
    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isKidsModeCallApp()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1159
    invoke-virtual {p0, v10, v8}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    .line 1160
    const-string v5, "Enable home key"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1163
    :cond_5
    const-string v5, "true"

    const-string v6, "ril.domesticOtaStart"

    invoke-static {v6}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1164
    const-string v5, "domesticOtaStart - Enable home key"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p0, v10, v8}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    .line 1169
    :cond_6
    const-string v5, "ims_rcs"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1170
    const-string v5, "RcsShareUI.unregisterRcsObservers"

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1171
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/incallui/secrcs/RcsShareUI;->unregisterRcsObserver(I)V

    .line 1173
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.PHONE_INACTIVE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1174
    .local v2, "i":Landroid/content/Intent;
    const-string v5, "com.samsung.rcs.framework.mediatransfer.contentshare.notification"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1175
    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1179
    .end local v2    # "i":Landroid/content/Intent;
    :cond_7
    const-string v5, "smart_ivr_callerid_info"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1180
    const-string v5, "Achintya : in onPause before if statement "

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1181
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

    .line 1182
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

    .line 1183
    sget-boolean v5, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->wasIvrCall:Z

    if-eqz v5, :cond_b

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_b

    .line 1184
    :cond_8
    sput-boolean v7, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->SMART_IVR_first:Z

    .line 1185
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 1186
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/util/VisualCallCenter;->VCC_deleteShortCutsFromInCallUI()V

    .line 1188
    :cond_9
    sget-object v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->publicCallPath:Ljava/lang/String;

    .line 1189
    .local v4, "path":Ljava/lang/String;
    if-eqz v4, :cond_a

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/incallui/util/VisualCallCenter;->VCC_isShortcutPath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1190
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

    .line 1191
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

    .line 1192
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    .line 1193
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/incallui/SmartIVRDialogActivity;

    invoke-direct {v3, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1194
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "shortcut_path"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1195
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1196
    sput-boolean v8, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->wasIvrCall:Z

    .line 1197
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1199
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_a
    sput-object v9, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->publicCallPath:Ljava/lang/String;

    .line 1204
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

    .line 1205
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    .line 1207
    :cond_c
    const-string v5, "lock_screen_during_call"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1208
    iget-object v5, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1209
    iget-object v5, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1211
    :cond_d
    const-string v5, "stopService LockScreenDuringCall..."

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1212
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/incallui/service/LockScreenDuringCall;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5}, Lcom/android/incallui/InCallActivity;->stopService(Landroid/content/Intent;)Z

    .line 1215
    :cond_e
    const-string v5, "onPause(): exit"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1216
    return-void

    .line 1155
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
    .line 931
    const-string v10, "VerificationLog"

    const-string v11, "onResume"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const-string v10, "perf - onResume()..."

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 933
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onResume()V

    .line 935
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->awaken()V

    .line 937
    const-string v10, "ims_support_multimedia_caller_id"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isMcidDownloadble()Z

    move-result v10

    if-nez v10, :cond_0

    .line 938
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x2000

    invoke-virtual {v10, v11}, Landroid/view/Window;->addFlags(I)V

    .line 939
    const-string v10, "SecInCallActiviy onResume - FLAG_SECURE : on"

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 942
    :cond_0
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    .line 943
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/incallui/InCallActivity;->updateScreenType(Z)V

    .line 944
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 945
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/incallui/InCallPresenter;->onCoverStateChanged(Z)V

    .line 950
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    .line 951
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityResumed(Lcom/android/incallui/InCallActivity;)V

    .line 953
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/InCallPresenter;->clearFullscreen()V

    .line 954
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 955
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 956
    :cond_2
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_15

    const/4 v10, 0x1

    :goto_0
    invoke-static {p0, v10}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    .line 959
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->checkAndUpdateDeivceOrientation()V

    .line 961
    sget-boolean v10, Lcom/android/incallui/service/vt/VideoCallConfig;->OVERLAY_POPUP_PLAY:Z

    if-eqz v10, :cond_4

    .line 962
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hideVideoPopup()V

    .line 964
    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hideCallPopup()V

    .line 966
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateKeepScreenOnFlag()V

    .line 968
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/incallui/InCallActivity;->showGreenBar(Z)V

    .line 970
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v10

    if-eqz v10, :cond_16

    const/4 v5, 0x1

    .line 974
    .local v5, "hasIncomingCall":Z
    :goto_1
    iget-boolean v10, p0, Lcom/android/incallui/InCallActivity;->mNeedToInitialize:Z

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xa6

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 975
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateGradientColor()V

    .line 976
    if-eqz v5, :cond_17

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isScreenOn()Z

    move-result v10

    if-nez v10, :cond_17

    .line 977
    const-string v10, "perf - onResume: initializeInCall"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 978
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xa6

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 986
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    .line 988
    if-eqz v5, :cond_1b

    .line 989
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xa1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_6

    .line 990
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xa1

    const-wide/16 v12, 0x1f4

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 994
    :cond_6
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xa4

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 995
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xa4

    const-wide/16 v12, 0x7d0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1000
    :cond_7
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/incallui/InCallActivity;->updateAppSwitchSystemKeyEvent(Z)V

    .line 1001
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/incallui/InCallActivity;->setStatusBar(Z)V

    .line 1007
    :goto_3
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 1013
    :cond_8
    :goto_4
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isKidsModeCallApp()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1014
    const/4 v10, 0x3

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    .line 1015
    const-string v10, "Disable home key"

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1018
    :cond_9
    const-string v10, "true"

    const-string v11, "ril.domesticOtaStart"

    invoke-static {v11}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1019
    const-string v10, "domesticOtaStart - Disable home key"

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1020
    const/4 v10, 0x3

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    .line 1024
    :cond_a
    iget v10, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_c

    .line 1025
    iget v10, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1f

    .line 1028
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/incallui/InCallPresenter;->setFullScreen(ZZ)V

    .line 1030
    const/4 v10, 0x1

    iget-boolean v11, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    .line 1031
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    .line 1033
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 1034
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v10

    iget-object v11, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    invoke-interface {v10, v11}, Lcom/android/incallui/DialpadUi;->setDtmfText(Ljava/lang/String;)V

    .line 1042
    :cond_b
    :goto_5
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    .line 1046
    :cond_c
    const-string v10, "ims_rcs"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1047
    const-string v10, "RcsShareUI.registerRcsObservers"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1048
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/android/incallui/secrcs/RcsShareUI;->stopOverlayService(Landroid/content/Context;)V

    .line 1049
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, p0, v11}, Lcom/android/incallui/secrcs/RcsShareUI;->registerRcsObserver(Landroid/content/Context;I)V

    .line 1051
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 1052
    .local v9, "window":Landroid/view/Window;
    if-eqz v9, :cond_d

    .line 1053
    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    new-instance v11, Lcom/android/incallui/InCallActivity$11;

    invoke-direct {v11, p0}, Lcom/android/incallui/InCallActivity$11;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1060
    :cond_d
    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.PHONE_ACTIVE"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1061
    .local v6, "i":Landroid/content/Intent;
    const-string v10, "com.samsung.rcs.framework.mediatransfer.contentshare.notification"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1062
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v10}, Lcom/android/incallui/InCallActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1064
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    .line 1065
    .local v7, "mCallList":Lcom/android/incallui/CallList;
    invoke-virtual {v7}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v4

    .line 1066
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

    .line 1067
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

    .line 1069
    if-nez v5, :cond_e

    if-eqz v4, :cond_e

    .line 1070
    const-string v10, " RcsShareUI resumeShare called"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1071
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/incallui/secrcs/RcsShareUI;->resumeShare(Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 1076
    .end local v4    # "hasActiveCall":Z
    .end local v6    # "i":Landroid/content/Intent;
    .end local v7    # "mCallList":Lcom/android/incallui/CallList;
    .end local v9    # "window":Landroid/view/Window;
    :cond_e
    iget-boolean v10, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogOnResume:Z

    if-eqz v10, :cond_f

    .line 1077
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogCallId:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogChars:Ljava/lang/String;

    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/InCallActivity;->showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    :cond_f
    const-string v10, "vzw_volte_ui"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1081
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtyNotification()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1082
    const-string v10, "display tty notification!"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1083
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/incallui/InCallActivity;->onTtyNotification(Z)V

    .line 1086
    :cond_10
    const-string v10, "lock_screen_during_call"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1087
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->sendLockScreenEvent()V

    .line 1090
    :cond_11
    const-string v10, "support_tphone"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1091
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1092
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->returnToNormalWindowMode()V

    .line 1095
    :cond_12
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v10, :cond_13

    .line 1096
    iget-boolean v10, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    if-eqz v10, :cond_20

    .line 1097
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v10

    if-nez v10, :cond_13

    .line 1099
    :try_start_0
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10}, Lcom/android/incallui/InCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    :goto_6
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    .line 1103
    const-string v10, " unregisterReceiver - mScreenOffReceiver "

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1117
    :cond_13
    :goto_7
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 1118
    .local v1, "config":Landroid/content/res/Configuration;
    if-eqz v1, :cond_14

    .line 1119
    iget v10, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sget v11, Lcom/android/incallui/InCallActivity;->TABLET_SMALL_WIDTH_VALUE:I

    if-lt v10, v11, :cond_21

    const/4 v10, 0x1

    :goto_8
    sput-boolean v10, Lcom/android/incallui/InCallActivity;->isTabletUX:Z

    .line 1122
    :cond_14
    const-string v10, "VerificationLog"

    const-string v11, "Executed"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const-string v10, "perf - onResume(): done"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1124
    return-void

    .line 956
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v5    # "hasIncomingCall":Z
    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 970
    :cond_16
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 980
    .restart local v5    # "hasIncomingCall":Z
    :cond_17
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v10

    if-nez v10, :cond_18

    iget-boolean v10, p0, Lcom/android/incallui/InCallActivity;->mIsFromPopup:Z

    if-eqz v10, :cond_19

    :cond_18
    const/4 v8, 0x1

    .line 981
    .local v8, "needToInitializeImmediately":Z
    :goto_9
    if-eqz v8, :cond_1a

    const/4 v2, 0x0

    .line 982
    .local v2, "delay":I
    :goto_a
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

    .line 983
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xa6

    int-to-long v12, v2

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 980
    .end local v2    # "delay":I
    .end local v8    # "needToInitializeImmediately":Z
    :cond_19
    const/4 v8, 0x0

    goto :goto_9

    .line 981
    .restart local v8    # "needToInitializeImmediately":Z
    :cond_1a
    const/16 v2, 0x3e8

    goto :goto_a

    .line 1002
    .end local v8    # "needToInitializeImmediately":Z
    :cond_1b
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isLostPhoneLock()Z

    move-result v10

    if-nez v10, :cond_1c

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOtaMode()Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 1003
    :cond_1c
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/incallui/InCallActivity;->setStatusBar(Z)V

    goto/16 :goto_3

    .line 1005
    :cond_1d
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/incallui/InCallActivity;->setStatusBar(Z)V

    goto/16 :goto_3

    .line 1010
    :cond_1e
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    goto/16 :goto_4

    .line 1037
    :cond_1f
    const-string v10, "onResume : force hide dialpad"

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 1039
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    goto/16 :goto_5

    .line 1106
    :cond_20
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1107
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1108
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1109
    const/16 v10, 0x3e7

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1110
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10, v3}, Lcom/android/incallui/InCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1111
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    .line 1112
    const-string v10, "- registerReceiver - mScreenOffReceiver"

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1119
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v1    # "config":Landroid/content/res/Configuration;
    :cond_21
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 1100
    .end local v1    # "config":Landroid/content/res/Configuration;
    :catch_0
    move-exception v10

    goto/16 :goto_6
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 891
    const-string v0, "InCallActivity.show_dialpad"

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/CallButtonUi;->isDialpadVisible()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 893
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 894
    const-string v0, "InCallActivity.dialpad_text"

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/DialpadUi;->getDtmfText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v0, :cond_3

    const-string v0, "visual_call_center_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "smart_ivr_callerid_info"

    .line 898
    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 899
    :cond_2
    const-string v0, "InCallActivity.has_outgoing_call"

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    iget-boolean v1, v1, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsOutGoingCall:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 900
    const-string v0, "InCallActivity.has_ivr"

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    iget-boolean v1, v1, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsHasIVR:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 903
    :cond_3
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 904
    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0
    .param p1, "isStarted"    # Z

    .prologue
    .line 3460
    return-void
.end method

.method public onSpeakerOff(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1233
    const-string v0, "Smart IVR - Speaker not switched on"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->confirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1235
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 908
    const-string v2, "onStart()..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onStart()V

    .line 911
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->checkAndStartAnswerMemo()V

    .line 912
    const-string v2, "ims_rcs"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 913
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.intent.action.RESUME_SHARING_SERVICE_DIALOG"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 914
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 915
    .local v0, "activecall":Lcom/android/incallui/Call;
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 916
    const-string v2, "Showing invitation dialog..."

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 917
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/incallui/secrcs/RcsInvitation;->updateState(Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 921
    .end local v0    # "activecall":Lcom/android/incallui/Call;
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/InCallPresenter;->setActivity(Lcom/android/incallui/InCallActivity;)V

    .line 922
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getRequestedOrientation()I

    move-result v2

    sget v3, Lcom/android/incallui/InCallOrientationEventListener;->FULL_SENSOR_SCREEN_ORIENTATION:I

    if-ne v2, v3, :cond_1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->enableInCallOrientationEventListener(Z)V

    .line 925
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->onActivityStarted()V

    .line 926
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityStarted(Lcom/android/incallui/InCallActivity;)V

    .line 927
    return-void

    .line 922
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1251
    const-string v1, "onStop()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1252
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onStop()V

    .line 1254
    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->enableInCallOrientationEventListener(Z)V

    .line 1255
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->updateIsChangingConfigurations()V

    .line 1256
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->onActivityStopped()V

    .line 1257
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityStopped(Lcom/android/incallui/InCallActivity;)V

    .line 1261
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->OVERLAY_POPUP_PLAY:Z

    if-eqz v1, :cond_0

    .line 1262
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->launchVideoPopup(I)V

    .line 1265
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1266
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/CallCardUi;->resetRevealAnimator()V

    .line 1268
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->showGreenBar(Z)V

    .line 1269
    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->setStatusBar(Z)V

    .line 1270
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mFNDBlockedDialog:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 1271
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1272
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->onDialogDismissed()V

    .line 1274
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    .line 1275
    .local v0, "proximitySensor":Lcom/android/incallui/ProximitySensor;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/ProximitySensor;->isScreenReallyOff()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v1, :cond_3

    .line 1277
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v1}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    .line 1280
    :cond_3
    const-string v1, "onStop(): exit"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1281
    return-void
.end method

.method public onTtyNotification(Z)V
    .locals 4
    .param p1, "isIncoming"    # Z

    .prologue
    const/4 v3, 0x1

    .line 3526
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

    .line 3527
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3528
    const-string v0, "onTtyNotification return "

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3552
    :goto_0
    return-void

    .line 3532
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0905a3

    .line 3533
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902e7

    .line 3534
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/incallui/InCallActivity$21;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$21;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 3535
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/InCallActivity$20;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/InCallActivity$20;-><init>(Lcom/android/incallui/InCallActivity;Z)V

    .line 3539
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3547
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    .line 3548
    const-string v0, "onTtyNotification show "

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3550
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3551
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

    .line 1399
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

    .line 1400
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mHasWindowFocus:Z

    .line 1402
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1404
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz p1, :cond_2

    .line 1407
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hideCallPopup()V

    .line 1408
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1411
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/incallui/CallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    .line 1414
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1415
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/DialpadUi;->showSoftInput()V

    .line 1417
    :cond_1
    const-string v2, "lock_screen_during_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1418
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->sendLockScreenEvent()V

    .line 1421
    :cond_2
    const-string v2, "block_data_during_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1422
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1423
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/incallui/TelecomAdapter;->setCallProtectionValue(Z)V

    .line 1424
    const-string v2, "onWindowFocusChanged: setCallProtectionValue()..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1428
    :cond_3
    iget-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mHasWindowFocus:Z

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCarModeOn()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1429
    invoke-direct {p0, v5}, Lcom/android/incallui/InCallActivity;->showGreenBar(Z)V

    .line 1432
    :cond_4
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/incallui/TelecomAdapter;->notifyInCallUIWindowFocus(Z)V

    .line 1434
    if-eqz p1, :cond_5

    .line 1437
    iget-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mNeedToInitialize:Z

    if-eqz v2, :cond_5

    .line 1438
    const-string v2, "perf - onWindowFocusChanged: initializeInCall()..."

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1439
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1440
    invoke-virtual {p0, v5}, Lcom/android/incallui/InCallActivity;->updateGradientColor(Z)V

    .line 1441
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    .line 1442
    const/4 v1, 0x0

    .line 1452
    .local v1, "initializeImmediately":Z
    if-eqz v1, :cond_6

    .line 1453
    const-string v2, "initialize immediately"

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1454
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->initializeInCall()V

    .line 1461
    .end local v1    # "initializeImmediately":Z
    :cond_5
    :goto_0
    const-string v2, "perf - onWindowFocusChanged: done"

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1462
    return-void

    .line 1456
    .restart local v1    # "initializeImmediately":Z
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public postAccessibilityEventForUpdateScreen()V
    .locals 3

    .prologue
    .line 3678
    const-string v2, "postAccessibilityEventForUpdateScreen"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3680
    const-string v2, "accessibility"

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 3681
    .local v1, "manager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3682
    const/16 v2, 0x800

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3683
    .local v0, "e":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3684
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 3685
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3686
    const-string v2, "sent TYPE_WINDOW_CONTENT_CHANGED"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3688
    .end local v0    # "e":Landroid/view/accessibility/AccessibilityEvent;
    :cond_1
    return-void
.end method

.method public registerContentViewListener()V
    .locals 5

    .prologue
    .line 4264
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 4265
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 4266
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4267
    .local v1, "contentView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mContentViewListener:Lcom/android/incallui/service/vt/ContentViewListener;

    if-nez v2, :cond_1

    .line 4268
    new-instance v2, Lcom/android/incallui/InCallActivity$32;

    invoke-direct {v2, p0, v1}, Lcom/android/incallui/InCallActivity$32;-><init>(Lcom/android/incallui/InCallActivity;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mContentViewListener:Lcom/android/incallui/service/vt/ContentViewListener;

    .line 4278
    .end local v1    # "contentView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 4275
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
    .line 3067
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    .line 3068
    .local v0, "semWindowManager":Lcom/samsung/android/view/SemWindowManager;
    if-eqz v0, :cond_0

    .line 3069
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/view/SemWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v1

    .line 3071
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method resetAutoAnsTimer()V
    .locals 1

    .prologue
    .line 3814
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAutoAnsTimer:Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    if-eqz v0, :cond_0

    .line 3815
    const-string v0, "resetAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3816
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAutoAnsTimer:Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity$AutoAnsTimer;->cancel()V

    .line 3817
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAutoAnsTimer:Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    .line 3819
    :cond_0
    return-void
.end method

.method public returnToNormalWindowMode()V
    .locals 3

    .prologue
    .line 3501
    const-string v1, "returnToNormalWindowMode"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3503
    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->semExitMultiWindowMode()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 3508
    :goto_0
    return-void

    .line 3504
    :catch_0
    move-exception v0

    .line 3506
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method public sendLockScreenEvent()V
    .locals 1

    .prologue
    .line 3467
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->sendLockScreenEvent(Z)V

    .line 3468
    return-void
.end method

.method public sendLockScreenEvent(Z)V
    .locals 5
    .param p1, "now"    # Z

    .prologue
    const/16 v4, 0xa7

    .line 3471
    const-string v0, "lock_screen_during_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3472
    const-string v0, "sendLockScreenEvent"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3473
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3474
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3476
    :cond_0
    if-eqz p1, :cond_2

    .line 3477
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->startLockScreenDuringCallService()V

    .line 3482
    :cond_1
    :goto_0
    return-void

    .line 3479
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
    .line 3703
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    .line 3704
    return-void
.end method

.method public setCallElapsedTime(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 3945
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 3946
    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mLastestCallTime:Ljava/lang/String;

    .line 3950
    :goto_0
    return-void

    .line 3948
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
    .line 4025
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mDispatchTouchEventListener:Landroid/view/View$OnTouchListener;

    .line 4026
    return-void
.end method

.method public setExcludeFromRecents(Z)V
    .locals 9
    .param p1, "exclude"    # Z

    .prologue
    .line 3957
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

    .line 3958
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3959
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v5

    .line 3960
    .local v5, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getTaskId()I

    move-result v4

    .line 3961
    .local v4, "taskId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 3962
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$AppTask;

    .line 3964
    .local v3, "task":Landroid/app/ActivityManager$AppTask;
    :try_start_0
    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v6

    iget v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne v6, v4, :cond_0

    .line 3965
    invoke-virtual {v3, p1}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3961
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3967
    :catch_0
    move-exception v1

    .line 3968
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "InCallActivity"

    const-string v7, "IllegalArgumentException when excluding task from recents."

    invoke-static {v6, v7, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 3969
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 3970
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v6, "InCallActivity"

    const-string v7, "RuntimeException when excluding task from recents."

    invoke-static {v6, v7, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 3973
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "task":Landroid/app/ActivityManager$AppTask;
    :cond_1
    return-void
.end method

.method public setInCallMenuInstance(Lcom/android/incallui/InCallMenu;)V
    .locals 0
    .param p1, "incallmenu"    # Lcom/android/incallui/InCallMenu;

    .prologue
    .line 3045
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    .line 3046
    return-void
.end method

.method public setNeedToAnimateForNewOutgoingCall(Z)V
    .locals 0
    .param p1, "isNewOutgoingCall"    # Z

    .prologue
    .line 3112
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mIsNewOutgoingCall:Z

    .line 3113
    return-void
.end method

.method public setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 2645
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2646
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/DialpadUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    .line 2648
    :cond_0
    return-void
.end method

.method public setPrimaryCallMenuForDialpad(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 2651
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2652
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/DialpadUi;->setPrimaryCallMenuForDialpad(Z)V

    .line 2654
    :cond_0
    return-void
.end method

.method public setShowDialpadRequested(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 3695
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    .line 3696
    return-void

    .line 3695
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public setStatusBar(Z)V
    .locals 2
    .param p1, "onStatus"    # Z

    .prologue
    .line 3219
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

    .line 3220
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-nez v0, :cond_0

    .line 3221
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sem_statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 3223
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3224
    const/4 p1, 0x1

    .line 3226
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v0, :cond_2

    .line 3227
    if-eqz p1, :cond_4

    .line 3228
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/SemStatusBarManager;->disable(I)V

    .line 3234
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3235
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/incallui/bike/BikeModeController;->setStatusBar(Lcom/android/incallui/InCallActivity;Landroid/app/SemStatusBarManager;Z)V

    .line 3236
    :cond_3
    return-void

    .line 3230
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
    .line 1762
    const-string v0, "setUpRcsCallCard"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1763
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->setupRcsCallCard(Landroid/content/Context;Lcom/android/incallui/secrcs/RcsInvitation;Lcom/android/incallui/Call;)V

    .line 1764
    return-void
.end method

.method public setupInCallMenu(ILandroid/view/View;)V
    .locals 3
    .param p1, "menuRes"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 3049
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

    .line 3050
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0b011f

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 3051
    .local v0, "contextWrapper":Landroid/view/ContextThemeWrapper;
    new-instance v1, Lcom/android/incallui/InCallActivity$InCallActivityMenu;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/incallui/InCallActivity$InCallActivityMenu;-><init>(Lcom/android/incallui/InCallActivity;Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    .line 3053
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    .line 3054
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 3055
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 3057
    :cond_0
    return-void
.end method

.method public showCallCardFragment(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 4010
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4011
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->setVisible(Z)V

    .line 4013
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4014
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4015
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->setVisible(Z)V

    .line 4018
    :cond_1
    return-void
.end method

.method public showConferenceCallManager()V
    .locals 1

    .prologue
    .line 2657
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->showConferenceCallManager(Z)V

    .line 2658
    return-void
.end method

.method public showConferenceCallManager(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 2661
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2662
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->setVisible(Z)V

    .line 2665
    :cond_0
    const-string v0, "support_folder_hardkey"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2666
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/incallui/CallButtonUi;->setFocusInCallButton(Z)V

    .line 2668
    :cond_1
    return-void

    .line 2666
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDataChargeAlertDialog()V
    .locals 7

    .prologue
    .line 3904
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "videoAlertShowNeverAgainIncomingCall"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3905
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

    .line 3906
    if-eqz v3, :cond_0

    .line 3934
    :goto_0
    return-void

    .line 3909
    :cond_0
    const v4, 0x7f04003e

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3910
    .local v1, "contents":Landroid/view/View;
    const v4, 0x7f1000e3

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3911
    .local v2, "mDialogCheckbox":Landroid/view/View;
    new-instance v4, Lcom/android/incallui/InCallActivity$26;

    invoke-direct {v4, p0, v2}, Lcom/android/incallui/InCallActivity$26;-><init>(Lcom/android/incallui/InCallActivity;Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3917
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3918
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3919
    const v4, 0x7f09031d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090046

    new-instance v6, Lcom/android/incallui/InCallActivity$28;

    invoke-direct {v6, p0}, Lcom/android/incallui/InCallActivity$28;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 3920
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/incallui/InCallActivity$27;

    invoke-direct {v5, p0}, Lcom/android/incallui/InCallActivity$27;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 3925
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 3932
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 3933
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public showDataChargeAlertToast()V
    .locals 2

    .prologue
    .line 3649
    const v0, 0x7f0902ed

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3650
    return-void
.end method

.method public showDataUsageLimitDialog(I)V
    .locals 3
    .param p1, "msgId"    # I

    .prologue
    .line 3581
    const-string v0, "showDataUsageLimitDialog"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3582
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3583
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3584
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    .line 3587
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f0b0010

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3588
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900e7

    new-instance v2, Lcom/android/incallui/InCallActivity$23;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$23;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 3589
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900e8

    new-instance v2, Lcom/android/incallui/InCallActivity$22;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$22;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 3600
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3606
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    .line 3608
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 3609
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3610
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 3611
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3612
    return-void
.end method

.method public showDataUsageLimitDialogforTMO()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3622
    const-string v0, "showDataUsageLimitDialogforTMO"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3623
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3624
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3625
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    .line 3628
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f0b0010

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900eb

    .line 3629
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090046

    new-instance v2, Lcom/android/incallui/InCallActivity$24;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$24;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 3630
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3635
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    .line 3637
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 3638
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3639
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 3640
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3642
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3643
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    .line 3644
    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    .line 3646
    :cond_1
    return-void
.end method

.method public showErrorDialog_Divert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2802
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

    .line 2804
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 2805
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/incallui/util/SecErrorDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2806
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "error_message"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2807
    const-string v2, "number"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2808
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2809
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2810
    const-string v2, "sendStartUpErrorViaATCommand"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2811
    return-void
.end method

.method public showInCallMenu()V
    .locals 1

    .prologue
    .line 2999
    const-string v0, "- showInCallMenu"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 3001
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 3003
    :cond_0
    return-void
.end method

.method public showNotifyWifiToLteDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3653
    const-string v4, "showNotifyWifiToLteDialog"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3654
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 3655
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 3656
    iput-object v6, p0, Lcom/android/incallui/InCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    .line 3659
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 3660
    .local v2, "factory":Landroid/view/LayoutInflater;
    const v4, 0x7f04003b

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3661
    .local v1, "contents":Landroid/view/View;
    const v4, 0x7f1000e1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3662
    .local v3, "waringAlertTextView":Landroid/widget/TextView;
    const v4, 0x7f0905a7

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3664
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3665
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3666
    const v4, 0x7f090046

    new-instance v5, Lcom/android/incallui/InCallActivity$25;

    invoke-direct {v5, p0}, Lcom/android/incallui/InCallActivity$25;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3672
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    .line 3673
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v4, v5}, Landroid/view/Window;->setDimAmount(F)V

    .line 3674
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 3675
    return-void
.end method

.method public showPostCharPauseDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "chars"    # Ljava/lang/String;

    .prologue
    .line 2711
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPostCharPauseDialog()V

    .line 2712
    new-instance v1, Lcom/android/incallui/PostCharDialogFragment;

    const-string v2, "postCharPause"

    invoke-direct {v1, p1, p2, v2}, Lcom/android/incallui/PostCharDialogFragment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    .line 2714
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "postCharPause"

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/PostCharDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2715
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2719
    :goto_0
    return-void

    .line 2716
    :catch_0
    move-exception v0

    .line 2717
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

    .line 2693
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2694
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

    .line 2695
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mWaitDialog_callId:Ljava/lang/String;

    .line 2696
    iput-object p2, p0, Lcom/android/incallui/InCallActivity;->mWaitDialog_chars:Ljava/lang/String;

    .line 2708
    :goto_0
    return-void

    .line 2700
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPostCharPauseDialog()V

    .line 2702
    new-instance v1, Lcom/android/incallui/PostCharDialogFragment;

    const-string v2, "postCharWait"

    invoke-direct {v1, p1, p2, v2}, Lcom/android/incallui/PostCharDialogFragment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    .line 2704
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "postCharWait"

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/PostCharDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2705
    :catch_0
    move-exception v0

    .line 2706
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "showPostCharWaitDialog is ignored"

    invoke-static {p0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public updateAppSwitchSystemKeyEvent(Z)V
    .locals 2
    .param p1, "request"    # Z

    .prologue
    .line 3075
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3076
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeModeController;->updateAppSwitchSystemKeyEventConsumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3085
    :cond_0
    :goto_0
    return-void

    .line 3080
    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsAppSwitchSystemKeyEventRequested:Z

    if-eq v0, p1, :cond_0

    .line 3081
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

    .line 3082
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mIsAppSwitchSystemKeyEventRequested:Z

    .line 3083
    const/16 v0, 0xbb

    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    goto :goto_0
.end method

.method public updateCallCardFragment()V
    .locals 2

    .prologue
    .line 2685
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v0, :cond_0

    .line 2686
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallCardFragment;

    .line 2688
    :cond_0
    return-void
.end method

.method public declared-synchronized updateGradientBackground()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 4158
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 4159
    .local v1, "call":Lcom/android/incallui/Call;
    if-nez v1, :cond_1

    .line 4246
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4160
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/16 v11, 0x9

    if-eq v10, v11, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_3

    .line 4161
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v1, v11}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v5

    .line 4162
    .local v5, "secondCall":Lcom/android/incallui/Call;
    if-eqz v5, :cond_3

    move-object v1, v5

    .line 4165
    .end local v5    # "secondCall":Lcom/android/incallui/Call;
    :cond_3
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    .line 4166
    .local v4, "secCall":Lcom/android/incallui/SecCall;
    const/4 v2, -0x1

    .line 4167
    .local v2, "currentModifyType":I
    if-eqz v4, :cond_4

    .line 4168
    invoke-virtual {v4}, Lcom/android/incallui/SecCall;->getModifyType()I

    move-result v2

    .line 4170
    :cond_4
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-nez v10, :cond_5

    .line 4171
    const-string v7, "InCallActivity"

    const-string v8, "updateGradientBackground: mGradientAnimationView is null"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4158
    .end local v1    # "call":Lcom/android/incallui/Call;
    .end local v2    # "currentModifyType":I
    .end local v4    # "secCall":Lcom/android/incallui/SecCall;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 4175
    .restart local v1    # "call":Lcom/android/incallui/Call;
    .restart local v2    # "currentModifyType":I
    .restart local v4    # "secCall":Lcom/android/incallui/SecCall;
    :cond_5
    :try_start_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 4176
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    .line 4187
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    .line 4188
    .local v0, "answerUi":Lcom/android/incallui/AnswerUi;
    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/incallui/AnswerUi;->isAlreadyAnimationProcessing()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 4189
    const-string v7, "InCallActivity"

    const-string v8, "updateGradientBackground: answer is processing"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 4178
    .end local v0    # "answerUi":Lcom/android/incallui/AnswerUi;
    :cond_6
    const-string v7, "InCallActivity"

    const-string v8, "updateGradientBackground: video call"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4179
    iget-object v7, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    .line 4180
    iget-object v7, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v7}, Lcom/android/incallui/widget/GradientAnimationView;->isStreamAnimationRunning()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4181
    const-string v7, "InCallActivity"

    const-string v8, "updateGradientBackground: stopStreamAnimation"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4182
    iget-object v7, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v7}, Lcom/android/incallui/widget/GradientAnimationView;->stopStreamAnimation()V

    goto :goto_0

    .line 4193
    .restart local v0    # "answerUi":Lcom/android/incallui/AnswerUi;
    :cond_7
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 4194
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v10}, Lcom/android/incallui/widget/GradientAnimationView;->endFadeAnimationImmediately()V

    .line 4195
    iget-object v10, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v11

    if-eqz v11, :cond_e

    :goto_1
    invoke-virtual {v10, v9}, Lcom/android/incallui/widget/GradientAnimationView;->setAlpha(F)V

    .line 4202
    :cond_8
    :goto_2
    const-string v9, "InCallActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateGradientBackground: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    invoke-static {v11}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4203
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    .line 4204
    .local v6, "state":I
    const-string v9, "automatic_answering_machine"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4205
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4206
    const/4 v6, 0x4

    .line 4209
    :cond_9
    packed-switch v6, :pswitch_data_0

    .line 4224
    :pswitch_0
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v9}, Lcom/android/incallui/widget/GradientAnimationView;->isStreamAnimationRunning()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 4225
    const-string v9, "InCallActivity"

    const-string v10, "updateGradientBackground: stopStreamAnimation"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4226
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v9}, Lcom/android/incallui/widget/GradientAnimationView;->stopStreamAnimation()V

    .line 4228
    :cond_a
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4231
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v9}, Lcom/android/incallui/widget/GradientAnimationView;->isScaleAnimationRunning()Z

    move-result v9

    if-nez v9, :cond_d

    .line 4232
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/incallui/widget/GradientAnimationView;->setPivotY(F)V

    .line 4233
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getConferenceCallManagerShowingState()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 4234
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v9

    if-nez v9, :cond_b

    .line 4235
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_b
    move v3, v8

    .line 4236
    .local v3, "needToShowFullScale":Z
    :cond_c
    iget-object v8, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v3, :cond_12

    :goto_3
    invoke-virtual {v8, v7}, Lcom/android/incallui/widget/GradientAnimationView;->setScaleY(F)V

    .line 4245
    .end local v3    # "needToShowFullScale":Z
    :cond_d
    :goto_4
    iput v2, p0, Lcom/android/incallui/InCallActivity;->mPreviousModifyType:I

    goto/16 :goto_0

    .end local v6    # "state":I
    :cond_e
    move v9, v7

    .line 4195
    goto/16 :goto_1

    .line 4196
    :cond_f
    iget v9, p0, Lcom/android/incallui/InCallActivity;->mPreviousModifyType:I

    sget v10, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    if-eq v9, v10, :cond_8

    .line 4197
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    const/16 v10, 0x9

    if-eq v9, v10, :cond_10

    .line 4198
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_8

    .line 4199
    :cond_10
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    goto/16 :goto_2

    .line 4215
    .restart local v6    # "state":I
    :pswitch_1
    iget-object v7, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v7}, Lcom/android/incallui/widget/GradientAnimationView;->isStreamAnimationRunning()Z

    move-result v7

    if-nez v7, :cond_11

    .line 4216
    const-string v7, "InCallActivity"

    const-string v8, "updateGradientBackground: animateForStream"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4217
    iget-object v7, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v7}, Lcom/android/incallui/widget/GradientAnimationView;->animateForStream()V

    .line 4219
    :cond_11
    iget-object v7, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v7}, Lcom/android/incallui/widget/GradientAnimationView;->isScaleAnimationRunning()Z

    move-result v7

    if-nez v7, :cond_d

    .line 4220
    iget-object v7, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lcom/android/incallui/widget/GradientAnimationView;->setScaleY(F)V

    goto :goto_4

    .line 4236
    .restart local v3    # "needToShowFullScale":Z
    :cond_12
    const/high16 v7, 0x3f400000    # 0.75f

    .line 4237
    invoke-direct {p0, v7}, Lcom/android/incallui/InCallActivity;->getAdjustBackgroundScale(F)F

    move-result v7

    goto :goto_3

    .line 4239
    .end local v3    # "needToShowFullScale":Z
    :cond_13
    iget-object v7, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const v8, 0x3ee66666    # 0.45f

    invoke-direct {p0, v8}, Lcom/android/incallui/InCallActivity;->getAdjustBackgroundScale(F)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/widget/GradientAnimationView;->setScaleY(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 4209
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
    .line 4140
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_0

    .line 4141
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColor()V

    .line 4143
    :cond_0
    return-void
.end method

.method public updateGradientColor(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4152
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_0

    .line 4153
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColor(Landroid/graphics/drawable/Drawable;)V

    .line 4155
    :cond_0
    return-void
.end method

.method public updateGradientColor(Z)V
    .locals 2
    .param p1, "needToSetDefault"    # Z

    .prologue
    .line 4146
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_0

    .line 4147
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    .line 4149
    :cond_0
    return-void
.end method

.method public updateKeepScreenOnFlag()V
    .locals 5

    .prologue
    const/16 v4, 0x80

    const/4 v3, 0x1

    .line 3089
    const/4 v0, 0x0

    .line 3090
    .local v0, "isAnswermemoRecording":Z
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3091
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3092
    const/4 v0, 0x1

    .line 3094
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

    .line 3097
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

    .line 3098
    :cond_2
    const-string v1, "updateKeepScreenOnFlag: add FLAG_KEEP_SCREEN_ON"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3099
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 3104
    :goto_0
    return-void

    .line 3101
    :cond_3
    const-string v1, "updateKeepScreenOnFlag: clear FLAG_KEEP_SCREEN_ON"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3102
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public updateNavigationBarIconColor(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    .line 3297
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

    .line 3298
    .local v1, "setNavigationBarIconColorMethod":Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3299
    const/16 v2, 0x9

    if-eq p1, v2, :cond_0

    const/16 v2, 0xa

    if-ne p1, v2, :cond_1

    .line 3300
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

    .line 3314
    .end local v1    # "setNavigationBarIconColorMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 3302
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

    .line 3311
    .end local v1    # "setNavigationBarIconColorMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 3312
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3305
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "setNavigationBarIconColorMethod":Ljava/lang/reflect/Method;
    :cond_2
    const/16 v2, 0xd

    if-eq p1, v2, :cond_3

    const/4 v2, 0x6

    if-ne p1, v2, :cond_4

    .line 3306
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

    .line 3311
    .end local v1    # "setNavigationBarIconColorMethod":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    goto :goto_1

    .line 3308
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

    .line 3311
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
    .line 3156
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

    .line 3157
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

    .line 3158
    const-string v0, "InCallActivity"

    const-string v1, "call ui.updatePhotoringState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/CallCardUi;->updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V

    .line 3164
    :goto_0
    return-void

    .line 3161
    :cond_0
    const-string v0, "InCallActivity"

    const-string v1, "UI not ready update later"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
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

    .line 3317
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3318
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 3362
    :goto_0
    return-void

    .line 3321
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3322
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

    .line 3323
    .local v0, "isRejectedOrMissed":Z
    :cond_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3328
    :pswitch_1
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3329
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 3331
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

    .line 3335
    :pswitch_2
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3336
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 3338
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

    .line 3343
    :pswitch_3
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 3344
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    goto/16 :goto_0

    .line 3346
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

    .line 3351
    .end local v0    # "isRejectedOrMissed":Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto/16 :goto_0

    .line 3323
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

    .line 3252
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isClearCoverClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3253
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    .line 3293
    :goto_0
    return-void

    .line 3256
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3257
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

    .line 3258
    .local v0, "isRejectedOrMissed":Z
    :goto_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3263
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    .end local v0    # "isRejectedOrMissed":Z
    :cond_2
    move v0, v1

    .line 3257
    goto :goto_1

    .line 3266
    .restart local v0    # "isRejectedOrMissed":Z
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    .line 3270
    :pswitch_3
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 3271
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    .line 3273
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    .line 3278
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

    .line 3279
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    .line 3281
    :cond_5
    packed-switch p1, :pswitch_data_1

    .line 3287
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    .line 3284
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    .line 3258
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

    .line 3281
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_4
    .end packed-switch
.end method

.method public updatedVideoCallMenu()V
    .locals 4

    .prologue
    .line 3022
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3023
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissInCallMenu()V

    .line 3024
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/incallui/InCallActivity$16;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$16;-><init>(Lcom/android/incallui/InCallActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3031
    :cond_0
    return-void
.end method
