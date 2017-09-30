.class public Lcom/android/incallui/InCallActivity;
.super Lcom/android/contacts/common/activity/TransactionSafeActivity;

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/incallui/FragmentDisplayManager;
.implements Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;
.implements Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallActivity$InCallActivityMenu;
    }
.end annotation


# static fields
.field private static final ARG_COLUMNS:Ljava/lang/String; = "ARG_COLUMNS"

.field private static final ARG_MSISDN:Ljava/lang/String; = "ARG_MSISDN"

.field private static final BACKGROUND_SCALE_CONFERENCE:F = 0.75f

.field private static final BACKGROUND_SCALE_DURING_CALL:F = 0.45f

.field private static final BACKGROUND_SCALE_DURING_CALL_PHONE_LAND:F = 0.52f

.field private static final CALLCONTENT_LOADER:I = 0x1

.field private static final DIALPAD_REQUEST_HIDE:I = 0x3

.field private static final DIALPAD_REQUEST_NONE:I = 0x1

.field private static final DIALPAD_REQUEST_SHOW:I = 0x2

.field public static final DIALPAD_TEXT_EXTRA:Ljava/lang/String; = "InCallActivity.dialpad_text"

.field private static final EVENT_COLLAPSE_PANELS:I = 0xa9

.field private static final EVENT_COLLAPSE_PANELS_DELAY:I = 0x1f4

.field private static final EVENT_RESET_ANIM_DELAY:I = 0x1388

.field private static final EVENT_RESET_ANSWER_ANIM:I = 0xa8

.field private static final EXTRA_INTENT:Ljava/lang/String; = "EXTRA_INTENT"

.field public static final HAS_IVR:Ljava/lang/String; = "InCallActivity.has_ivr"

.field public static final HAS_OUTGOING_CALL:Ljava/lang/String; = "InCallActivity.has_outgoing_call"

.field private static final INCALL_ACTIVITY:Ljava/lang/String; = "com.android.incallui.InCallActivity"

.field private static final INITIALIZE_INCALL:I = 0xa6

.field private static final INITIALIZE_INCALL_DELAY:I = 0x3e8

.field private static final INITIALIZE_INCALL_SMALL_DELAY:I = 0x1f4

.field private static MULTI_WINDOW_HEIGHT_VALUE:I = 0x0

.field private static MULTI_WINDOW_UX_VALUE:I = 0x0

.field private static MULTI_WINDOW_WIDTH_VALUE:I = 0x0

.field public static final NEW_OUTGOING_CALL_EXTRA:Ljava/lang/String; = "InCallActivity.new_outgoing_call"

.field private static final PAUSE_DIALOG_COMPLETE:I = 0xa2

.field private static final PAUSE_DIALOG_COMPLETE_TIMEOUT:I = 0x7d0

.field private static final PHONE_APP:I = 0x0

.field private static final RCS_ACTIVITY:Ljava/lang/String; = "com.samsung.rcs.share.ContentShareActivity"

.field private static final RCS_APP:I = 0x1

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


# instance fields
.field confirmDialog:Landroid/app/AlertDialog;

.field confirmDialogBuilder:Landroid/app/AlertDialog$Builder;

.field final mAccessibilityTask:Ljava/lang/Runnable;

.field private mAgifFragmentManager:Lcom/android/incallui/fragment/manager/AgifFragmentManager;

.field private mAnimateDialpadOnShow:Z

.field private mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

.field private mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

.field private mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

.field private mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

.field private mContentView:Landroid/view/View;

.field private mContentViewGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mContentViewHeightPixel:I

.field private mContentViewSize:Landroid/graphics/Point;

.field private mContentViewWidthPixel:I

.field private mCurrentMobileKeyboardCovered:I

.field private mCurrentOrientation:I

.field private mDataUsageLimitDialog:Landroid/app/AlertDialog;

.field private mDialButtonForAnim:Landroid/view/View;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

.field private mDispatchTouchEventListener:Landroid/view/View$OnTouchListener;

.field private mDtmfReceiver:Landroid/content/BroadcastReceiver;

.field private mDtmfText:Ljava/lang/String;

.field private mFNDBlockedDialog:Z

.field private mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

.field private mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

.field private mHandler:Landroid/os/Handler;

.field public mHasIVR:Z

.field public mHasOutgoingCall:Z

.field private mHasWindowFocus:Z

.field private mInCallActivityMenu:Landroid/widget/PopupMenu;

.field private mInCallContentViewListener:Lcom/android/incallui/InCallContentViewListener;

.field private mInCallMenu:Lcom/android/incallui/InCallMenu;

.field private mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

.field private mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

.field private mIsAppSwitchSystemKeyEventRequested:Z

.field private mIsEnabled:Z

.field private mIsForegroundActivity:Z

.field private mIsFromPopup:Z

.field private mIsFromPopupForAnswer:Z

.field private mIsLandscape:Z

.field private mIsMultiWindowUX:Z

.field private mIsNewOutgoingCall:Z

.field private mIsSlideInRunning:Z

.field private mIsSlideOutRunning:Z

.field private mIsTabletUX:Z

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

    const/16 v0, 0x258

    sput v0, Lcom/android/incallui/InCallActivity;->TABLET_SMALL_WIDTH_VALUE:I

    const/16 v0, 0x238

    sput v0, Lcom/android/incallui/InCallActivity;->MULTI_WINDOW_HEIGHT_VALUE:I

    const/16 v0, 0x140

    sput v0, Lcom/android/incallui/InCallActivity;->MULTI_WINDOW_WIDTH_VALUE:I

    const/16 v0, 0x384

    sput v0, Lcom/android/incallui/InCallActivity;->MULTI_WINDOW_UX_VALUE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;-><init>()V

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mFNDBlockedDialog:Z

    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mMenu:Lcom/android/incallui/InCallMenu;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mNeedToRecoverDialpad:Z

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mHasOutgoingCall:Z

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mHasIVR:Z

    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->confirmDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->confirmDialogBuilder:Landroid/app/AlertDialog$Builder;

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsFromPopup:Z

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsFromPopupForAnswer:Z

    iput v1, p0, Lcom/android/incallui/InCallActivity;->mPreviousModifyType:I

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsTabletUX:Z

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsMultiWindowUX:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mLastestCallTime:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mWaitDialog_callId:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mWaitDialog_chars:Ljava/lang/String;

    new-instance v0, Lcom/android/incallui/InCallActivity$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$1;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSlideInListner:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    new-instance v0, Lcom/android/incallui/InCallActivity$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$2;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    new-instance v0, Lcom/android/incallui/InCallActivity$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$3;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSelectAcctListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    new-instance v0, Lcom/android/incallui/InCallActivity$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$4;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/incallui/InCallActivity$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$5;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAccessibilityTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/incallui/InCallActivity$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$6;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/incallui/InCallActivity$7;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$7;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDtmfReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/incallui/InCallActivity$9;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$9;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/InCallActivity$12;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$12;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mContentViewGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lcom/android/incallui/InCallActivity$17;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/InCallActivity$17;-><init>(Lcom/android/incallui/InCallActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mRotationEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/incallui/InCallActivity$18;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/InCallActivity$18;-><init>(Lcom/android/incallui/InCallActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mOnehandEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/incallui/InCallActivity$19;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/InCallActivity$19;-><init>(Lcom/android/incallui/InCallActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mOnehandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/InCallActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mIsSlideInRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/InCallActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->setTopMarginOfDialpad(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->initializeInCall()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->startLockScreenDuringCallService()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/incallui/InCallActivity;)Landroid/app/SemStatusBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/incallui/InCallActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/incallui/InCallActivity;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mContentViewSize:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->onDialogDismissed()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/incallui/InCallActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->updateScreenType(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/incallui/InCallActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/incallui/InCallActivity;)Lcom/android/incallui/widget/GradientAnimationView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/incallui/InCallActivity;)Lcom/android/incallui/widget/GradientAnimationView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/incallui/InCallActivity;Lcom/android/incallui/widget/GradientAnimationView;)Lcom/android/incallui/widget/GradientAnimationView;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/android/incallui/InCallActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/InCallActivity;->mContentViewWidthPixel:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/incallui/InCallActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mIsSlideOutRunning:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/incallui/InCallActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/InCallActivity;->mContentViewHeightPixel:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/incallui/InCallActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->showDialpad(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/InCallActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/incallui/InCallActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mWaitDialog_callId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mWaitDialog_callId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/incallui/InCallActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mWaitDialog_chars:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mWaitDialog_chars:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/incallui/InCallActivity;CI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/InCallActivity;->sendDtmf(CI)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->handleShowGreenBarMessage()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/incallui/InCallActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mNeedToInitialize:Z

    return v0
.end method

.method private addContentViewGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mContentViewGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private addFlagTurnOnScreen(Z)V
    .locals 3

    const/high16 v2, 0x200000

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

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method private animateForActivityClosed()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->getBaseActivity()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->getHomeActivity()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "animateForActivityClosed: baseActivity is launcher"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f05000a

    const v1, 0x7f05000b

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private animateForDummyBackground(Landroid/animation/AnimatorSet;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "InCallActivity"

    const-string v1, "animateForDummyBackground"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    if-nez v0, :cond_2

    const v0, 0x7f10031b

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/GradientAnimationView;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->setUp()V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v1}, Lcom/android/incallui/widget/GradientAnimationView;->getStartColor()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v2}, Lcom/android/incallui/widget/GradientAnimationView;->getEndColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColor(II)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->hide()V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    new-instance v0, Lcom/android/incallui/InCallActivity$30;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$30;-><init>(Lcom/android/incallui/InCallActivity;)V

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const v2, 0x3ee66666    # 0.45f

    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->getAdjustBackgroundScale(F)F

    move-result v2

    invoke-virtual {v1, v2, p2, v0}, Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForScale(FILcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0, p2}, Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForShow(I)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0
.end method

.method private checkAndUpdateDeivceOrientation()V
    .locals 2

    iget v0, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    const-string v0, "InCallActivity - checkAndUpdateDeivceOrientation"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->rotation(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onConfigurationChange(I)V

    :cond_0
    return-void
.end method

.method private clearActivity()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->removeInCallContentViewListener()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->unsetActivity(Lcom/android/incallui/InCallActivity;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityDestroyed(Lcom/android/incallui/InCallActivity;)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->tearDown()V

    :cond_0
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->OVERLAY_POPUP_PLAY:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hideVideoPopup()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->stopVideoPipService()V

    return-void
.end method

.method private controlSystemUiVisibilityImmersiveSticky()V
    .locals 4

    const/16 v3, 0x1000

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_1

    and-int/lit16 v2, v1, 0x1000

    if-eq v2, v3, :cond_0

    or-int/lit16 v1, v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    and-int/lit16 v2, v1, 0x1000

    if-ne v2, v3, :cond_0

    and-int/lit16 v1, v1, -0x1001

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method private destroyInCall()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->addFlagTurnOnScreen(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->onDestroy()V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->onDestroy()V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAgifFragmentManager:Lcom/android/incallui/fragment/manager/AgifFragmentManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAgifFragmentManager:Lcom/android/incallui/fragment/manager/AgifFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->onDestroy()V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mAgifFragmentManager:Lcom/android/incallui/fragment/manager/AgifFragmentManager;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->onDestroy()V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->onDestroy()V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->onDestroy()V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->onDestroy()V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    :cond_6
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mRotationEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_7
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mOnehandEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mOnehandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_8
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->destroyCoverView()V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->deInit()V

    return-void
.end method

.method private dismissTtyNotificationOnFinish()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public static divertToVoiceCall(Ljava/lang/String;)V
    .locals 4

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->storeSpeakerState(Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "cs_voice_call_outgoing"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private getAdjustBackgroundScale(F)F
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsMultiWindowUX:Z

    if-nez v0, :cond_0

    const v0, 0x3ee66666    # 0.45f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const p1, 0x3f051eb8    # 0.52f

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "InCallActivity"

    const-string v1, "getAdjustBackgroundScale: dex mode"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->canUseNavigationBar()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "InCallActivity"

    const-string v1, "getAdjustBackgroundScale: skip"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    if-eqz v0, :cond_3

    const-string v0, "InCallActivity"

    const-string v1, "getAdjustBackgroundScale: Landscape mode"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isNormalWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/incallui/InCallActivity;->mContentViewHeightPixel:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_4

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/incallui/InCallActivity;->mContentViewHeightPixel:I

    int-to-float v1, v1

    div-float p1, v0, v1

    const-string v0, "InCallActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdjustBackgroundScale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const-string v0, "InCallActivity"

    const-string v1, "getAdjustBackgroundScale: return"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private getMultiWindowUX(Landroid/content/res/Configuration;Z)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mContentViewSize:Landroid/graphics/Point;

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mContentViewSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mContentViewSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-boolean v6, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    if-eqz v6, :cond_1

    invoke-static {p0}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result v6

    sub-int/2addr v0, v6

    :goto_0
    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v6

    if-ne v1, v6, :cond_c

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_c

    move v0, v2

    :goto_1
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v2

    :cond_0
    :goto_2
    return v2

    :cond_1
    invoke-static {p0}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v6

    sub-int/2addr v1, v6

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_b

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    sget v1, Lcom/android/incallui/InCallActivity;->MULTI_WINDOW_UX_VALUE:I

    if-lt v0, v1, :cond_3

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    sget v1, Lcom/android/incallui/InCallActivity;->MULTI_WINDOW_UX_VALUE:I

    if-ge v0, v1, :cond_4

    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mIsTabletUX:Z

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3

    :cond_5
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    move v0, v2

    :goto_4
    iget v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v0, :cond_9

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {p0}, Lcom/android/incallui/util/ScreenControlUtils;->getStatusBarHeightDp(Landroid/content/Context;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_6
    :goto_5
    if-nez p2, :cond_7

    sget v4, Lcom/android/incallui/InCallActivity;->MULTI_WINDOW_HEIGHT_VALUE:I

    if-lt v0, v4, :cond_0

    sget v0, Lcom/android/incallui/InCallActivity;->MULTI_WINDOW_WIDTH_VALUE:I

    if-lt v1, v0, :cond_0

    :cond_7
    move v2, v3

    goto :goto_2

    :cond_8
    move v0, v3

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p0}, Lcom/android/incallui/util/ScreenControlUtils;->getStatusBarHeightDp(Landroid/content/Context;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v4

    goto :goto_5

    :cond_a
    move v0, v1

    move v1, v4

    goto :goto_5

    :cond_b
    move v2, v3

    goto :goto_2

    :cond_c
    move v0, v3

    goto :goto_1
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

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

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/bike/BikeModeController;->handleDialerKeyDown(ILandroid/view/KeyEvent;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->okToDialDtmfTones(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/incallui/DialpadUi;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleShowGreenBarMessage()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sem_statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mHasWindowFocus:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e017e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/SemStatusBarManager;->setIndicatorBgColor(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e017d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1
.end method

.method private hasPendingErrorDialog()Z
    .locals 1

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

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/SecCallPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method private hideVideoPopup()V
    .locals 2

    const-string v0, "hideVideoPopup"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getVideoPopupService()Lcom/android/incallui/service/SecVideoPopupService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->hideVideoPopup()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/SecVideoPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method private initializeInCall()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput-boolean v4, p0, Lcom/android/incallui/InCallActivity;->mNeedToInitialize:Z

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->boostCPU(Landroid/content/Context;)V

    const-string v0, "initializeInCall"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "perf - initializeInCall: start"

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->updateGradientColor(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAgifFragmentManager:Lcom/android/incallui/fragment/manager/AgifFragmentManager;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/incallui/fragment/manager/AgifFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/AgifFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAgifFragmentManager:Lcom/android/incallui/fragment/manager/AgifFragmentManager;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-nez v0, :cond_5

    new-instance v0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    if-nez v0, :cond_6

    new-instance v0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialButtonForAnim:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialButtonForAnim:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialButtonForAnim:Landroid/view/View;

    :cond_7
    const-string v0, "perf - initializeInCall: fragment manager done"

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->init()Lcom/android/incallui/UiAdapter;

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mRotationEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_8
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "interactionarea_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mOnehandEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_running"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mOnehandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "registerContentObserver about onehand mode"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->updateRecorderState()V

    :cond_a
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->unlock()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->sendMsgCallListChange(I)V

    :cond_b
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mNeedToRecoverDialpad:Z

    if-eqz v0, :cond_d

    const-string v0, "initializeInCall : Recover dialpad"

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, v3, v4}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/DialpadFragment;

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/DialpadFragment;->restoreDtmfText(Ljava/lang/String;)V

    :cond_c
    iput-boolean v4, p0, Lcom/android/incallui/InCallActivity;->mNeedToRecoverDialpad:Z

    :cond_d
    const-string v0, "perf - initializeInCall: done"

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private internalResolveIntent(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "fromPopup"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fromPopup"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsFromPopup:Z

    :cond_0
    const-string v0, "fromPopupForAnswer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "fromPopupForAnswer"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->setIsFromPopupForAnswer(Z)V

    :cond_1
    const-string v0, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- internalResolveIntent: SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->relaunchedFromDialer(Z)V

    :cond_3
    const-string v0, "InCallActivity.new_outgoing_call"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "InCallActivity.new_outgoing_call"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    if-eqz v1, :cond_7

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->isEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "selectPhoneAccountAccounts"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    if-nez v2, :cond_7

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- internalResolveIntent: mIsNewOutgoingCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsNewOutgoingCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->showCallCardFragment(Z)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "selectPhoneAccountAccounts"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_2
    const v1, 0x7f09063e

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mSelectAcctListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    invoke-static {v1, v4, v0, v2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->a(IZLjava/util/List;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "tag_select_acct_fragment"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void

    :cond_9
    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mIsNewOutgoingCall:Z

    goto :goto_1

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_b
    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallActivity;->showCallCardFragment(Z)V

    goto :goto_3

    :cond_c
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private isEmergencyCall(Lcom/android/incallui/Call;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private isKeyEventDtmfCharacters(I)Z
    .locals 1

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

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->shouldShowPopup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/SecCallPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const-string v0, "shouldShowPopup()... false"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private launchVideoPopup(I)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "launchVideoPopup"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "overlay popup permission is not granted. so popup doesn\'t appear"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->shouldLaunchVideoPopup(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/SecVideoPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    const-string v0, "shouldLaunchVideoPopup()... false"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private okToDialDtmfTones(I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v2, :cond_4

    const-string v2, "support_folder_hardkey"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->isKeyEventDtmfCharacters(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    :cond_0
    const-string v1, "okToDialDTMFTones call disconnect and return false"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->isKeyEventDtmfCharacters(I)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v2, v1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/DialpadFragment;

    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "okToDialDTMFTones okToDial : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_1
.end method

.method private onDialogDismissed()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mFNDBlockedDialog:Z

    return-void
.end method

.method private queryForCrane()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    move-object v1, v0

    :goto_1
    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/secrcs/RcsShareUI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/secrcs/RcsShareUI;->setupConnection(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method private relaunchedFromDialer(Z)V
    .locals 3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    iget v0, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private removeContentViewGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mContentViewGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private sendDtmf(CI)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDtmf(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sendDtmf: invalid key"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x64

    if-lt p2, v0, :cond_1

    const/16 v0, 0x1388

    if-le p2, v0, :cond_2

    :cond_1
    const-string v0, "sendDtmf: invalid duration"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    const-string v0, "sendDtmf: no active call"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/incallui/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/incallui/InCallActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/android/incallui/InCallActivity$8;-><init>(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)V

    int-to-long v4, p2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setInCallViewsVisibility(Z)V
    .locals 4

    const/4 v1, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallButtonFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallButtonFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_7

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onCoverStateChanged(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_8

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAgifFragmentManager:Lcom/android/incallui/fragment/manager/AgifFragmentManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAgifFragmentManager:Lcom/android/incallui/fragment/manager/AgifFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->getFragment()Lcom/android/incallui/agif/AgifFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAgifFragmentManager:Lcom/android/incallui/fragment/manager/AgifFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->getFragment()Lcom/android/incallui/agif/AgifFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAgifFragmentManager:Lcom/android/incallui/fragment/manager/AgifFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->getFragment()Lcom/android/incallui/agif/AgifFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_9

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_a

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_b

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_c

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->getFragment()Lcom/android/incallui/fragment/VideoCallFragment;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->getFragment()Lcom/android/incallui/fragment/VideoCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->getFragment()Lcom/android/incallui/fragment/VideoCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_d

    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void

    :cond_7
    move v0, v2

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto/16 :goto_2

    :cond_a
    move v0, v2

    goto/16 :goto_3

    :cond_b
    move v0, v2

    goto :goto_4

    :cond_c
    move v0, v2

    goto :goto_5

    :cond_d
    move v1, v2

    goto :goto_6
.end method

.method private setTopMarginOfDialpad(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private shouldLaunchVideoPopup(I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "shouldLaunchVideoPopup: Not video call"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v2, "support_tphone"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "shouldLaunchVideoPopup: tphone mode"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "shouldLaunchVideoPopup: isInMultiWindowMode"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isKidsModeCallApp()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "shouldLaunchVideoPopup: Kids mode"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    packed-switch p1, :pswitch_data_0

    :cond_5
    const-string v0, "shouldLaunchVideoPopup: return true"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :pswitch_0
    const-string v2, "com.android.incallui.InCallActivity"

    invoke-static {v2}, Lcom/android/incallui/util/PackageHelpers;->isTopActivityRunning(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "shouldLaunchVideoPopup: INCALL_ACTIVITY is top activity"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private shouldShowPopup(I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "support_tphone"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "shouldShowPopup: tphone mode"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isKidsModeCallApp()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "shouldShowPopup: Kids mode"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->OVERLAY_POPUP_PLAY:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "shouldShowPopup: Video call"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    packed-switch p1, :pswitch_data_0

    :cond_5
    const-string v0, "shouldShowPopup: return true"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :pswitch_0
    const-string v2, "com.android.incallui.InCallActivity"

    invoke-static {v2}, Lcom/android/incallui/util/PackageHelpers;->isTopActivityRunning(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "shouldShowPopup: INCALL_ACTIVITY is top activity"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    const-string v2, "ims_rcs"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "com.samsung.rcs.share.ContentShareActivity"

    invoke-static {v2}, Lcom/android/incallui/util/PackageHelpers;->isTopActivityRunning(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "shouldShowPopup: RCS_ACTIVITY is top activity"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/incallui/ProximitySensor;->isScreenReallyOff()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    iget-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mHasWindowFocus:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    if-eqz v2, :cond_5

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showDialpad(Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/CallCardUi;->needToShowMenu()Z

    move-result v2

    :goto_0
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v3}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->showDialpad()V

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->updateDialpadIndicatorArea()V

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->setPrimaryCallMenuForDialpad(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/incallui/CallCardUi;->showMenu(Z)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/incallui/CallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    if-nez p1, :cond_5

    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/incallui/UiAdapter;->showCallBannerByDialpad(Z)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/incallui/CallCardUi;->showMenu(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/incallui/CallCardUi;->showMenu(Z)V

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->hideDialpad()V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_0
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;)V
    .locals 3

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

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090065

    new-instance v2, Lcom/android/incallui/InCallActivity$15;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$15;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/InCallActivity$14;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$14;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static showErrorToast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;I)V

    return-void
.end method

.method private showGreenBar(Z)V
    .locals 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v4, 0xa0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "sem_statusbar"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    :cond_0
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-direct {v0}, Lcom/android/incallui/secrcs/RcsShareUI;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/secrcs/RcsShareUI;->isShareActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SHARE active"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "support_tphone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "don\'t show green bar during tphone mode."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move p1, v1

    :cond_3
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "don\'t show green bar during cover closed"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showGreenBar = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-ne v1, v3, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mHasWindowFocus:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e017f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/SemStatusBarManager;->setIndicatorBgColor(I)V

    goto :goto_0

    :cond_6
    move v1, p1

    goto :goto_1
.end method

.method private showStatusBarWhiteIcon(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showStatusBarWhiteIcon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, -0x2001

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method private startLockScreenDuringCallService()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "startLockScreenDuringCallService"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowTabLock()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "- startService LockScreenDuringCall..."

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/LockScreenDuringCall;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private startSelectPhoneAccountDialogActivity(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/incallui/SelectPhoneAccountActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->finish()V

    :cond_0
    return-void
.end method

.method private updateDialpadIndicatorArea()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/DialpadUi;->showIndicator(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/incallui/DialpadUi;->showIndicator(Z)V

    goto :goto_0
.end method

.method private updateIndicatorArea()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/UiAdapter;->showIndicatorArea(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/UiAdapter;->showIndicatorArea(Z)V

    goto :goto_0
.end method

.method private updateScreenType(Z)V
    .locals 5

    const/16 v2, 0xa

    const/4 v1, 0x5

    const/4 v3, 0x1

    const-string v0, "tablet_fullscreen_mode"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, -0x1

    :goto_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->canUseScreenTypeSensor()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    :goto_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyLandscapeUI()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportLandscapeUI()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_3

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateScreenType... screenType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    move v0, v3

    move p1, v3

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getRequestedOrientation()I

    move-result v1

    if-ne v1, v0, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->setRequestedOrientation(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScreenType... screenType: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / RequestedOrientaiton: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getRequestedOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateScreenType: exit. isConnectedMirrorLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_6
    move v0, v3

    goto :goto_1

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method

.method private voiceCallClicked()V
    .locals 5

    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "roaming_auto_dial"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v4, "RADDialOption"

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isCallNumberConverted()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "korea"

    :goto_0
    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0, v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->setAvailablePhoneAccountHandle(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    :goto_1
    const-string v2, "tel"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    :cond_1
    return-void

    :cond_2
    const-string v1, "abroad"

    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public SmartIVR_speakerOnConfirm()V
    .locals 3

    const-string v0, "Smart IVR - Confirm Speaker on dialog shown"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->confirmDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->confirmDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09052d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->confirmDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->confirmDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->confirmDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->confirmDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->confirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public addFlags(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public animateForHideBackground()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-nez v0, :cond_0

    const-string v0, "InCallActivity"

    const-string v1, "animateForHideBackground: mGradientAnimationView is null"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "InCallActivity"

    const-string v1, "animateForHideBackground: hasLiveCallToDisplay"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->animateForHide(I)V

    goto :goto_0
.end method

.method public animateForShrinkBackground(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v1, Lcom/android/incallui/InCallActivity$29;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/InCallActivity$29;-><init>(Lcom/android/incallui/InCallActivity;Z)V

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const v3, 0x3ee66666    # 0.45f

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->getAdjustBackgroundScale(F)F

    move-result v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForScale(FILcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v1}, Lcom/android/incallui/widget/GradientAnimationView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v2, v0}, Lcom/android/incallui/InCallActivity;->animateForDummyBackground(Landroid/animation/AnimatorSet;I)V

    :cond_0
    const-string v0, "InCallActivity"

    const-string v1, "animateForShrinkBackground"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->stopStreamAnimation()V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void
.end method

.method public canUseNavigationBar()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkAndUpdateScreenType(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getRequestedOrientation()I

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallControl;->canUseScreenTypeSensor(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eq v3, v0, :cond_2

    :goto_1
    if-eqz v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->updateScreenType(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InCallActivity - updateScreenType : isScreenTypeSensor ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->rotation(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public clearDigits()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->clearSavedDtmfText()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/DialpadUi;->clearDigits()V

    :cond_1
    return-void
.end method

.method public clearFlags(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public dismissDataChargeAlertDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->onDialogDismissed()V

    return-void
.end method

.method public dismissDataUsageLimitDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public dismissDialogForDisconnect()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/AnswerFragment;->dismissWaitingCallPopup(Z)V

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_ANSWER_OPTION:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->isShowIncomingHideShowLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->enableButtonAnswerAsShowOrHide()V

    :cond_0
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_CDMA:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_GSM:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    :cond_2
    return-void
.end method

.method public dismissInCallMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    const-string v0, "- dismissInCallMenu"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissKeyguard(Z)V
    .locals 2

    const/high16 v1, 0x400000

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "dismissKeyguard getWindow() is null"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public dismissPendingDialogs()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->dismissPendingDialogues()V

    :cond_1
    const-string v0, "roaming_enhancement"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->dismissCallRoamingGuardDialog(Z)V

    :cond_2
    return-void
.end method

.method public dismissPostCharPauseDialog()V
    .locals 2

    const/16 v1, 0xa2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    invoke-virtual {v0}, Lcom/android/incallui/PostCharDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    invoke-virtual {v0}, Lcom/android/incallui/PostCharDialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    :cond_2
    return-void
.end method

.method public dismissPostCharPauseDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPostCharPauseDialog()V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    :goto_0
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAccessibilityTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

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
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDispatchTouchEventListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDispatchTouchEventListener:Landroid/view/View$OnTouchListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->sendLockScreenEvent()V

    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public displayDialpad(ZZ)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isConferenceCallManagerShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    move p2, v0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isShowDialpadRequested()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_4

    move p2, v0

    :cond_4
    const-string v2, "support_folder_single_lcd"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move p2, v0

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-nez p2, :cond_b

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->showDialpad(Z)V

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->setTopMarginOfDialpad(I)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->returnButtonsForDialpad(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/DialpadUi;->showElapsedTimeContainer()V

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->changeViewForMoveDialpad(Z)V

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    :cond_a
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/ProximitySensor;->onDialpadVisible(Z)V

    goto :goto_0

    :cond_b
    if-eqz p1, :cond_c

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->showDialpad(Z)V

    :cond_c
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eqz p1, :cond_14

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3, v2}, Lcom/android/incallui/widget/GradientAnimationView;->animateForHide(I)V

    :cond_d
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/incallui/CallCardUi;->onDialpadVisiblityChange(Z)V

    :cond_e
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v2

    if-eqz v2, :cond_12

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/DialpadUi;->hideElapsedTimeContainer()V

    :cond_f
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->setTopMarginOfDialpad(I)V

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    if-nez v2, :cond_11

    :cond_10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v2, v1, :cond_15

    :goto_3
    iget-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    if-eqz v2, :cond_18

    if-eqz v1, :cond_16

    const v2, 0x7f050014

    :goto_4
    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    if-eqz v1, :cond_17

    const v1, 0x7f050017

    :goto_5
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    :goto_6
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mSlideInListner:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_11
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_19

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    :goto_7
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_12
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/incallui/CallCardUi;->animateForMoveDialpad(Z)V

    :cond_13
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/incallui/CallButtonUi;->enableDialpadButton(Z)V

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->animateForMoveDialpad(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/DialpadUi;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/DialpadUi;->showElapsedTimeContainer()V

    goto/16 :goto_1

    :cond_14
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3, v2}, Lcom/android/incallui/widget/GradientAnimationView;->animateForShow(I)V

    goto/16 :goto_2

    :cond_15
    move v1, v0

    goto/16 :goto_3

    :cond_16
    const v2, 0x7f050015

    goto/16 :goto_4

    :cond_17
    const v1, 0x7f050018

    goto/16 :goto_5

    :cond_18
    const v1, 0x7f050013

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    const v1, 0x7f050016

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    goto/16 :goto_6

    :cond_19
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    goto :goto_7

    :cond_1a
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->animateForMoveDialpad(Z)V

    goto/16 :goto_1
.end method

.method public enableInCallOrientationEventListener(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallOrientationEventListener;->enable(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/incallui/InCallOrientationEventListener;->disable()V

    goto :goto_0
.end method

.method public expandBackgroundForConference(Z)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "InCallActivity"

    const-string v2, "expandBackgroundForConference: incoming call"

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    new-instance v2, Lcom/android/incallui/InCallActivity$31;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$31;-><init>(Lcom/android/incallui/InCallActivity;)V

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz p1, :cond_5

    if-eqz v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/incallui/widget/GradientAnimationView;->animateForScale(FILcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->getAdjustBackgroundScale(F)F

    move-result v0

    goto :goto_2

    :cond_5
    const v0, 0x3ee66666    # 0.45f

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->getAdjustBackgroundScale(F)F

    move-result v0

    goto :goto_2
.end method

.method public finish()V
    .locals 2

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

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/bike/BikeModeController;->finish(Lcom/android/incallui/InCallActivity;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hasPendingErrorDialog()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->finish()V

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->animateForActivityClosed()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forceFinish()V
    .locals 2

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

    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->finish()V

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->animateForActivityClosed()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAgifFragment()Lcom/android/incallui/AgifPresenter$AgifUi;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAgifFragmentManager:Lcom/android/incallui/fragment/manager/AgifFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAgifFragmentManager:Lcom/android/incallui/fragment/manager/AgifFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->getFragment()Lcom/android/incallui/agif/AgifFragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnswerFragment()Lcom/android/incallui/AnswerUi;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallButtonFragment()Lcom/android/incallui/CallButtonUi;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallCardFragment()Lcom/android/incallui/CallCardUi;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallElapsedTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mLastestCallTime:Ljava/lang/String;

    return-object v0
.end method

.method public getConferenceCallManagerShowingState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->isFragmentVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConferenceManagerFragment()Lcom/android/incallui/ConferenceManagerUi;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContentViewSize()Landroid/graphics/Point;
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mContentViewSize:Landroid/graphics/Point;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mContentViewSize:Landroid/graphics/Point;

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mContentViewSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mContentViewSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-lt v1, v2, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mContentViewSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mContentViewSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_6

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mContentViewSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mContentViewSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    :goto_0
    invoke-static {p0}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isNormalWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mContentViewSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mContentViewSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_7

    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-static {p0}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    :cond_3
    :goto_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_4

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-gtz v1, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v2, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget v1, v2, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    :cond_5
    return-object v0

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mContentViewSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mContentViewSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_7
    iget v1, v0, Landroid/graphics/Point;->y:I

    invoke-static {p0}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method public getCurrentOrientation()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    return v0
.end method

.method public getDialpadFragment()Lcom/android/incallui/DialpadUi;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDispatchTouchEventListener()Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDispatchTouchEventListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getInVideoCallMenu()Lcom/android/incallui/InVideoCallMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/InVideoCallMenu;

    invoke-direct {v0, p0}, Lcom/android/incallui/InVideoCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    return-object v0
.end method

.method public getRcsInvitation()Lcom/android/incallui/secrcs/RcsInvitation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    return-object v0
.end method

.method public getRealContentViewSize()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mContentViewSize:Landroid/graphics/Point;

    return-object v0
.end method

.method public getSystemUiVisibility()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTouchPointForNewOutgoingCall()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTouchPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getVideoCallFragment()Lcom/android/incallui/VideoCallUi;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->getFragment()Lcom/android/incallui/fragment/VideoCallFragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    return-object v0
.end method

.method public getVoiceCallButtonsGap()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->getVoiceCallButtonsGap()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleCshInfo(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public handleError(I)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "handleError"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->isCshTopMostActivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsInvitation;->discardInvitation()V

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const v0, 0x7f090292

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f090293

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0900a7

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_4
    const v0, 0x7f090623

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_5
    const v0, 0x7f090624

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_6
    const v0, 0x7f090294

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_7
    const v0, 0x7f090296

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_8
    const v0, 0x7f090291

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_9
    const v0, 0x7f090295

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_a
    const v0, 0x7f090622

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

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

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "handleIncommingIMandFT"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->onNewIncomingRcsSession(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleInvitation(ZLandroid/content/Intent;)V
    .locals 2

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "handleRcsAction"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->onNewIncomingRcsSession(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleRcsAction(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "handleRcsAction from secInCall"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.rcs.intent.action.STOP_SHARING_SERVICE_DIALOG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "Showing invitation dialog..."

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/secrcs/RcsInvitation;->updateState(Landroid/content/Context;Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public hasWindowFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mHasWindowFocus:Z

    return v0
.end method

.method public hideDialpadForDisconnect()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->updateFragment()V

    :cond_0
    return-void
.end method

.method public hideDialpadForModifyCall()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->updateFragment()V

    :cond_0
    return-void
.end method

.method public hideRcsCallCard()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->hideRcsCallCard(Lcom/android/incallui/secrcs/RcsInvitation;)V

    return-void
.end method

.method public initDialpad()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/DialpadFragment;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->showDialpad(Z)V

    goto :goto_0
.end method

.method public isActivityFullWindow()Z
    .locals 5

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "InCallActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActivityFullWindow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimateDialpadOnShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    return v0
.end method

.method public isBackgroundShowing()Z
    .locals 1

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

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->isVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDialpadVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFDNDialogDismissed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mFNDBlockedDialog:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForegroundActivity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method public isFreeFormMultiWindow()Z
    .locals 4

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.incallui.InCallActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->semIsFreeform()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFromPopupForAnswer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsFromPopupForAnswer:Z

    return v0
.end method

.method public isInMultiWindowMode()Z
    .locals 1

    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->isInMultiWindowMode()Z

    move-result v0

    return v0
.end method

.method public isMenuOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiWindowUX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsMultiWindowUX:Z

    return v0
.end method

.method public isNavigationBarVisible()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isNormalWindow()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowDialpadRequested()Z
    .locals 2

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

.method public isTabletUX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsTabletUX:Z

    return v0
.end method

.method isVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isSafeToCommitTransactions()Z

    move-result v0

    return v0
.end method

.method public maybeShowErrorDialogOnDisconnect(Landroid/telecom/DisconnectCause;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "maybeShowErrorDialogOnDisconnect"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "show ErrorDialog or ErrorToast"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Lcom/android/incallui/operator/usa/InCallUIExtension;->maybeShowErrorToastOnDisconnect(Landroid/content/Context;Landroid/telecom/DisconnectCause;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "FDN_BLOCKED"

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mFNDBlockedDialog:Z

    :cond_3
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public needToAnimateForNewOutgoingCall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsNewOutgoingCall:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "onBackPressed()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->onBackPress()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2, v1}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isConferenceCallManagerShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->showConferenceCallManager(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardUi;->showManageConferenceCallButton(Z)V

    :cond_4
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateCallCardFragment()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->closeDrawer()V

    :cond_6
    const-string v0, "Consume Back press for an incoming call"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_9

    :cond_8
    const-string v0, "Consume Back press for calling"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isLostPhoneLock()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Consume Back press for isLostPhoneLock"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->setExcludeFromRecents(Z)V

    :try_start_0
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "InCallActivity"

    const-string v1, "super.onBackPressed() error"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9

    const/4 v8, 0x0

    const v7, 0x3ee66666    # 0.45f

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    const-string v0, "onConfigurationChanged - return : newConfig is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-static {v3, v8, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged rotation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setDeviceRotatoin(I)V

    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_15

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isActivityFullWindow()Z

    move-result v4

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v5, :cond_4

    invoke-static {p0}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->getScaleY()F

    move-result v0

    cmpl-float v0, v0, v7

    if-nez v0, :cond_6

    :cond_4
    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->getScaleY()F

    move-result v0

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_6

    :cond_5
    iget v0, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v4, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    :cond_7
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lcom/android/incallui/ProximitySensor;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_8
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->canUseScreenTypeSensor()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/android/incallui/util/VideoCallAppLogging;->orientationMode(Landroid/app/Activity;)V

    :cond_9
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "onConfigurationChanged()->setOrientation()"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v4}, Lcom/android/incallui/secrcs/RcsInvitation;->setOrientation(I)V

    :cond_a
    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iget v4, p0, Lcom/android/incallui/InCallActivity;->mCurrentMobileKeyboardCovered:I

    if-eq v0, v4, :cond_b

    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/incallui/InCallActivity;->mCurrentMobileKeyboardCovered:I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onMobileKeyboardChanged()V

    iget v0, p0, Lcom/android/incallui/InCallActivity;->mCurrentMobileKeyboardCovered:I

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateNavigationBarFlag()V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_b
    iget v0, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v4, :cond_c

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget v4, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallPresenter;->onConfigurationChange(I)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->updateNavigationBar()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentViewSize()Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallPresenter;->onContentViewChanged(Landroid/graphics/Point;)V

    :cond_c
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sget v4, Lcom/android/incallui/InCallActivity;->TABLET_SMALL_WIDTH_VALUE:I

    if-lt v0, v4, :cond_d

    move v2, v1

    :cond_d
    invoke-direct {p0, p1, v2}, Lcom/android/incallui/InCallActivity;->getMultiWindowUX(Landroid/content/res/Configuration;Z)Z

    move-result v0

    iget-boolean v4, p0, Lcom/android/incallui/InCallActivity;->mIsTabletUX:Z

    if-ne v2, v4, :cond_e

    iget-boolean v4, p0, Lcom/android/incallui/InCallActivity;->mIsMultiWindowUX:Z

    if-eq v0, v4, :cond_13

    :cond_e
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mIsTabletUX:Z

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsMultiWindowUX:Z

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_f
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->onSMultiWindowOnChanged()V

    :cond_10
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->onSMultiWindowOnChanged()V

    :cond_11
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->onSMultiWindowOnChanged()V

    :cond_12
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->onSMultiWindowOnChanged()V

    :cond_13
    :goto_2
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->onSMultiWindowOnChanged()V

    :cond_14
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/util/ScreenControlUtils;->isShowingNavigationBar(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    if-nez v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    invoke-static {p0, v1}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    goto/16 :goto_0

    :cond_15
    move v0, v2

    goto/16 :goto_1

    :cond_16
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    goto :goto_2

    :cond_17
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->onSMultiWindowOnChanged()V

    goto :goto_2
.end method

.method public onContinue(Landroid/view/View;)V
    .locals 2

    const-string v0, "Smart IVR - Speaker switched on"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->toggleSpeakerphone()V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->confirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public onCoverStateChanged(Z)V
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverStateChanged isClosed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->returnToNormalWindowMode()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->setInCallViewsVisibility(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->updateStatusBarColor(I)V

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    :cond_1
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverStateChanged : isAutoAnswered - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-interface {v1, v0}, Lcom/android/incallui/CallCardUi;->setAMView(Z)V

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    const/16 v6, 0xa9

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "VerificationLog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perf - onCreate()...  this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103012b

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/wrapper/TypefaceWrapper;->setAppTypeface(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v8, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "tablet_fullscreen_mode"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TABLET_DEVICE , finish"

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->finish()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/bike/BikeModeController;->onCreate(Lcom/android/incallui/InCallActivity;)V

    :cond_1
    const v1, -0x7fd78000

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateNavigationBarFlag()V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->updateStatusBarColor(I)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateNavigationBarBgColor()V

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "sem_statusbar"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v5, "samsung_screen_timeout_incall"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v1, :cond_5

    const-wide/16 v6, 0x7530

    invoke-virtual {v0, v6, v7}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    const-wide/16 v6, 0x4e20

    invoke-virtual {v0, v6, v7}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWindow().setAttributes(lp) "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0400f5

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->setContentView(I)V

    new-instance v0, Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->registerInCallContentViewListener()V

    const v0, 0x7f10024b

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/GradientAnimationView;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/GradientAnimationView;->setUp(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->hide()V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    const v0, 0x7f10015a

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mContentView:Landroid/view/View;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mContentViewSize:Landroid/graphics/Point;

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->addContentViewGlobalLayout()V

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToAnimateForOutgoingCall()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "launching activity with fade in animation"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    const v0, 0x7f05000d

    const v1, 0x7f05000e

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallActivity;->overridePendingTransition(II)V

    const v0, 0x7f10031c

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialButtonForAnim:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p0}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {p0}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialButtonForAnim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialButtonForAnim:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialButtonForAnim:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;-><init>(Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mRcsBroadcastReceiver:Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRcsBroadcastReceiver:Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->register(Landroid/content/Context;)V

    const-string v0, "mRcsBroadcastReceiver.register"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const v0, 0x7f100324

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f100220

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/secrcs/RcsInvitation;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    :cond_7
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mNeedToInitialize:Z

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/incallui/InCallActivity;->mCurrentOrientation:I

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_14

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/incallui/InCallActivity;->mCurrentMobileKeyboardCovered:I

    :cond_8
    iget v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sget v5, Lcom/android/incallui/InCallActivity;->TABLET_SMALL_WIDTH_VALUE:I

    if-lt v0, v5, :cond_15

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsTabletUX:Z

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsTabletUX:Z

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/InCallActivity;->getMultiWindowUX(Landroid/content/res/Configuration;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsMultiWindowUX:Z

    if-eqz p1, :cond_c

    const-string v0, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v0, v4

    :goto_3
    iput v0, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mNeedToRecoverDialpad:Z

    :cond_9
    iput-object v8, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    const-string v0, "InCallActivity.dialpad_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "tag_select_acct_fragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mSelectAcctListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->a(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V

    :cond_a
    const-string v0, "visual_call_center_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "smart_ivr_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const-string v0, "InCallActivity.has_outgoing_call"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mHasOutgoingCall:Z

    const-string v0, "InCallActivity.has_ivr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mHasIVR:Z

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_e

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isEcholocateEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_d
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/InCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDtmfReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_f

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "samsung.intent.action.knoxcustom.SEND_DTMF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDtmfReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/InCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_f
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->setActivity(Lcom/android/incallui/InCallActivity;)V

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->addListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_SupportWhitePages"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/whitepages/nameid/f;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/whitepages/nameid/f;->a()V

    :cond_10
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_11

    sput-boolean v3, Lcom/android/incallui/secrcs/RcsShareUI;->isMT:Z

    :cond_11
    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "queryForCrane called new one"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->queryForCrane()V

    :cond_12
    const-string v0, "ims_capability_check_on_call_end"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/ImsCommonUtils;->connectCapabilityManager(Landroid/content/Context;)V

    :cond_13
    const-string v0, "onCreate(): exit"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_14
    move v0, v3

    goto/16 :goto_1

    :cond_15
    move v0, v3

    goto/16 :goto_2

    :cond_16
    const/4 v0, 0x3

    goto/16 :goto_3

    :cond_17
    move v1, v0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 7

    const/16 v6, 0xa9

    const/16 v5, 0xa0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

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

    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onDestroy()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/bike/BikeModeController;->onDestroy(Lcom/android/incallui/InCallActivity;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->clearActivity()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updateIsChangingConfigurations()V

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->removeContentViewGlobalLayout()V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->unlock()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasOutgoingCall()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->handleShowGreenBarMessage()V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    const-string v0, "support_tphone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showGreenBar(Z)V

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "!CallList.getInstance().hasLiveCall()"

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRcsBroadcastReceiver:Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->unregister(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->disconnect(Landroid/content/Context;)V

    :cond_6
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->destroyInCall()V

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    const-string v0, " unregisterReceiver - - mScreenOffReceiver"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDtmfReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDtmfReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->tearDown()V

    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->tearDown()V

    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    :cond_b
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->setActivity(Lcom/android/incallui/InCallActivity;)V

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->removeListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    const-string v0, "visual_call_center_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDeviceOnWiFi()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "visual_call_status"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_c

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/incallui/InCallActivity$11;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$11;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_c
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {v2}, Lcom/android/incallui/util/VisualCallCenter;->VCC_setDisplayDailpad(Z)V

    :cond_d
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/PrivatePolicy;->clearForActivityOnDestroy()V

    :cond_e
    const-string v0, "ims_capability_check_on_call_end"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->disconnectCapabilityManager()V

    :cond_f
    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->getInstance()Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->getInstance()Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->unbind()V

    :cond_10
    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onFragmentAttached(Landroid/app/Fragment;)V
    .locals 2

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

    return-void
.end method

.method public onHmtStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/InCallActivity;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_0
    return v1

    :sswitch_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/bike/BikeModeController;->onKeyDownConsumed(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->handleCallKey()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "InCallActivity should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "support_folder_single_lcd"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getInVideoCallMenu()Lcom/android/incallui/InVideoCallMenu;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getInVideoCallMenu()Lcom/android/incallui/InVideoCallMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InVideoCallMenu;->clickedCaptureImage()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/CallCardUi;->onVolumeKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    sget-boolean v0, Lcom/android/incallui/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "----------- InCallActivity View dump --------------"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View dump:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

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

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/incallui/DialpadUi;->onDialerKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    const-string v2, "support_folder_hardkey"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isFolerClosed()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const-string v1, "onKeyUp KEYCODE_CALL"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->voiceCallClicked()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x52

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/CallCardUi;->isMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v1}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v1}, Lcom/android/incallui/InCallMenu;->getUniqueMenuItem()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "KEYCODE_MENU showInCallMenu"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isCSVideoCall()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isPrimaryVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->showInCallMenu()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->toggleVideoButtonContainer()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/incallui/InCallActivity$13;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$13;-><init>(Lcom/android/incallui/InCallActivity;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->showInCallMenu()V

    goto/16 :goto_0

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

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

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

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

    const/16 v2, 0xa6

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiWindowModeChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onMultiWindowModeChanged(Z)V

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->updateScreenType(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mNeedToInitialize:Z

    if-eqz v0, :cond_6

    const-string v0, "onModeChanged: initializeInCall()..."

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    if-eqz v0, :cond_14

    if-nez p1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-boolean v4, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    const-string v0, "onModeChanged - unregisterReceiver  - mScreenOffReceiver"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->resetFullScreenMode()V

    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->updateDialpadIndicatorArea()V

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->updateIndicatorArea()V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateNavigationBarFlag()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallActivity;->setStatusBar(Z)V

    :cond_4
    :goto_3
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCoverViewManager()Lcom/android/incallui/accessory/CoverViewManager;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCoverViewManager()Lcom/android/incallui/accessory/CoverViewManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/accessory/CoverViewManager;->onCoverStateChanged(Z)V

    :cond_5
    return-void

    :cond_6
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isOnehandModeOn()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->onSMultiWindowOnChanged()V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->onSMultiWindowOnChanged()V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->onSMultiWindowOnChanged()V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->onSMultiWindowOnChanged()V

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->onSMultiWindowOnChanged()V

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->onSMultiWindowOnChanged()V

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->onSMultiWindowOnChanged()V

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragmentManager:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->onSMultiWindowOnChanged()V

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->onSMultiWindowOnChanged()V

    :cond_f
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/fragment/manager/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->onSMultiWindowOnChanged()V

    :cond_10
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->onSMultiWindowOnChanged()V

    :cond_11
    :goto_4
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->onSMultiWindowOnChanged()V

    goto/16 :goto_0

    :cond_12
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_13

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_11

    :cond_13
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->onSMultiWindowOnChanged()V

    goto :goto_4

    :cond_14
    if-eqz p1, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    const-string v0, "onModeChanged -  registerReceiver - mScreenOffReceiver "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_15
    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->setStatusBar(Z)V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EXTRA_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "onNewIntent()->startActivity()"

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->onBackPressed()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 8

    const/16 v7, 0xa7

    const/4 v3, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "onPause()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onPause()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v6, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iput-boolean v5, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    iput-boolean v5, p0, Lcom/android/incallui/InCallActivity;->mIsNewOutgoingCall:Z

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, v2, v6}, Lcom/android/incallui/DialpadUi;->onDialerKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityPaused(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "onPause(): unsetActivity"

    invoke-static {p0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->unsetActivity(Lcom/android/incallui/InCallActivity;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityDestroyed(Lcom/android/incallui/InCallActivity;)V

    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/incallui/InCallActivity;->updateAppSwitchSystemKeyEvent(Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/bike/BikeModeController;->onPause(Lcom/android/incallui/InCallActivity;)V

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallActivity;->setStatusBar(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v4}, Lcom/android/incallui/InCallActivity;->showGreenBar(Z)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isKidsModeCallApp()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v3, v5}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    const-string v1, "Enable home key"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    const-string v1, "true"

    const-string v2, "ril.domesticOtaStart"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "domesticOtaStart - Enable home key"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v5}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v1, 0xbb

    invoke-virtual {p0, v1, v5}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    :cond_6
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "RcsShareUI.unregisterRcsObservers"

    invoke-static {p0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/incallui/secrcs/RcsShareUI;->unregisterRcsObserver(I)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.PHONE_INACTIVE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.rcs.framework.mediatransfer.contentshare.notification"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_7
    const-string v1, "smart_ivr_callerid_info"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "Achintya : in onPause before if statement "

    invoke-static {p0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Achintya : before if : VoiceCallButtonVCCFragment.wasIvrCall =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->wasIvrCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " call object : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Achintya : before if : VoiceCallButtonVCCFragment.wasIvrCall =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->wasIvrCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " call object : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    sget-boolean v1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->wasIvrCall:Z

    if-eqz v1, :cond_b

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_b

    :cond_8
    sput-boolean v4, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->SMART_IVR_first:Z

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VisualCallCenter;->VCC_deleteShortCutsFromInCallUI()V

    :cond_9
    sget-object v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->publicCallPath:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/util/VisualCallCenter;->VCC_isShortcutPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Achintya : in onPause path fetched is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Achintya : in onPause getting inCallApp Context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/incallui/SmartIVRDialogActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "shortcut_path"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sput-boolean v5, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->wasIvrCall:Z

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_a
    sput-object v6, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->publicCallPath:Ljava/lang/String;

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    :cond_c
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->needToUseLockScreenDuringCall()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d
    const-string v0, "stopService LockScreenDuringCall..."

    invoke-static {p0, v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/LockScreenDuringCall;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->stopService(Landroid/content/Intent;)Z

    :cond_e
    const-string v0, "support_bixby"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/a;->b()V

    :cond_f
    const-string v0, "onPause(): exit"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_10
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    goto/16 :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    invoke-static {p3}, Lcom/android/incallui/coreapps/PermissionUtils;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/coreapps/CoreAppsManager;->sendPermissionStatus(I)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/incallui/coreapps/CoreAppsManager;->addCheckedPermissions([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsManager;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/android/incallui/coreapps/CoreAppsManager;->sendPermissionStatus(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 11

    const/16 v10, 0xa4

    const/16 v9, 0xa1

    const/4 v8, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "VerificationLog"

    const-string v3, "onResume"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "perf - onResume()..."

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onResume()V

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->awaken()V

    const-string v0, "ims_support_multimedia_caller_id"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isMcidDownloadble()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x2000

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    const-string v0, "SecInCallActiviy onResume - FLAG_SECURE : on"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->updateScreenType(Z)V

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onCoverStateChanged(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->returnToNormalWindowMode()V

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityResumed(Lcom/android/incallui/InCallActivity;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->clearFullscreen()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v3

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_5

    :cond_3
    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isNormalWindow()Z

    move-result v0

    if-nez v0, :cond_1d

    if-nez v3, :cond_1d

    :cond_5
    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    :cond_6
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->checkAndUpdateDeivceOrientation()V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->stopVideoPipService()V

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->OVERLAY_POPUP_PLAY:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hideVideoPopup()V

    :cond_7
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hideCallPopup()V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateKeepScreenOnFlag()V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "sem_statusbar"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-nez v3, :cond_9

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa9

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa9

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    :cond_9
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showGreenBar(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1e

    move v3, v1

    :goto_1
    if-nez v3, :cond_a

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v0, v10, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_c
    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->updateAppSwitchSystemKeyEvent(Z)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->setStatusBar(Z)V

    :goto_2
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_d
    :goto_3
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isKidsModeCallApp()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, v8, v1}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    const-string v0, "Disable home key"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_e
    const-string v0, "true"

    const-string v4, "ril.domesticOtaStart"

    invoke-static {v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "domesticOtaStart - Disable home key"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v8, v1}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    :cond_f
    iget v0, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    if-eq v0, v1, :cond_11

    iget v0, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_23

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(ZZ)V

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/android/incallui/DialpadUi;->setDtmfText(Ljava/lang/String;)V

    :cond_10
    :goto_4
    iput v1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    :cond_11
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "RcsShareUI.registerRcsObservers"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/secrcs/RcsShareUI;->stopOverlayService(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->registerRcsObserver(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v4, Lcom/android/incallui/InCallActivity$10;

    invoke-direct {v4, p0}, Lcom/android/incallui/InCallActivity$10;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_12
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.PHONE_ACTIVE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.samsung.rcs.framework.mediatransfer.contentshare.notification"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " hasActiveCall "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " hasIncomingCall "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-nez v3, :cond_13

    if-eqz v4, :cond_13

    const-string v4, " RcsShareUI resumeShare called"

    invoke-static {p0, v4, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/android/incallui/secrcs/RcsShareUI;->resumeShare(Landroid/content/Context;Lcom/android/incallui/Call;)V

    :cond_13
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogOnResume:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogCallId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogChars:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lcom/android/incallui/InCallActivity;->showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtyNotification()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "display tty notification!"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->onTtyNotification(Z)V

    :cond_15
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->needToUseLockScreenDuringCall()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->sendLockScreenEvent()V

    :cond_16
    const-string v0, "support_tphone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->returnToNormalWindowMode()V

    :cond_17
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_18

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    const-string v0, " unregisterReceiver - mScreenOffReceiver "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_18
    :goto_6
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    if-eqz v4, :cond_19

    iget v0, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sget v5, Lcom/android/incallui/InCallActivity;->TABLET_SMALL_WIDTH_VALUE:I

    if-lt v0, v5, :cond_25

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsTabletUX:Z

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsTabletUX:Z

    invoke-direct {p0, v4, v0}, Lcom/android/incallui/InCallActivity;->getMultiWindowUX(Landroid/content/res/Configuration;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsMultiWindowUX:Z

    :cond_19
    const-string v0, "support_bixby"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/ia/IAStateListener;->getInstance()Lcom/android/incallui/ia/IAStateListener;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$d;)V

    :cond_1a
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mNeedToInitialize:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa6

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateGradientColor()V

    const/16 v0, 0x3e8

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_1b

    iget-boolean v4, p0, Lcom/android/incallui/InCallActivity;->mIsFromPopup:Z

    if-eqz v4, :cond_26

    :cond_1b
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perf - onResume: initializeInCall will be called after "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa6

    int-to-long v4, v2

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1c
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    const-string v0, "VerificationLog"

    const-string v2, "Executed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "perf - onResume(): done"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void

    :cond_1d
    move v0, v2

    goto/16 :goto_0

    :cond_1e
    move v3, v2

    goto/16 :goto_1

    :cond_1f
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isLostPhoneLock()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOtaMode()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->setStatusBar(Z)V

    goto/16 :goto_2

    :cond_21
    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->setStatusBar(Z)V

    goto/16 :goto_2

    :cond_22
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    goto/16 :goto_3

    :cond_23
    const-string v0, "onResume : force hide dialpad"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, v2, v2}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    goto/16 :goto_4

    :cond_24
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v4, 0x3e7

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/android/incallui/InCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mScreenOffRegistered:Z

    const-string v0, "- registerReceiver - mScreenOffReceiver"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_25
    move v0, v2

    goto/16 :goto_7

    :cond_26
    if-eqz v3, :cond_27

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_27

    const/16 v2, 0x1f4

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_27
    move v2, v0

    goto/16 :goto_8
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "InCallActivity.show_dialpad"

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/CallButtonUi;->isDialpadVisible()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "InCallActivity.dialpad_text"

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/DialpadUi;->getDtmfText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    if-eqz v0, :cond_3

    const-string v0, "visual_call_center_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "smart_ivr_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "InCallActivity.has_outgoing_call"

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    iget-boolean v1, v1, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsOutGoingCall:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "InCallActivity.has_ivr"

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    iget-boolean v1, v1, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsHasIVR:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSpeakerOff(Landroid/view/View;)V
    .locals 1

    const-string v0, "Smart IVR - Speaker not switched on"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->confirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method protected onStart()V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "onStart()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onStart()V

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->controlSystemUiVisibilityImmersiveSticky()V

    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.intent.action.RESUME_SHARING_SERVICE_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "Showing invitation dialog..."

    invoke-static {p0, v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/incallui/secrcs/RcsInvitation;->updateState(Landroid/content/Context;Lcom/android/incallui/Call;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->setActivity(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getRequestedOrientation()I

    move-result v1

    sget v2, Lcom/android/incallui/InCallOrientationEventListener;->FULL_SENSOR_SCREEN_ORIENTATION:I

    if-ne v1, v2, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->enableInCallOrientationEventListener(Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onActivityStarted()V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityStarted(Lcom/android/incallui/InCallActivity;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    const-string v0, "onStop()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onStop()V

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->enableInCallOrientationEventListener(Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updateIsChangingConfigurations()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onActivityStopped()V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityStopped(Lcom/android/incallui/InCallActivity;)V

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->addFlagTurnOnScreen(Z)V

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->OVERLAY_POPUP_PLAY:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->launchVideoPopup(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->resetRevealAnimator()V

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/incallui/InCallActivity;->showGreenBar(Z)V

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallActivity;->setStatusBar(Z)V

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mFNDBlockedDialog:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->onDialogDismissed()V

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/ProximitySensor;->isScreenReallyOff()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "onStop: send EVENT_COLLAPSE_PANELS"

    invoke-static {p0, v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa9

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "onStop(): finish"

    invoke-static {p0, v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallActivity;->setExcludeFromRecents(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->finish()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "onStop(): unsetActivity"

    invoke-static {p0, v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->clearActivity()V

    :goto_0
    const-string v0, "onStop(): exit"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->startVideoPipService()V

    goto :goto_0
.end method

.method public onTtyNotification(Z)V
    .locals 4

    const/4 v3, 0x1

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

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onTtyNotification return "

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090679

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090367

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/incallui/InCallActivity$21;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$21;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/InCallActivity$20;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/InCallActivity$20;-><init>(Lcom/android/incallui/InCallActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    const-string v0, "onTtyNotification show "

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/InCallUISystemDB;->setTtyNotification(I)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6

    const/16 v5, 0xa6

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perf - onWindowFocusChanged("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mHasWindowFocus:Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hideCallPopup()V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/android/incallui/CallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/DialpadUi;->showSoftInput()V

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->needToUseLockScreenDuringCall()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->sendLockScreenEvent()V

    :cond_2
    if-eqz v3, :cond_7

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    if-nez v0, :cond_7

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/AnswerUi;->isRejectCallWithMsgDrawerOpened()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {p0, v2}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    :cond_3
    const-string v0, "block_data_during_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/TelecomAdapter;->setCallProtectionValue(Z)V

    const-string v0, "onWindowFocusChanged: setCallProtectionValue()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mHasWindowFocus:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCarModeOn()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->showGreenBar(Z)V

    :cond_5
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/TelecomAdapter;->notifyInCallUIWindowFocus(Z)V

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mNeedToInitialize:Z

    if-eqz v0, :cond_6

    const-string v0, "perf - onWindowFocusChanged: initializeInCall()..."

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->updateGradientColor(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    const-string v0, "perf - onWindowFocusChanged: done"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method public postAccessibilityEventForUpdateScreen()V
    .locals 3

    const-string v0, "postAccessibilityEventForUpdateScreen"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x800

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "sent TYPE_WINDOW_CONTENT_CHANGED"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public registerInCallContentViewListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallContentViewListener:Lcom/android/incallui/InCallContentViewListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/InCallActivity$32;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$32;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallContentViewListener:Lcom/android/incallui/InCallContentViewListener;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallContentViewListener:Lcom/android/incallui/InCallContentViewListener;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallContentViewListener;->registerListener(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeInCallContentViewListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallContentViewListener:Lcom/android/incallui/InCallContentViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallContentViewListener:Lcom/android/incallui/InCallContentViewListener;

    invoke-virtual {v0}, Lcom/android/incallui/InCallContentViewListener;->removeListener()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallContentViewListener:Lcom/android/incallui/InCallContentViewListener;

    :cond_0
    return-void
.end method

.method public requestSystemKeyEvent(IZ)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->getController()Lcom/android/incallui/operator/dcm/AnswerMemoController;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->getController()Lcom/android/incallui/operator/dcm/AnswerMemoController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/operator/dcm/AnswerMemoController;->handleSystemEvent(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, p1, v0, p2}, Lcom/samsung/android/view/SemWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public returnToNormalWindowMode()V
    .locals 2

    const-string v0, "returnToNormalWindowMode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->semExitMultiWindowMode()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method public sendLockScreenEvent()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->sendLockScreenEvent(Z)V

    return-void
.end method

.method public sendLockScreenEvent(Z)V
    .locals 5

    const/16 v4, 0xa7

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->needToUseLockScreenDuringCall()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sendLockScreenEvent"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->startLockScreenDuringCallService()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public setAnimateDialpadOnShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    return-void
.end method

.method public setCallElapsedTime(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mLastestCallTime:Ljava/lang/String;

    :goto_0
    return-void

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

    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mDispatchTouchEventListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setExcludeFromRecents(Z)V
    .locals 6

    const-string v0, "InCallActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExcludeFromRecents : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getTaskId()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    :try_start_0
    invoke-virtual {v0}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    iget v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne v4, v3, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "InCallActivity"

    const-string v5, "IllegalArgumentException when excluding task from recents."

    invoke-static {v4, v5, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v4, "InCallActivity"

    const-string v5, "RuntimeException when excluding task from recents."

    invoke-static {v4, v5, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setInCallMenuInstance(Lcom/android/incallui/InCallMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-void
.end method

.method public setIsFromPopupForAnswer(Z)V
    .locals 5

    const/16 v4, 0xa8

    const-string v0, "InCallActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsFromPopupForAnswer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mIsFromPopupForAnswer:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public setNeedToAnimateForNewOutgoingCall(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mIsNewOutgoingCall:Z

    return-void
.end method

.method public setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/DialpadUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPrimaryCallMenuForDialpad(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/DialpadUi;->setPrimaryCallMenuForDialpad(Z)V

    :cond_0
    return-void
.end method

.method public setShowDialpadRequested(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    return-void

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public setStatusBar(Z)V
    .locals 3

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusBar = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "sem_statusbar"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    move p1, v1

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/SemStatusBarManager;->disable(I)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/incallui/bike/BikeModeController;->setStatusBar(Lcom/android/incallui/InCallActivity;Landroid/app/SemStatusBarManager;Z)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/SemStatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method public setUpRcsCallCard(Lcom/android/incallui/Call;)V
    .locals 3

    const-string v0, "setUpRcsCallCard"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/secrcs/RcsInvitation;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->setupRcsCallCard(Landroid/content/Context;Lcom/android/incallui/secrcs/RcsInvitation;Lcom/android/incallui/Call;)V

    return-void
.end method

.method public setupInCallMenu(ILandroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- setupInCallMenu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0b0135

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/android/incallui/InCallActivity$InCallActivityMenu;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/incallui/InCallActivity$InCallActivityMenu;-><init>(Lcom/android/incallui/InCallActivity;Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    :cond_0
    return-void
.end method

.method public showCallCardFragment(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->setVisible(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method public showConferenceCallManager()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->showConferenceCallManager(Z)V

    return-void
.end method

.method public showConferenceCallManager(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->setVisible(Z)V

    :cond_0
    const-string v0, "support_folder_hardkey"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/incallui/CallButtonUi;->setFocusInCallButton(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDataChargeAlertDialog()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "videoAlertShowNeverAgainIncomingCall"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " showIncomingDataChargeAlert showNeverAgain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f040046

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/InCallActivity$26;

    invoke-direct {v2, p0, v1}, Lcom/android/incallui/InCallActivity$26;-><init>(Lcom/android/incallui/InCallActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0903ae

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f090065

    new-instance v3, Lcom/android/incallui/InCallActivity$28;

    invoke-direct {v3, p0}, Lcom/android/incallui/InCallActivity$28;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/incallui/InCallActivity$27;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$27;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public showDataChargeAlertToast()V
    .locals 2

    const v0, 0x7f090374

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showDataUsageLimitDialog(I)V
    .locals 3

    const-string v0, "showDataUsageLimitDialog"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f0b0010

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090135

    new-instance v2, Lcom/android/incallui/InCallActivity$23;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$23;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090136

    new-instance v2, Lcom/android/incallui/InCallActivity$22;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$22;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showDataUsageLimitDialogforTMO()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "showDataUsageLimitDialogforTMO"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f0b0010

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090139

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090065

    new-instance v2, Lcom/android/incallui/InCallActivity$24;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$24;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDataUsageLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    :cond_1
    return-void
.end method

.method public showErrorDialog_Divert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showIMSErrorDialog_Divert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/incallui/util/SecErrorDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "error_message"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "number"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "sendStartUpErrorViaATCommand"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public showInCallMenu()V
    .locals 1

    const-string v0, "- showInCallMenu"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    :cond_0
    return-void
.end method

.method public showNotifyWifiToLteDialog()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "showNotifyWifiToLteDialog"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040043

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f100114

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f090378

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090065

    new-instance v2, Lcom/android/incallui/InCallActivity$25;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$25;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showPostCharPauseDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPostCharPauseDialog()V

    new-instance v0, Lcom/android/incallui/PostCharDialogFragment;

    const-string v1, "postCharPause"

    invoke-direct {v0, p1, p2, v1}, Lcom/android/incallui/PostCharDialogFragment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "postCharPause"

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/PostCharDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa2

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "showPostCharPauseDialog is ignored"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showPostCharWaitDialog during Screen off callId  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  chars  :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mWaitDialog_callId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/incallui/InCallActivity;->mWaitDialog_chars:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPostCharPauseDialog()V

    new-instance v0, Lcom/android/incallui/PostCharDialogFragment;

    const-string v1, "postCharWait"

    invoke-direct {v0, p1, p2, v1}, Lcom/android/incallui/PostCharDialogFragment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "postCharWait"

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/PostCharDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "showPostCharWaitDialog is ignored"

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public startVideoPipService()V
    .locals 4

    const/4 v1, 0x0

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->MULTITASKING_PIP:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "startVideoPipService failed : overlay popup permission is not granted."

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->pip(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isKidsModeCallApp()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    const-string v2, "com.android.incallui.InCallActivity"

    invoke-static {v2}, Lcom/android/incallui/util/PackageHelpers;->isTopActivityRunning(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InCallActivity - startVideoPipService : can="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->pip(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/VideoPipService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_2
.end method

.method public stopVideoPipService()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->getVideoPipService()Lcom/android/incallui/service/VideoPipService;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "InCallActivity - stopVideoPipService"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->pip(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->getVideoPipService()Lcom/android/incallui/service/VideoPipService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/VideoPipService;->stopPipService()V

    :cond_0
    return-void
.end method

.method public updateAppSwitchSystemKeyEvent(Z)V
    .locals 3

    const/16 v2, 0xbb

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeModeController;->updateAppSwitchSystemKeyEventConsumed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->getController()Lcom/android/incallui/operator/dcm/AnswerMemoController;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->getController()Lcom/android/incallui/operator/dcm/AnswerMemoController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/operator/dcm/AnswerMemoController;->handleSystemEvent(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsAppSwitchSystemKeyEventRequested:Z

    if-eq v0, p1, :cond_0

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

    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mIsAppSwitchSystemKeyEventRequested:Z

    invoke-virtual {p0, v2, p1}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    goto :goto_0
.end method

.method public updateCallCardFragment()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallCardFragment;

    :cond_0
    return-void
.end method

.method public declared-synchronized updateGradientBackground()V
    .locals 9

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_2

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_15

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_15

    move-object v6, v5

    :goto_1
    invoke-virtual {v6}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v5

    const/4 v4, -0x1

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Lcom/android/incallui/SecCall;->getModifyType()I

    move-result v4

    move v5, v4

    :goto_2
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-nez v4, :cond_3

    const-string v0, "InCallActivity"

    const-string v1, "updateGradientBackground: mGradientAnimationView is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    invoke-static {v6}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/android/incallui/AnswerUi;->isAlreadyAnimationProcessing()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v0, "InCallActivity"

    const-string v1, "updateGradientBackground: answer is processing"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const-string v0, "InCallActivity"

    const-string v1, "updateGradientBackground: video call"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->isStreamAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InCallActivity"

    const-string v1, "updateGradientBackground: stopStreamAnimation"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->stopStreamAnimation()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v4}, Lcom/android/incallui/widget/GradientAnimationView;->hide()V

    :cond_6
    :goto_3
    const-string v4, "InCallActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateGradientBackground: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-static {v8}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v4, v7, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const-string v6, "bike_mode"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v6

    if-eqz v6, :cond_7

    move v4, v3

    :cond_7
    const-string v6, "automatic_answering_machine"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v6

    if-eqz v6, :cond_13

    move v4, v3

    move v3, v2

    :goto_4
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->isStreamAnimationRunning()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "InCallActivity"

    const-string v4, "updateGradientBackground: stopStreamAnimation"

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->stopStreamAnimation()V

    :cond_8
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->isScaleAnimationRunning()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setPivotY(F)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getConferenceCallManagerShowingState()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    move v1, v2

    :cond_a
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v1, :cond_11

    :goto_5
    invoke-virtual {v2, v0}, Lcom/android/incallui/widget/GradientAnimationView;->setScaleY(F)V

    :cond_b
    :goto_6
    iput v5, p0, Lcom/android/incallui/InCallActivity;->mPreviousModifyType:I

    goto/16 :goto_0

    :cond_c
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v4}, Lcom/android/incallui/widget/GradientAnimationView;->show()V

    goto/16 :goto_3

    :cond_d
    iget v4, p0, Lcom/android/incallui/InCallActivity;->mPreviousModifyType:I

    sget v7, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    if-eq v4, v7, :cond_6

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v7, 0x9

    if-eq v4, v7, :cond_e

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v7, 0xa

    if-ne v4, v7, :cond_6

    :cond_e
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isFromPopupForAnswer()Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez v3, :cond_f

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const v1, 0x3ee66666    # 0.45f

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->getAdjustBackgroundScale(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->setScaleY(F)V

    goto :goto_6

    :cond_f
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->isStreamAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "InCallActivity"

    const-string v1, "updateGradientBackground: animateForStream"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->animateForStream()V

    :cond_10
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->isScaleAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->setScaleY(F)V

    goto :goto_6

    :cond_11
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->getAdjustBackgroundScale(F)F

    move-result v0

    goto :goto_5

    :cond_12
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const v1, 0x3ee66666    # 0.45f

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->getAdjustBackgroundScale(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->setScaleY(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :cond_13
    move v3, v1

    goto/16 :goto_4

    :cond_14
    move v5, v4

    goto/16 :goto_2

    :cond_15
    move-object v6, v4

    goto/16 :goto_1

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

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColor()V

    :cond_0
    return-void
.end method

.method public updateGradientColor(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColor(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public updateGradientColor(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method public updateKeepScreenOnFlag()V
    .locals 5

    const/16 v4, 0x80

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateKeepScreenOnFlag: Answering message - isAnswermemoRecording "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "updateKeepScreenOnFlag: add FLAG_KEEP_SCREEN_ON"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void

    :cond_3
    const-string v0, "updateKeepScreenOnFlag: clear FLAG_KEEP_SCREEN_ON"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public updateNavigationBarBgColor()V
    .locals 4

    invoke-static {p0}, Lcom/android/incallui/util/ScreenControlUtils;->isShowingNavigationBar(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "setNavigationBarColor"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    return-void
.end method

.method public updateNavigationBarFlag()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isNormalWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    or-int/lit16 v1, v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, -0x401

    and-int/lit16 v1, v1, -0x201

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public updateNavigationBarIconColor(I)V
    .locals 7

    :try_start_0
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v1, "semSetNavigationBarIconColor"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    if-eq p1, v2, :cond_0

    const/16 v2, 0xa

    if-ne p1, v2, :cond_1

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

    const v6, 0x7f0e00fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_1
    return-void

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

    const v6, 0x7f0e00fd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/16 v2, 0xd

    if-eq p1, v2, :cond_3

    const/4 v2, 0x6

    if-ne p1, v2, :cond_4

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e00ff

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

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

    const v6, 0x7f0e00fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V
    .locals 4

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

    const-string v0, "InCallActivity"

    const-string v1, "call ui.updatePhotoringState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/fragment/manager/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/CallCardUi;->updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "InCallActivity"

    const-string v1, "UI not ready update later"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa3

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public updateStatusBarColor(I)V
    .locals 6

    const v5, 0x7f0e00bb

    const/4 v1, 0x1

    const v4, 0x7f0e01c4

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v3

    if-eqz v3, :cond_9

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
    move v2, v1

    :cond_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto/16 :goto_0

    :cond_6
    :pswitch_4
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateStatusBarWhiteIcon(I)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isClearCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    :goto_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    :cond_3
    :pswitch_4
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsSlideOutRunning:Z

    if-nez v0, :cond_6

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    :cond_6
    packed-switch p1, :pswitch_data_1

    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_5
    .end packed-switch
.end method

.method public updatedVideoCallMenu()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissInCallMenu()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/incallui/InCallActivity$16;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$16;-><init>(Lcom/android/incallui/InCallActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
