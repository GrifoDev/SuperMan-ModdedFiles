.class public Lcom/android/incallui/accessory/CoverScreen;
.super Landroid/widget/RelativeLayout;
.source "CoverScreen.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/CallList$CallUpdateListener;
.implements Landroid/widget/Chronometer$OnChronometerTickListener;
.implements Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;
.implements Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;
.implements Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;
.implements Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;
.implements Lcom/android/incallui/InCallPresenter$EmergencyModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;,
        Lcom/android/incallui/accessory/CoverScreen$PhoneType;
    }
.end annotation


# static fields
.field private static final BACKGROUND_SCALE_DURING_CALL:F = 0.6f

.field private static final ECID_UNKNOWN_NAME:Ljava/lang/String; = "UNKNOWN NAME"

.field private static final EVENT_DISSMISS_HOLD_POPUP_DELAY:J = 0xbb8L

.field private static final EVENT_DISSMISS_POPUP:I = 0x6e

.field private static final EVENT_DISSMISS_POPUP_DELAY:J = 0x5dcL

.field private static final EVENT_UPDATE_SMART_CALL_LAYOUT:I = 0x78

.field private static final LOG_TAG:Ljava/lang/String; = "CoverScreen"


# instance fields
.field private mAmCurrentStatusText:Ljava/lang/String;

.field private mAmStatusImage:Landroid/widget/ImageView;

.field private mAmStatusText:Landroid/widget/TextView;

.field private mAmTextTimer:Ljava/util/Timer;

.field private mAmTimerTask:Ljava/util/TimerTask;

.field private mAmViewStub:Landroid/view/ViewStub;

.field private mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

.field private mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

.field private mAnswerButtons:Landroid/view/View;

.field private mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mCoverCallCardContainer:Landroid/widget/RelativeLayout;

.field private mDivider:Landroid/widget/TextView;

.field private mElapsedTime:Landroid/widget/Chronometer;

.field private mEndCallButtons:Landroid/view/View;

.field private mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

.field private mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

.field private mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

.field private mGuideText:Landroid/widget/TextView;

.field protected final mHandler:Landroid/os/Handler;

.field private mHoldCallText:Landroid/widget/TextView;

.field private mHoldTextStub:Landroid/view/ViewStub;

.field private mInCallButtons:Landroid/view/View;

.field private mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

.field private mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

.field private mIsClearFlipCover:Z

.field private mKtTwophoneStub:Landroid/view/ViewStub;

.field private mLabelAndNumber:Landroid/widget/LinearLayout;

.field private mLastestCallStateLabel:Ljava/lang/CharSequence;

.field private mMaskPanelForSlidingDrawer:Landroid/view/View;

.field private mModifyCallView:Landroid/view/View;

.field private mModifyCallViewStub:Landroid/view/ViewStub;

.field private mNameLayout:Landroid/widget/LinearLayout;

.field private mNeedToShowGuideText:Z

.field private mNumberLabel:Landroid/widget/TextView;

.field private mParentWindow:Landroid/view/Window;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoneNumberLocatorName:Landroid/widget/TextView;

.field private mPhoneNumberLocatorNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoContainer:Landroid/view/View;

.field private mPreviousCallState:I

.field private mPreviousModifyType:I

.field private mPrimaryCall:Lcom/android/incallui/Call;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mRecordIcon:Landroid/widget/ImageView;

.field private mRecordInfoStub:Landroid/view/ViewStub;

.field private mRecordText:Landroid/widget/TextView;

.field private mRecordTime:Landroid/widget/Chronometer;

.field private mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

.field private mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

.field private mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

.field private mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

.field private mRejectCallWithMsgHandle:Landroid/view/View;

.field private mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

.field private mResumeButton:Landroid/widget/Button;

.field private mSmartCallName:Landroid/widget/TextView;

.field private mSmartCallNumber:Landroid/widget/TextView;

.field private mSmartCallPhoto:Landroid/widget/ImageView;

.field private mSmartCallSmallIcon:Landroid/widget/ImageView;

.field private mSpamCallInfoViewStub:Landroid/view/ViewStub;

.field private mSpamNumber:Ljava/lang/String;

.field private mSpamReportScore:Landroid/widget/TextView;

.field private mTwophoneIcon:Landroid/widget/ImageView;

.field private mVideoCallGuideText:Landroid/widget/TextView;

.field private mVideoCallViews:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 273
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    iput-boolean v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mNeedToShowGuideText:Z

    .line 178
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPreviousCallState:I

    .line 179
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPreviousModifyType:I

    .line 199
    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamNumber:Ljava/lang/String;

    .line 221
    iput-boolean v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    .line 241
    new-instance v0, Lcom/android/incallui/accessory/CoverScreen$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/accessory/CoverScreen$1;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    .line 274
    new-instance v0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-direct {v0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    .line 275
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v2, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;

    .line 276
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    .line 277
    return-void
.end method

.method private acceptCallClicked()V
    .locals 5

    .prologue
    .line 1896
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 1897
    .local v1, "calls":Lcom/android/incallui/CallList;
    if-nez v1, :cond_1

    .line 1903
    :cond_0
    :goto_0
    return-void

    .line 1898
    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingOrActive()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1899
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1900
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/AnswerPresenter;->controlWaitingCall(Ljava/lang/String;I)V

    .line 1901
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->coverCall_answerVoiceCallBySlide()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/incallui/accessory/CoverScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->dismissPopupWindow()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/Call;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/Chronometer;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/incallui/accessory/CoverScreen;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/incallui/accessory/CoverScreen;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgHandle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/Call;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;
    .param p1, "x1"    # Lcom/android/incallui/Call;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->updateRejectMsgContent(Lcom/android/incallui/Call;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/widget/GradientAnimationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/widget/GradientAnimationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/incallui/accessory/CoverScreen;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmCurrentStatusText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/accessory/CoverScreen;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->updateRejectHandleDrawer(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/accessory/CoverScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->animateHideForMaskPanel()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/accessory/CoverScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->animateShowForMaskPanel()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;
    .param p1, "x1"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;
    .param p1, "x1"    # Lcom/android/incallui/Call;
    .param p2, "x2"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/accessory/CoverScreen;->updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;
    .param p1, "x1"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method private animateForDummyBackground(Landroid/animation/AnimatorSet;I)V
    .locals 6
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "duration"    # I

    .prologue
    .line 2291
    const-string v3, "CoverScreen"

    const-string v4, "animateForDummyBackground"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2292
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    if-nez v3, :cond_0

    .line 2293
    const v3, 0x7f100291

    invoke-virtual {p0, v3}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/widget/GradientAnimationView;

    iput-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    .line 2294
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->setUp()V

    .line 2295
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    .line 2297
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v4}, Lcom/android/incallui/widget/GradientAnimationView;->getStartColor()I

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v5}, Lcom/android/incallui/widget/GradientAnimationView;->getEndColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColor(II)V

    .line 2298
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setScaleY(F)V

    .line 2299
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setAlpha(F)V

    .line 2300
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    .line 2302
    new-instance v0, Lcom/android/incallui/accessory/CoverScreen$16;

    invoke-direct {v0, p0}, Lcom/android/incallui/accessory/CoverScreen$16;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    .line 2311
    .local v0, "callback":Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v4, p2, v0}, Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForScale(FILcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;)Landroid/animation/Animator;

    move-result-object v2

    .line 2315
    .local v2, "scaleAnimator":Landroid/animation/Animator;
    if-eqz v2, :cond_1

    .line 2316
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2318
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3, p2}, Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForShow(I)Landroid/animation/Animator;

    move-result-object v1

    .line 2319
    .local v1, "fadeInAnimator":Landroid/animation/Animator;
    if-eqz v1, :cond_2

    .line 2320
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2322
    :cond_2
    return-void
.end method

.method private animateForEndCall(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/16 v1, 0xa

    .line 793
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-nez v0, :cond_1

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    iget v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPreviousCallState:I

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_0

    .line 797
    const-string v0, "animateForEndCall"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 798
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->animateForHide(I)V

    goto :goto_0
.end method

.method private animateHideForMaskPanel()V
    .locals 6

    .prologue
    .line 2154
    const-string v1, "animateHideForMaskPanel"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2155
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2156
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2157
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 2159
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2177
    :cond_1
    :goto_0
    return-void

    .line 2162
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    .line 2163
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2164
    .local v0, "duration":I
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/accessory/CoverScreen$14;

    invoke-direct {v2, p0}, Lcom/android/incallui/accessory/CoverScreen$14;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2175
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private animateShowForMaskPanel()V
    .locals 6

    .prologue
    .line 2127
    const-string v1, "animateShowForMaskPanel"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2128
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2129
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2130
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 2132
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2151
    :cond_1
    :goto_0
    return-void

    .line 2135
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v1, :cond_3

    .line 2136
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setRejectMsgHandleView(Landroid/view/View;)V

    .line 2138
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const v5, 0x3e99999a    # 0.3f

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    .line 2140
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2141
    .local v0, "duration":I
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/accessory/CoverScreen$13;

    invoke-direct {v2, p0}, Lcom/android/incallui/accessory/CoverScreen$13;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2149
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private answeringMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2683
    const-string v0, "answeringMode - sView!"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2684
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2692
    :cond_0
    :goto_0
    return-void

    .line 2686
    :cond_1
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2687
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->acceptCallClicked()V

    .line 2688
    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    .line 2689
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->playGuidance()V

    .line 2690
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    goto :goto_0
.end method

.method private arrangePrimaryLayout()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 1236
    const/4 v0, 0x0

    .line 1237
    .local v0, "nameTextSize":I
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 1238
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0240

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 1246
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1247
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1248
    :cond_0
    return-void

    .line 1239
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    .line 1240
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 1241
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0239

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0

    .line 1243
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a023a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method

.method private canShowRejectCallWithMessage(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 2008
    if-nez p1, :cond_0

    .line 2011
    :goto_0
    return v1

    .line 2010
    :cond_0
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2011
    .local v0, "showing":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method private clearAMView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2730
    const-string v0, "answeringMode - sView! clearAMView "

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2731
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 2732
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmViewStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2733
    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmViewStub:Landroid/view/ViewStub;

    .line 2735
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTextTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 2736
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 2737
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTextTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2738
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTextTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2739
    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTimerTask:Ljava/util/TimerTask;

    .line 2740
    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTextTimer:Ljava/util/Timer;

    .line 2742
    :cond_1
    return-void
.end method

.method private dismissPopupWindow()V
    .locals 0

    .prologue
    .line 1580
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateGuideText()V

    .line 1581
    return-void
.end method

.method private endCallClicked()V
    .locals 4

    .prologue
    .line 1916
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1917
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1918
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->updateNotUpdatingCalls(Lcom/android/incallui/Call;)V

    .line 1919
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    .line 1920
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 1921
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->coverCall_endCallBySlide()V

    .line 1923
    :cond_0
    return-void
.end method

.method private getCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "inCallState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1314
    const/4 v0, 0x0

    .line 1316
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_3

    .line 1317
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v0

    .line 1318
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v4}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    .line 1319
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v3}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 1340
    :cond_1
    :goto_0
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1341
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v1, :cond_2

    .line 1342
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1343
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1347
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v3}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 1350
    :cond_2
    return-object v0

    .line 1320
    :cond_3
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_4

    .line 1321
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1322
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v3}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_0

    .line 1323
    :cond_4
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    .line 1324
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->setCallTime()V

    .line 1325
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1326
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1328
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1329
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1331
    :cond_6
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_1

    .line 1332
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->setCallTime()V

    .line 1333
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1334
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1335
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-virtual {v1, v4}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->setLastCallTime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1345
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getCallerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 974
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 975
    .local v0, "contactCacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_1

    .line 976
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    .line 977
    .local v1, "name":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 978
    .local v2, "number":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 979
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallerName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 986
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 982
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallerName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    .line 983
    goto :goto_0

    .line 986
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 3
    .param p1, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    const/4 v0, 0x0

    .line 1039
    if-nez p1, :cond_1

    .line 1057
    :cond_0
    :goto_0
    return-object v0

    .line 1040
    :cond_1
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->nameAlternative:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getPreferredDisplayName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 1044
    .local v0, "preferredName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1045
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    .line 1050
    :cond_2
    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    const-string v2, "UNKNOWN NAME"

    .line 1052
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1054
    :cond_3
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    goto :goto_0
.end method

.method private getNumber()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1944
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1945
    .local v0, "call":Lcom/android/incallui/Call;
    const/4 v2, 0x0

    .line 1946
    .local v2, "number":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1947
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 1948
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_0

    .line 1949
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 1952
    .end local v1    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_0
    return-object v2
.end method

.method private getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 3
    .param p1, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 1545
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1546
    const-string v1, "geo_description_disable"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1547
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    .line 1558
    :cond_0
    :goto_0
    return-object v0

    .line 1550
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/incallui/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1551
    .local v0, "geoDescription":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1554
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    goto :goto_0

    .line 1558
    .end local v0    # "geoDescription":Ljava/lang/String;
    :cond_2
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method private getVideoCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "inCallState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1354
    const/4 v0, 0x0

    .line 1355
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_3

    .line 1356
    :cond_0
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1357
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1361
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v4}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    .line 1362
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v3}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 1389
    :cond_1
    :goto_1
    return-object v0

    .line 1359
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1363
    :cond_3
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_6

    .line 1364
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1365
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1366
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1373
    :goto_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v3}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_1

    .line 1368
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1371
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090138

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1374
    :cond_6
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_8

    .line 1375
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->setCallTime()V

    .line 1376
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1377
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1379
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1380
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1382
    :cond_8
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_1

    .line 1383
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->setCallTime()V

    .line 1384
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1385
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1386
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-virtual {v1, v4}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->setLastCallTime(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private hideIncomingScreen()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1649
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    .line 1650
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    .line 1651
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    .line 1653
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_1

    .line 1654
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    .line 1656
    :cond_1
    return-void
.end method

.method private onFinishInflateForAnswer(Landroid/view/View;)V
    .locals 8
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 367
    const-string v4, "onFinishInflateForAnswer"

    invoke-static {p0, v4, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 368
    const v4, 0x7f1001ef

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    .line 369
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v4, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    .line 371
    :cond_0
    const v4, 0x7f1001b1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iput-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    .line 372
    const v4, 0x7f100070

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

    .line 373
    const v4, 0x7f100071

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    .line 375
    iget-boolean v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v4, :cond_1

    .line 376
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setLinearLayout(Landroid/widget/LinearLayout;)V

    .line 377
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setTextView(Landroid/widget/TextView;)V

    .line 378
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 381
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    .line 382
    const-string v4, "support_cover_extra_size"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 383
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 384
    .local v0, "drawerHandleHeight":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a04e1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 385
    .local v3, "height":I
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 386
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    .end local v0    # "drawerHandleHeight":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "height":I
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 391
    const-string v4, "support_cover_extra_size"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 392
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 393
    .local v2, "handleTextHeight":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a04e0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 394
    .restart local v3    # "height":I
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 395
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    .end local v2    # "handleTextHeight":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "height":I
    :cond_3
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 400
    :cond_4
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v4, :cond_5

    .line 401
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->registerDetector(Landroid/content/Context;)V

    .line 402
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lcom/android/incallui/accessory/CoverScreen;->setDescriptionToHandle(Landroid/view/View;Z)V

    .line 403
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v5, Lcom/android/incallui/accessory/CoverScreen$2;

    invoke-direct {v5, p0}, Lcom/android/incallui/accessory/CoverScreen$2;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v4, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerOpenListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;)V

    .line 409
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v5, Lcom/android/incallui/accessory/CoverScreen$3;

    invoke-direct {v5, p0}, Lcom/android/incallui/accessory/CoverScreen$3;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v4, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerCloseListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;)V

    .line 416
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v5, Lcom/android/incallui/accessory/CoverScreen$4;

    invoke-direct {v5, p0}, Lcom/android/incallui/accessory/CoverScreen$4;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v4, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerAnimateListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;)V

    .line 428
    :cond_5
    const v4, 0x7f1001f0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    .line 429
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v4, :cond_6

    .line 430
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 431
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v4, :cond_6

    .line 433
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setBackgroundPanel(Landroid/view/View;)V

    .line 436
    :cond_6
    const v4, 0x7f10006e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgHandle:Landroid/view/View;

    .line 437
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgHandle:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 438
    const-string v4, "support_cover_extra_size"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 439
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgHandle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 440
    .local v1, "handleHeight":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a04df

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 441
    .restart local v3    # "height":I
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 442
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgHandle:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    .end local v1    # "handleHeight":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "height":I
    :cond_7
    const v4, 0x7f10006f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    .line 446
    const v4, 0x7f1001b3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/RejectMsgContentCover;

    iput-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    .line 447
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    if-eqz v4, :cond_8

    .line 448
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    invoke-virtual {v4, p0}, Lcom/android/incallui/RejectMsgContentCover;->setOnItemClickListener(Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;)V

    .line 449
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/RejectMsgContentCover;->showAddReminderCheckBox(Ljava/lang/Boolean;)V

    .line 451
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 452
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    invoke-virtual {v4, p0}, Lcom/android/incallui/RejectMsgContentCover;->setOnAnswerMemoClickListener(Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;)V

    .line 455
    :cond_8
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v4, :cond_9

    .line 456
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgHandle:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setRejectMsgHandleView(Landroid/view/View;)V

    .line 457
    :cond_9
    return-void
.end method

.method private onFinishInflateForEndCall(Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 491
    const v0, 0x7f100243

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    .line 492
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    .line 494
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setTouchVibationMode(Z)V

    .line 495
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(II)V

    .line 497
    :cond_0
    return-void
.end method

.method private onFinishInflateForInCall(Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 482
    const v0, 0x7f100241

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    .line 483
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    .line 485
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setTouchVibationMode(Z)V

    .line 486
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(II)V

    .line 488
    :cond_0
    return-void
.end method

.method private onFinishInflateForModifyCall()V
    .locals 1

    .prologue
    .line 504
    const-string v0, "common_volte_kor"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mModifyCallViewStub:Landroid/view/ViewStub;

    .line 506
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mModifyCallViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mModifyCallViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mModifyCallView:Landroid/view/View;

    .line 510
    :cond_0
    return-void
.end method

.method private onFinishInflateForPhoneNumberLocator()V
    .locals 4

    .prologue
    .line 534
    const v0, 0x7f10014f

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    .line 535
    const v0, 0x7f100150

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    .line 537
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 539
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 540
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v3

    div-float/2addr v2, v3

    .line 541
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v3

    mul-float/2addr v2, v3

    .line 538
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 543
    :cond_0
    return-void
.end method

.method private onFinishInflateForSmartCall()V
    .locals 4

    .prologue
    .line 513
    const v0, 0x7f10020f

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    .line 514
    const v0, 0x7f100211

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    .line 515
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 517
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 518
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v3

    div-float/2addr v2, v3

    .line 519
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v3

    mul-float/2addr v2, v3

    .line 516
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 521
    :cond_0
    const v0, 0x7f100200

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    .line 522
    const v0, 0x7f10024b

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    .line 524
    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    const v0, 0x7f10024c

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    .line 526
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 528
    const v0, 0x7f100250

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    .line 531
    :cond_1
    return-void
.end method

.method private onFinishInflateForVideoCall(Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 500
    const v0, 0x7f100252

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallGuideText:Landroid/widget/TextView;

    .line 501
    return-void
.end method

.method private rejectCallClicked()V
    .locals 6

    .prologue
    .line 1906
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 1907
    .local v1, "calls":Lcom/android/incallui/CallList;
    if-nez v1, :cond_1

    .line 1913
    :cond_0
    :goto_0
    return-void

    .line 1908
    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1909
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1910
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1911
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->coverCall_declineVoiceCallBySlide()V

    goto :goto_0
.end method

.method private setAMView()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 2695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "answeringMode - sView! mAmViewStub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2696
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 2697
    const v0, 0x7f10025d

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmViewStub:Landroid/view/ViewStub;

    .line 2698
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 2700
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    .line 2701
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    .line 2703
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2704
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2707
    :cond_2
    const v0, 0x7f1001e5

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusImage:Landroid/widget/ImageView;

    .line 2708
    const v0, 0x7f1001e6

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusText:Landroid/widget/TextView;

    .line 2709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "answeringMode - sView! mAmStatusImage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2710
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2711
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmCurrentStatusText:Ljava/lang/String;

    .line 2712
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 2713
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2719
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmCurrentStatusText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2720
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTextTimer:Ljava/util/Timer;

    if-nez v0, :cond_5

    .line 2721
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTextTimer:Ljava/util/Timer;

    .line 2723
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTimerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_6

    .line 2724
    new-instance v0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;-><init>(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/accessory/CoverScreen$1;)V

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTimerTask:Ljava/util/TimerTask;

    .line 2725
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTextTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 2727
    :cond_6
    return-void

    .line 2715
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmCurrentStatusText:Ljava/lang/String;

    .line 2716
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 2717
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f02004e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setCallTime()V
    .locals 15

    .prologue
    .line 1393
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    .line 1394
    .local v3, "callList":Lcom/android/incallui/CallList;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v3, v12, v13}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    .line 1395
    .local v2, "call":Lcom/android/incallui/Call;
    const-wide/high16 v8, -0x8000000000000000L

    .line 1396
    .local v8, "connectedTime":J
    const/4 v11, 0x2

    .line 1397
    .local v11, "state":I
    if-eqz v2, :cond_0

    .line 1398
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    .line 1400
    :cond_0
    const/16 v12, 0x9

    if-eq v11, v12, :cond_1

    const/16 v12, 0xa

    if-ne v11, v12, :cond_5

    :cond_1
    const/4 v7, 0x1

    .line 1401
    .local v7, "isDisconnect":Z
    :goto_0
    const/16 v12, 0x8

    if-ne v11, v12, :cond_6

    const/4 v10, 0x1

    .line 1402
    .local v10, "isHold":Z
    :goto_1
    const/4 v12, 0x3

    if-eq v11, v12, :cond_2

    if-nez v7, :cond_2

    if-eqz v10, :cond_7

    .line 1403
    :cond_2
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v8

    .line 1404
    const-string v12, "ctc_call_time_duration"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1405
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/CallList;->getCdmaEarliestCallForTime()Lcom/android/incallui/Call;

    move-result-object v6

    .line 1406
    .local v6, "cdmaCall":Lcom/android/incallui/Call;
    if-eqz v6, :cond_3

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    .line 1407
    invoke-virtual {v6}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v8

    .line 1414
    .end local v6    # "cdmaCall":Lcom/android/incallui/Call;
    :cond_3
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v4, v12, v8

    .line 1415
    .local v4, "callDuration":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v0, v12, v4

    .line 1416
    .local v0, "baseTime":J
    const-wide/16 v12, -0x1

    cmp-long v12, v8, v12

    if-lez v12, :cond_8

    if-nez v7, :cond_8

    .line 1417
    iget-object v12, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    if-eqz v12, :cond_4

    .line 1418
    iget-object v12, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v12, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    .line 1419
    iget-object v12, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v12}, Landroid/widget/Chronometer;->start()V

    .line 1420
    iget-object v12, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 1421
    iget-object v12, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v12, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    .line 1441
    :cond_4
    :goto_3
    return-void

    .line 1400
    .end local v0    # "baseTime":J
    .end local v4    # "callDuration":J
    .end local v7    # "isDisconnect":Z
    .end local v10    # "isHold":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    .line 1401
    .restart local v7    # "isDisconnect":Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 1411
    .restart local v10    # "isHold":Z
    :cond_7
    const-wide/16 v8, -0x1

    goto :goto_2

    .line 1425
    .restart local v0    # "baseTime":J
    .restart local v4    # "callDuration":J
    :cond_8
    iget-object v12, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    if-eqz v12, :cond_4

    .line 1426
    iget-object v12, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v12}, Landroid/widget/Chronometer;->stop()V

    .line 1427
    if-eqz v7, :cond_a

    .line 1428
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-lez v12, :cond_9

    .line 1429
    iget-object v12, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v12, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    .line 1430
    iget-object v12, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v14}, Landroid/widget/Chronometer;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->setLastCallTime(Ljava/lang/String;)V

    .line 1437
    :goto_4
    iget-object v12, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_3

    .line 1432
    :cond_9
    iget-object v12, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->setLastCallTime(Ljava/lang/String;)V

    goto :goto_4

    .line 1435
    :cond_a
    iget-object v12, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v14}, Landroid/widget/Chronometer;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->setLastCallTime(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private setDescriptionToHandle(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "open"    # Z

    .prologue
    .line 1826
    const/4 v0, 0x0

    .line 1827
    .local v0, "contentDescription":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1828
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f0902a2

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1829
    if-eqz p2, :cond_0

    .line 1830
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f090232

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1834
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1835
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1836
    return-void

    .line 1832
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f090231

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 1223
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v1, p2, :cond_1

    .line 1233
    :cond_0
    :goto_0
    return-void

    .line 1224
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1225
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_2

    .line 1226
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 1227
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1232
    :cond_2
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1229
    :cond_3
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1
.end method

.method private setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 13
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 1152
    iget-object v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    if-nez v10, :cond_2

    .line 1153
    :cond_0
    const-string v10, "CoverScreen"

    const-string v11, "setPrimaryImage: views are not inflated yet"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1220
    :cond_1
    :goto_0
    return-void

    .line 1156
    :cond_2
    iget-boolean v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v10, :cond_3

    .line 1157
    const-string v10, "CoverScreen"

    const-string v11, "setPrimaryImage: clear flip cover"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1161
    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    .line 1162
    .local v2, "callList":Lcom/android/incallui/CallList;
    if-eqz v2, :cond_1

    .line 1163
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v2, v10, v11}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 1164
    .local v1, "call":Lcom/android/incallui/Call;
    if-eqz v1, :cond_1

    .line 1166
    if-eqz p1, :cond_1

    .line 1167
    const-string v10, "CoverScreen"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setPrimaryImage: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1169
    iget-object v6, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 1170
    .local v6, "image":Landroid/graphics/drawable/Drawable;
    iget-boolean v8, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    .line 1173
    .local v8, "showPhotoContainer":Z
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v10

    iget-object v11, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v3

    .line 1175
    .local v3, "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v6, :cond_7

    .line 1176
    iget-object v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/SecOpenThemeUtils;->setCoverEmergencyBackgroundResource(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1177
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    .line 1196
    :goto_1
    iget-object v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v10, v6}, Lcom/android/incallui/accessory/CoverScreen;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1198
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v5

    .line 1199
    .local v5, "fgCall":Lcom/android/incallui/Call;
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1200
    .local v0, "bgCall":Lcom/android/incallui/Call;
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v7

    .line 1202
    .local v7, "incomingCall":Lcom/android/incallui/Call;
    const-string v10, "support_smart_call"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1203
    iget-object v9, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    .line 1204
    .local v9, "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    if-eqz v9, :cond_4

    invoke-static {v1}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v10

    if-eqz v10, :cond_4

    .line 1205
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1206
    const/4 v8, 0x1

    .line 1209
    .end local v9    # "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_4
    if-eqz v8, :cond_5

    .line 1210
    if-eqz v7, :cond_5

    if-eqz v5, :cond_5

    .line 1211
    const/4 v8, 0x0

    .line 1215
    :cond_5
    iget-object v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    if-eqz v10, :cond_6

    .line 1216
    iget-object v11, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    if-eqz v8, :cond_b

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1219
    :cond_6
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->arrangePrimaryLayout()V

    goto/16 :goto_0

    .line 1178
    .end local v0    # "bgCall":Lcom/android/incallui/Call;
    .end local v5    # "fgCall":Lcom/android/incallui/Call;
    .end local v7    # "incomingCall":Lcom/android/incallui/Call;
    :cond_7
    if-eqz v8, :cond_8

    if-eqz v6, :cond_8

    .line 1179
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a009e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v4, v10

    .line 1180
    .local v4, "diameter":I
    const/4 v10, 0x1

    invoke-virtual {p0, v6, v10}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    .line 1181
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v10

    invoke-static {v10, v6, v4}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1182
    iget-object v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/SecOpenThemeUtils;->setCoverBackgroundResource(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 1183
    .end local v4    # "diameter":I
    :cond_8
    if-eqz v3, :cond_9

    iget-object v10, v3, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_9

    .line 1184
    const-string v10, "CallerImage From ContactAgent"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1185
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a009e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v4, v10

    .line 1186
    .restart local v4    # "diameter":I
    iget-object v10, v3, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    .line 1187
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v10

    iget-object v11, v3, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v10, v11, v4}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1188
    goto/16 :goto_1

    .end local v4    # "diameter":I
    :cond_9
    iget-boolean v10, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    if-eqz v10, :cond_a

    iget-boolean v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v10, :cond_a

    .line 1189
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0203c3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1190
    const/4 v10, 0x1

    invoke-virtual {p0, v6, v10}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    .line 1191
    iget-object v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/SecOpenThemeUtils;->setCoverYpBackgroundResource(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1192
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 1194
    :cond_a
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_1

    .line 1216
    .restart local v0    # "bgCall":Lcom/android/incallui/Call;
    .restart local v5    # "fgCall":Lcom/android/incallui/Call;
    .restart local v7    # "incomingCall":Lcom/android/incallui/Call;
    :cond_b
    const/16 v10, 0x8

    goto/16 :goto_2
.end method

.method private setPrimaryLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1149
    :goto_0
    return-void

    .line 1143
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1144
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1145
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPrimaryName(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z

    .prologue
    .line 1110
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 1125
    :cond_0
    :goto_0
    return-void

    .line 1112
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1113
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1115
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    const/4 v0, 0x0

    .line 1119
    .local v0, "nameDirection":I
    if-eqz p2, :cond_3

    .line 1120
    const/4 v0, 0x3

    .line 1122
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 1123
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mNameLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mNameLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method private setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1138
    :goto_0
    return-void

    .line 1130
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1131
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1134
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1135
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1136
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method private setSmartCallPhotoFilter(IZ)V
    .locals 10
    .param p1, "state"    # I
    .param p2, "isDefaultPhoto"    # Z

    .prologue
    const v9, 0x7f0d0029

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 882
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSmartCallPhotoFilter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isDefaultPhoto = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 883
    const/16 v3, 0x8

    if-ne p1, v3, :cond_0

    .line 884
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 914
    :goto_0
    return-void

    .line 885
    :cond_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 886
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 887
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/incallui/accessory/CoverScreen$9;

    invoke-direct {v3, p0}, Lcom/android/incallui/accessory/CoverScreen$9;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 893
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 894
    .local v2, "duration":I
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 895
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 896
    .end local v0    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    .end local v2    # "duration":I
    :cond_1
    const/16 v3, 0xa

    if-ne p1, v3, :cond_2

    if-eqz p2, :cond_2

    .line 897
    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 899
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 900
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f01dd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 897
    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 901
    .local v1, "colorAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 902
    new-instance v3, Lcom/android/incallui/accessory/CoverScreen$10;

    invoke-direct {v3, p0}, Lcom/android/incallui/accessory/CoverScreen$10;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 910
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 912
    .end local v1    # "colorAnimator":Landroid/animation/ValueAnimator;
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private showOnHoldText(Z)V
    .locals 4
    .param p1, "isHold"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1299
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mDivider:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 1311
    :cond_0
    :goto_0
    return-void

    .line 1301
    :cond_1
    if-eqz p1, :cond_2

    .line 1302
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1303
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1304
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05001f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1305
    .local v0, "startAnimation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1307
    .end local v0    # "startAnimation":Landroid/view/animation/Animation;
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1308
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1309
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPopupWindow()V
    .locals 4

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1563
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x5dc

    invoke-direct {p0, v0, v2, v3}, Lcom/android/incallui/accessory/CoverScreen;->showPopupWindow(Ljava/lang/String;J)V

    .line 1566
    :cond_0
    return-void
.end method

.method private showPopupWindow(Ljava/lang/String;J)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "delay"    # J

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1570
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1571
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1572
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1574
    :cond_0
    return-void
.end method

.method private startContactInfoSearch(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 636
    if-nez p1, :cond_0

    .line 668
    :goto_0
    return-void

    .line 638
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 639
    .local v0, "cache":Lcom/android/incallui/ContactInfoCache;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 641
    .local v1, "isIncoming":Z
    :goto_1
    new-instance v2, Lcom/android/incallui/accessory/CoverScreen$5;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/accessory/CoverScreen$5;-><init>(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/Call;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    goto :goto_0

    .line 639
    .end local v1    # "isIncoming":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private tearDown()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2074
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2075
    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    .line 2078
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    .line 2079
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearAnimation()V

    .line 2080
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    .line 2081
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v4, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    .line 2082
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    .line 2083
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    .line 2084
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearDrawable()V

    .line 2085
    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    .line 2088
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_2

    .line 2089
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearAnimation()V

    .line 2090
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    .line 2091
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v4, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    .line 2092
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    .line 2093
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    .line 2094
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearDrawable()V

    .line 2095
    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    .line 2098
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_3

    .line 2099
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearAnimation()V

    .line 2100
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    .line 2101
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v4, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    .line 2102
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    .line 2103
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    .line 2104
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearDrawable()V

    .line 2105
    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    .line 2108
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    if-eqz v0, :cond_4

    .line 2109
    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    .line 2112
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_5

    .line 2113
    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    .line 2116
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_6

    .line 2117
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->tearDown()V

    .line 2118
    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    .line 2120
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_7

    .line 2121
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->tearDown()V

    .line 2122
    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    .line 2124
    :cond_7
    return-void
.end method

.method private updateAnswerButtons()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1659
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    .line 1660
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    .line 1661
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    .line 1663
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    .line 1664
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    .line 1665
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    .line 1667
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_2

    .line 1668
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    .line 1669
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    .line 1671
    :cond_2
    return-void
.end method

.method private updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;ZZ)V
    .locals 11
    .param p1, "inCallState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "call"    # Lcom/android/incallui/Call;
    .param p3, "isDisconnected"    # Z
    .param p4, "isIncomingMissed"    # Z

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1596
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallButtons:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallButtons:Landroid/view/View;

    if-nez v7, :cond_1

    .line 1646
    :cond_0
    :goto_0
    return-void

    .line 1597
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v0

    .line 1598
    .local v0, "isIncomingRejectedCall":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v0, :cond_3

    .line 1599
    :cond_2
    const-string v5, "CoverScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIncomingMissed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isIncomingRejectedCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->hideIncomingScreen()V

    goto :goto_0

    .line 1603
    :cond_3
    const-string v7, "CoverScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateCallButtons..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1605
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v7, :cond_9

    move v2, v5

    .line 1606
    .local v2, "showAnswerButtons":Z
    :goto_1
    if-nez p3, :cond_a

    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v7, :cond_a

    move v4, v5

    .line 1607
    .local v4, "showInCallButtons":Z
    :goto_2
    move v3, p3

    .line 1609
    .local v3, "showEndCallButtons":Z
    invoke-static {p2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 1611
    .local v1, "isVideoCall":Z
    if-eqz v1, :cond_4

    .line 1612
    const/4 v4, 0x0

    .line 1615
    :cond_4
    const-string v7, "automatic_answering_machine"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1616
    const-string v7, "CoverScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateCallButtons :  isAutoAnswered - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1617
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1618
    const/4 v2, 0x1

    .line 1619
    const/4 v4, 0x0

    .line 1623
    :cond_5
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    if-eqz v2, :cond_b

    move v7, v6

    :goto_3
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1624
    if-eqz v2, :cond_6

    .line 1625
    if-eqz v1, :cond_c

    .line 1626
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateVideoCallAnswerButtons()V

    .line 1631
    :cond_6
    :goto_4
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallButtons:Landroid/view/View;

    if-eqz v4, :cond_d

    move v7, v6

    :goto_5
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1632
    if-eqz v4, :cond_7

    .line 1633
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateInCallButtons()V

    .line 1635
    :cond_7
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallButtons:Landroid/view/View;

    if-eqz v3, :cond_e

    :goto_6
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1636
    if-eqz v3, :cond_8

    .line 1637
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateEndCallButtons()V

    .line 1640
    :cond_8
    const-string v6, "automatic_answering_machine"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1641
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v6, :cond_0

    .line 1642
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    .line 1643
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v6, v5, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    goto/16 :goto_0

    .end local v1    # "isVideoCall":Z
    .end local v2    # "showAnswerButtons":Z
    .end local v3    # "showEndCallButtons":Z
    .end local v4    # "showInCallButtons":Z
    :cond_9
    move v2, v6

    .line 1605
    goto/16 :goto_1

    .restart local v2    # "showAnswerButtons":Z
    :cond_a
    move v4, v6

    .line 1606
    goto :goto_2

    .restart local v1    # "isVideoCall":Z
    .restart local v3    # "showEndCallButtons":Z
    .restart local v4    # "showInCallButtons":Z
    :cond_b
    move v7, v8

    .line 1623
    goto :goto_3

    .line 1628
    :cond_c
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateAnswerButtons()V

    goto :goto_4

    :cond_d
    move v7, v8

    .line 1631
    goto :goto_5

    :cond_e
    move v6, v8

    .line 1635
    goto :goto_6
.end method

.method private updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 7
    .param p1, "inCallState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    .line 1251
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    .line 1285
    :cond_0
    :goto_0
    return-void

    .line 1252
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v1

    .line 1253
    .local v1, "isIncomingMissed":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v2

    .line 1254
    .local v2, "isIncomingRejectedCall":Z
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 1257
    invoke-static {p2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1258
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/accessory/CoverScreen;->getVideoCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1262
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :goto_1
    invoke-direct {p0, v0, p2}, Lcom/android/incallui/accessory/CoverScreen;->updateCallTimeBlinkInfo(Ljava/lang/CharSequence;Lcom/android/incallui/Call;)V

    .line 1263
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v6, :cond_4

    const/4 v3, 0x1

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/incallui/accessory/CoverScreen;->showOnHoldText(Z)V

    .line 1265
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v5, 0xa

    if-eq v3, v5, :cond_2

    .line 1266
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-virtual {v3}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->removeMessageForBlinkTime()V

    .line 1269
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1270
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-virtual {v3}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->hasMessageForBlinkTime()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1271
    const-string v3, "not update stateLabel for blink call time"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1260
    .end local v0    # "callStateLabel":Ljava/lang/CharSequence;
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/accessory/CoverScreen;->getCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "callStateLabel":Ljava/lang/CharSequence;
    goto :goto_1

    :cond_4
    move v3, v4

    .line 1263
    goto :goto_2

    .line 1273
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1274
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1275
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1278
    :cond_6
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-virtual {v3}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->hasMessageForBlinkTime()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1279
    const-string v3, "not update stateLabel for blink call time"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1281
    :cond_7
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1282
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCallTimeBlinkInfo(Ljava/lang/CharSequence;Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "callStateLabel"    # Ljava/lang/CharSequence;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1288
    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    .line 1290
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->setCallSubStateLabel(Ljava/lang/CharSequence;)V

    .line 1291
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->setCallSubStateView(Landroid/widget/TextView;)V

    .line 1293
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->setCallStateLabel(Ljava/lang/CharSequence;)V

    .line 1294
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, v1}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->setCallStateView(Landroid/widget/TextView;)V

    .line 1295
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->manageCallEndTimeBlink(I)V

    .line 1296
    return-void
.end method

.method private updateCarrierInfo(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const v3, 0x7f02036b

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2339
    const-string v0, "support_twophone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2340
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegisteredForCall()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2341
    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->updateTwoPhoneColor(I)V

    .line 2342
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_3

    .line 2343
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2345
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mKtTwophoneStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mKtTwophoneStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2346
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2347
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2348
    const-string v0, "one phone mode, Call is two phone line"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2371
    :cond_1
    :goto_0
    return-void

    .line 2351
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2352
    const-string v0, "mKtTwophoneStub GONE"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2355
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mKtTwophoneStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mKtTwophoneStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2356
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2357
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2359
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2360
    const-string v0, "two phone mode, Call is two phone line"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2363
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02036a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2364
    const-string v0, "two phone mode, Call is one phone line"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2368
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateEndCallButtons()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/16 v11, 0x8

    const/4 v8, 0x0

    .line 1689
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1690
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v5

    .line 1691
    .local v5, "isIncomingMissed":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v6

    .line 1692
    .local v6, "isIncomingRejectedCall":Z
    if-nez v0, :cond_1

    .line 1744
    :cond_0
    :goto_0
    return-void

    .line 1693
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    if-eq v9, v12, :cond_2

    if-nez v5, :cond_0

    if-nez v6, :cond_0

    .line 1696
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    .line 1698
    .local v2, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    const/4 v3, 0x0

    .line 1699
    .local v3, "isEmergency":Z
    const/4 v7, 0x1

    .line 1700
    .local v7, "isNumberExists":Z
    const/4 v4, 0x0

    .line 1702
    .local v4, "isGroupCall":Z
    if-eqz v2, :cond_4

    .line 1703
    iget-boolean v3, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    .line 1704
    iget v9, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    iget v9, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    if-ne v9, v12, :cond_9

    .line 1706
    :cond_3
    const/4 v7, 0x0

    .line 1711
    :cond_4
    :goto_1
    const-string v9, "ims_voice_conference"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "feature_lgt"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1712
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1713
    const/4 v4, 0x1

    .line 1717
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isEmergency : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1718
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isNumberExists : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1719
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isGroupCall : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1721
    if-nez v3, :cond_b

    if-eqz v7, :cond_b

    if-nez v4, :cond_b

    const/4 v1, 0x1

    .line 1722
    .local v1, "enabled":Z
    :goto_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1723
    const-string v9, "updateEndCallButtons : come here"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1724
    const/4 v1, 0x0

    .line 1727
    :cond_6
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v9, :cond_7

    .line 1728
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v9}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    .line 1729
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v9, v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    .line 1731
    :cond_7
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v9, :cond_8

    .line 1732
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v9}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    .line 1733
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v9, v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    .line 1735
    :cond_8
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v9, :cond_0

    .line 1736
    if-eqz v1, :cond_c

    .line 1737
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v9}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    .line 1738
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v9, v8}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    goto/16 :goto_0

    .line 1707
    .end local v1    # "enabled":Z
    :cond_9
    iget-object v9, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v9, :cond_a

    iget-object v9, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    .line 1708
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_b
    move v1, v8

    .line 1721
    goto :goto_2

    .line 1740
    .restart local v1    # "enabled":Z
    :cond_c
    iget-object v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v8}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    .line 1741
    iget-object v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v8, v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateHoldCallText()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 764
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    .line 765
    .local v2, "callList":Lcom/android/incallui/CallList;
    if-nez v2, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    iget-boolean v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v7, :cond_0

    .line 768
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mHoldTextStub:Landroid/view/ViewStub;

    if-nez v7, :cond_2

    .line 769
    const v7, 0x7f100247

    invoke-virtual {p0, v7}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewStub;

    iput-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mHoldTextStub:Landroid/view/ViewStub;

    .line 770
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mHoldTextStub:Landroid/view/ViewStub;

    invoke-virtual {v7}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 771
    const v7, 0x7f100218

    invoke-virtual {p0, v7}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mHoldCallText:Landroid/widget/TextView;

    .line 773
    :cond_2
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mHoldTextStub:Landroid/view/ViewStub;

    if-eqz v7, :cond_0

    .line 774
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v3

    .line 775
    .local v3, "fgCall":Lcom/android/incallui/Call;
    invoke-virtual {v2, v12}, Lcom/android/incallui/CallList;->getBgCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 776
    .local v0, "bgCall":Lcom/android/incallui/Call;
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 777
    .local v6, "show":Ljava/lang/Boolean;
    if-eqz v0, :cond_3

    .line 778
    const/4 v5, 0x1

    .line 779
    .local v5, "holdCount":I
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f09029c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 780
    .local v4, "holdCallText":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mHoldCallText:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    if-eqz v3, :cond_3

    .line 782
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-static {v7, v12, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 783
    .local v1, "call":Lcom/android/incallui/Call;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/4 v9, 0x4

    if-eq v7, v9, :cond_3

    .line 784
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 788
    .end local v1    # "call":Lcom/android/incallui/Call;
    .end local v4    # "holdCallText":Ljava/lang/String;
    .end local v5    # "holdCount":I
    :cond_3
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mHoldTextStub:Landroid/view/ViewStub;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v8

    :goto_1
    invoke-virtual {v9, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/16 v7, 0x8

    goto :goto_1
.end method

.method private updateInCallButtons()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1674
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    .line 1675
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    .line 1676
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    .line 1678
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    .line 1679
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    .line 1680
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    .line 1682
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_2

    .line 1683
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    .line 1684
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    .line 1686
    :cond_2
    return-void
.end method

.method private updatePhoneNumberLocatorTextColor()V
    .locals 3

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 969
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 970
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 12
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 990
    if-nez p1, :cond_1

    .line 1036
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    if-eqz p2, :cond_0

    .line 992
    const-string v8, "CoverScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updatePrimaryDisplayInfo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 993
    const/4 v5, 0x0

    .line 994
    .local v5, "name":Ljava/lang/String;
    const/4 v7, 0x0

    .line 995
    .local v7, "number":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v3

    .line 997
    .local v3, "isNotUpdatingCall":Z
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    if-eqz v3, :cond_6

    .line 998
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090242

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 999
    const/4 v0, 0x0

    .line 1000
    .local v0, "childCallSize":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_4

    .line 1001
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1002
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v9

    .line 1003
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "secConferenceCallLabel"

    .line 1002
    invoke-virtual {v9, v10, v11}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "%d"

    .line 1003
    invoke-virtual {v8, v9, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1021
    .end local v0    # "childCallSize":Ljava/lang/String;
    :cond_4
    :goto_1
    if-eqz v5, :cond_7

    iget-object v8, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v6, 0x1

    .line 1022
    .local v6, "nameIsNumber":Z
    :goto_2
    invoke-direct {p0, v5, v6}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryName(Ljava/lang/String;Z)V

    .line 1023
    invoke-direct {p0, v7}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 1024
    if-eqz v3, :cond_8

    const/4 v8, 0x0

    :goto_3
    invoke-direct {p0, v8}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryLabel(Ljava/lang/String;)V

    .line 1025
    invoke-direct {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 1027
    const-string v8, "support_spam_call"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1028
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_5
    const/4 v4, 0x1

    .line 1030
    .local v4, "mEmergencyMode":Z
    :goto_4
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v8

    if-eqz v8, :cond_0

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/16 v9, 0x9

    if-eq v8, v9, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_0

    .line 1031
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/accessory/CoverScreen;->setPrimarySpamInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 1032
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->arrangePrimaryLayout()V

    goto/16 :goto_0

    .line 1006
    .end local v4    # "mEmergencyMode":Z
    .end local v6    # "nameIsNumber":Z
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v5

    .line 1007
    invoke-direct {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v7

    .line 1008
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    .line 1009
    .local v2, "displaycall":Lcom/android/incallui/Call;
    if-eqz v2, :cond_4

    .line 1011
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v1

    .line 1012
    .local v1, "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    if-eqz v1, :cond_4

    .line 1013
    iget-object v8, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1014
    iget-object v5, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    .line 1015
    invoke-direct {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1021
    .end local v1    # "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    .end local v2    # "displaycall":Lcom/android/incallui/Call;
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 1024
    .restart local v6    # "nameIsNumber":Z
    :cond_8
    iget-object v8, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    goto :goto_3

    .line 1028
    :cond_9
    const/4 v4, 0x0

    goto :goto_4
.end method

.method private updateRecordTime(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 625
    const-string v3, "voice_call_recording"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v1

    .line 627
    .local v1, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v1, :cond_0

    .line 629
    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v0

    .line 630
    .local v0, "isPaused":Z
    invoke-virtual {v1, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isShowRecordInfo(Lcom/android/incallui/Call;)Z

    move-result v2

    .line 632
    .local v2, "showRecordInfo":Z
    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/accessory/CoverScreen;->manageRecordInfo(ZZ)V

    goto :goto_0
.end method

.method private updateRejectHandleDrawer(Z)V
    .locals 4
    .param p1, "isOpened"    # Z

    .prologue
    .line 460
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 461
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    const v2, 0x7f02031c

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 464
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v2, :cond_1

    .line 465
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v3

    if-nez p1, :cond_5

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v3, v2}, Lcom/android/incallui/accessory/CoverScreen;->setDescriptionToHandle(Landroid/view/View;Z)V

    .line 467
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 468
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 469
    .local v1, "textLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a031e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 471
    .local v0, "height":I
    :goto_2
    const-string v2, "support_cover_extra_size"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 472
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 475
    :cond_2
    :goto_3
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 476
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 479
    .end local v0    # "height":I
    .end local v1    # "textLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    return-void

    .line 461
    :cond_4
    const v2, 0x7f020320

    goto :goto_0

    .line 465
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 470
    .restart local v1    # "textLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a031d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    goto :goto_2

    .line 473
    .restart local v0    # "height":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    goto :goto_3
.end method

.method private updateRejectMsgContent(Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/16 v2, 0x8

    .line 1972
    if-nez p1, :cond_1

    .line 2005
    :cond_0
    :goto_0
    return-void

    .line 1974
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    .line 1975
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    if-eqz v3, :cond_3

    .line 1976
    const/4 v1, 0x0

    .line 1977
    .local v1, "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "support_smart_call"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1978
    invoke-static {p1}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_5

    .line 1979
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getBlockReportMessage()Ljava/util/List;

    move-result-object v1

    .line 1983
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    invoke-virtual {v3, v1}, Lcom/android/incallui/RejectMsgContentCover;->configureRejectMsgList(Ljava/util/List;)V

    .line 1985
    .end local v1    # "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v3, :cond_0

    .line 1986
    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->canShowRejectCallWithMessage(Lcom/android/incallui/Call;)Z

    move-result v0

    .line 1987
    .local v0, "show":Z
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    :cond_4
    invoke-virtual {v3, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    goto :goto_0

    .line 1981
    .end local v0    # "show":Z
    .restart local v1    # "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 1989
    .end local v1    # "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    .line 1991
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v3, :cond_7

    .line 1992
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    .line 1994
    :cond_7
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1995
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v3, :cond_0

    .line 1996
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v3, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    goto :goto_0

    .line 1999
    :cond_8
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_9

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    .line 2000
    :cond_9
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v3, :cond_0

    .line 2001
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    .line 2002
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v3, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateSmartTextColor(I)V
    .locals 11
    .param p1, "state"    # I

    .prologue
    .line 917
    iget-boolean v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v7, :cond_1

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 920
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0133

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 921
    .local v3, "bannerTextColor":I
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0132

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 923
    .local v2, "bannerSubTextColor":I
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f012e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 924
    .local v1, "bannerDefaultTextColor":I
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f012d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 926
    .local v0, "bannerDefaultSubTextColor":I
    invoke-static {p1}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v7

    if-nez v7, :cond_2

    const/16 v7, 0x9

    if-ne p1, v7, :cond_4

    .line 927
    :cond_2
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 928
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 955
    :cond_3
    :goto_1
    const/16 v7, 0x8

    if-ne p1, v7, :cond_5

    .line 956
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 957
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 930
    :cond_4
    const/16 v7, 0xa

    if-ne p1, v7, :cond_3

    .line 931
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d002b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 933
    .local v4, "duration":I
    new-instance v7, Landroid/animation/ArgbEvaluator;

    invoke-direct {v7}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 934
    .local v5, "nameColorAnimator":Landroid/animation/ValueAnimator;
    int-to-long v8, v4

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 935
    new-instance v7, Lcom/android/incallui/accessory/CoverScreen$11;

    invoke-direct {v7, p0}, Lcom/android/incallui/accessory/CoverScreen$11;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 941
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 943
    new-instance v7, Landroid/animation/ArgbEvaluator;

    invoke-direct {v7}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 944
    .local v6, "numberAndLabelColorAnimator":Landroid/animation/ValueAnimator;
    int-to-long v8, v4

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 945
    new-instance v7, Lcom/android/incallui/accessory/CoverScreen$12;

    invoke-direct {v7, p0}, Lcom/android/incallui/accessory/CoverScreen$12;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 951
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 958
    .end local v4    # "duration":I
    .end local v5    # "nameColorAnimator":Landroid/animation/ValueAnimator;
    .end local v6    # "numberAndLabelColorAnimator":Landroid/animation/ValueAnimator;
    :cond_5
    const/4 v7, 0x3

    if-ne p1, v7, :cond_6

    .line 959
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 960
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0

    .line 962
    :cond_6
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 963
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method private updateTextColor(I)V
    .locals 13
    .param p1, "state"    # I

    .prologue
    .line 803
    iget-boolean v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v9, :cond_2

    .line 804
    const/16 v9, 0x9

    if-eq p1, v9, :cond_0

    const/16 v9, 0xa

    if-ne p1, v9, :cond_1

    .line 805
    :cond_0
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f00f6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 806
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f00f6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/Chronometer;->setTextColor(I)V

    .line 879
    :goto_0
    return-void

    .line 808
    :cond_1
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f00fc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 809
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f00fc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/Chronometer;->setTextColor(I)V

    goto :goto_0

    .line 813
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f0133

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 814
    .local v3, "bannerTextColor":I
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f0132

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 816
    .local v2, "bannerSubTextColor":I
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f011c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 817
    .local v5, "endCallLabelColor":I
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f012e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 818
    .local v1, "bannerDefaultTextColor":I
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f012d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 820
    .local v0, "bannerDefaultSubTextColor":I
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->isBackgroundShowing()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v9

    if-nez v9, :cond_3

    const/16 v9, 0x9

    if-ne p1, v9, :cond_4

    .line 821
    :cond_3
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 822
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v9, v3}, Landroid/widget/Chronometer;->setTextColor(I)V

    .line 823
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 824
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 825
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 870
    :goto_1
    const/16 v9, 0x8

    if-ne p1, v9, :cond_6

    .line 871
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 872
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 873
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0

    .line 827
    :cond_4
    const/16 v9, 0xa

    if-ne p1, v9, :cond_5

    iget v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mPreviousCallState:I

    const/16 v10, 0xa

    if-eq v9, v10, :cond_5

    .line 828
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d002b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 830
    .local v4, "duration":I
    new-instance v9, Landroid/animation/ArgbEvaluator;

    invoke-direct {v9}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 831
    .local v6, "labelColorAnimator":Landroid/animation/ValueAnimator;
    int-to-long v10, v4

    invoke-virtual {v6, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 832
    new-instance v9, Lcom/android/incallui/accessory/CoverScreen$6;

    invoke-direct {v9, p0}, Lcom/android/incallui/accessory/CoverScreen$6;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 839
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 841
    new-instance v9, Landroid/animation/ArgbEvaluator;

    invoke-direct {v9}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 842
    .local v7, "nameColorAnimator":Landroid/animation/ValueAnimator;
    int-to-long v10, v4

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 843
    new-instance v9, Lcom/android/incallui/accessory/CoverScreen$7;

    invoke-direct {v9, p0}, Lcom/android/incallui/accessory/CoverScreen$7;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 849
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 851
    new-instance v9, Landroid/animation/ArgbEvaluator;

    invoke-direct {v9}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 852
    .local v8, "numberAndLabelColorAnimator":Landroid/animation/ValueAnimator;
    int-to-long v10, v4

    invoke-virtual {v8, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 853
    new-instance v9, Lcom/android/incallui/accessory/CoverScreen$8;

    invoke-direct {v9, p0}, Lcom/android/incallui/accessory/CoverScreen$8;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 860
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1

    .line 862
    .end local v4    # "duration":I
    .end local v6    # "labelColorAnimator":Landroid/animation/ValueAnimator;
    .end local v7    # "nameColorAnimator":Landroid/animation/ValueAnimator;
    .end local v8    # "numberAndLabelColorAnimator":Landroid/animation/ValueAnimator;
    :cond_5
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 863
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v9, v5}, Landroid/widget/Chronometer;->setTextColor(I)V

    .line 864
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 865
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 866
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 875
    :cond_6
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 876
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 877
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method private updateTwoPhoneColor(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const v2, 0x7f0f0133

    .line 2374
    iget-boolean v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v0, :cond_0

    .line 2375
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2388
    :goto_0
    return-void

    .line 2378
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2379
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2383
    :goto_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 2384
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 2381
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f010b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 2386
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method

.method private updateVideoCallAnswerButtons()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1778
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    .line 1779
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    .line 1780
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    .line 1782
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    .line 1783
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    .line 1784
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    .line 1786
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_2

    .line 1787
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    .line 1788
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    .line 1790
    :cond_2
    return-void
.end method

.method private updateVideoCallViews(Lcom/android/incallui/Call;)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    .line 1747
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1748
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    .line 1749
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    .line 1750
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 1751
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1752
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1753
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1754
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1775
    :cond_1
    :goto_0
    return-void

    .line 1759
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1760
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1762
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallGuideText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 1763
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 1764
    .local v0, "callState":I
    if-eq v0, v4, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    .line 1765
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v2

    if-ne v2, v5, :cond_5

    :cond_4
    const v1, 0x7f0f0133

    .line 1768
    .local v1, "textColor":I
    :goto_1
    if-ne v0, v4, :cond_6

    .line 1769
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallGuideText:Landroid/widget/TextView;

    const v3, 0x7f0901f5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1773
    :goto_2
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1765
    .end local v1    # "textColor":I
    :cond_5
    const v1, 0x7f0f010d

    goto :goto_1

    .line 1771
    .restart local v1    # "textColor":I
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallGuideText:Landroid/widget/TextView;

    const v3, 0x7f0901f8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private voiceCallClicked()V
    .locals 6

    .prologue
    .line 1926
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/InCallUISystemDB;->isFlightMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDeviceOnWiFi()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isVoWIFIRegistered()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1927
    :cond_0
    const-string v3, "isFlightMode = true"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1928
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901f9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1929
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1941
    :cond_1
    :goto_0
    return-void

    .line 1931
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 1932
    .local v1, "number":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1933
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "telecom"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    .line 1934
    .local v2, "tm":Landroid/telecom/TelecomManager;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1935
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "support_twophone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1936
    const-string v4, "TwoPhoneDialOption"

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "twophone"

    :goto_1
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    :cond_3
    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1936
    :cond_4
    const-string v3, "onephone"

    goto :goto_1
.end method


# virtual methods
.method public animateForShrinkBackground()V
    .locals 7

    .prologue
    .line 2263
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v4, :cond_1

    .line 2264
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 2265
    .local v3, "duration":I
    new-instance v2, Lcom/android/incallui/accessory/CoverScreen$15;

    invoke-direct {v2, p0}, Lcom/android/incallui/accessory/CoverScreen$15;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    .line 2273
    .local v2, "callback":Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const v5, 0x3f19999a    # 0.6f

    invoke-virtual {v4, v5, v3, v2}, Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForScale(FILcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;)Landroid/animation/Animator;

    move-result-object v0

    .line 2277
    .local v0, "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_1

    .line 2278
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2279
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2280
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v4}, Lcom/android/incallui/widget/GradientAnimationView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2281
    invoke-direct {p0, v1, v3}, Lcom/android/incallui/accessory/CoverScreen;->animateForDummyBackground(Landroid/animation/AnimatorSet;I)V

    .line 2283
    :cond_0
    const-string v4, "CoverScreen"

    const-string v5, "animateForShrinkBackground"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2284
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v4}, Lcom/android/incallui/widget/GradientAnimationView;->stopStreamAnimation()V

    .line 2285
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2288
    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v2    # "callback":Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;
    .end local v3    # "duration":I
    :cond_1
    return-void
.end method

.method public attemptFinish(Z)V
    .locals 3
    .param p1, "forceToTearDown"    # Z

    .prologue
    .line 2044
    const-string v0, "CoverScreen"

    const-string v1, "tearDown"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2045
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 2046
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 2047
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 2048
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->removeListener(Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;)V

    .line 2049
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    .line 2050
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    .line 2052
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    .line 2053
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    .line 2055
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_2

    .line 2056
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    .line 2058
    :cond_2
    if-eqz p1, :cond_3

    .line 2059
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->tearDown()V

    .line 2064
    :cond_3
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2065
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/smartcall/SmartCallController;->removeListener(Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;)V

    .line 2067
    :cond_4
    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2068
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V

    .line 2070
    :cond_5
    return-void
.end method

.method protected inflateRecordInfo()V
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 1445
    const v0, 0x7f100206

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    .line 1446
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1448
    const v0, 0x7f100253

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordIcon:Landroid/widget/ImageView;

    .line 1449
    const v0, 0x7f100254

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordText:Landroid/widget/TextView;

    .line 1450
    const v0, 0x7f100255

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    .line 1453
    :cond_0
    return-void
.end method

.method public isBackgroundShowing()Z
    .locals 1

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

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

.method public manageAMRecordInfo(ZZ)V
    .locals 3
    .param p1, "showRecordInfo"    # Z
    .param p2, "isPaused"    # Z

    .prologue
    .line 2618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manageRecordInfo(showRecordInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2620
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    .line 2621
    .local v0, "recorderMgr":Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    if-eqz v0, :cond_1

    .line 2622
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2623
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->inflateRecordInfo()V

    .line 2624
    invoke-virtual {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->updateAMRecordTime(Z)V

    .line 2625
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/accessory/CoverScreen;->updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    .line 2626
    iget-boolean v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v1, :cond_0

    .line 2627
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->setAMView()V

    .line 2629
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 2630
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2631
    invoke-virtual {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->updateRecordInfoColor(Z)V

    .line 2638
    :cond_1
    :goto_0
    return-void

    .line 2634
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2635
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0
.end method

.method public manageRecordInfo(ZZ)V
    .locals 3
    .param p1, "showRecordInfo"    # Z
    .param p2, "isPaused"    # Z

    .prologue
    .line 1456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manageRecordInfo(showRecordInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1458
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    .line 1459
    .local v0, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v0, :cond_0

    .line 1460
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1461
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->inflateRecordInfo()V

    .line 1462
    invoke-virtual {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->updateRecordTime(Z)V

    .line 1463
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 1464
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1465
    invoke-virtual {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->updateRecordInfoColor(Z)V

    .line 1472
    :cond_0
    :goto_0
    return-void

    .line 1468
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1469
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0
.end method

.method public onCallChanged(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1794
    if-nez p1, :cond_0

    .line 1795
    const-string v0, "CoverScreen"

    const-string v1, "call is null"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1804
    :goto_0
    return-void

    .line 1798
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1799
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->updateRejectMsgContent(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 1802
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    goto :goto_0
.end method

.method public onChildNumberChange()V
    .locals 0

    .prologue
    .line 1816
    return-void
.end method

.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 4
    .param p1, "chronometer"    # Landroid/widget/Chronometer;

    .prologue
    .line 1820
    if-nez p1, :cond_0

    .line 1823
    :goto_0
    return-void

    .line 1821
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v0

    .line 1822
    .local v0, "base":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1823
    .local v2, "cur":J
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1585
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1586
    .local v0, "id":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1590
    const-string v1, "onClick: call super onClick"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1593
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 2603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetailsChanged... call : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2604
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v0, p1, v1, p0}, Lcom/android/incallui/util/SecCallerInfoUtils;->refreshContactInfoCache(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;)V

    .line 2605
    return-void
.end method

.method public onEmergencyModeChange(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 2615
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const v5, 0x7f0a04da

    const/16 v3, 0x8

    const/4 v4, 0x1

    .line 285
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 286
    const-string v1, "CoverScreen"

    const-string v2, "CoverScreen onFinishInflate()"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 288
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 289
    iput-boolean v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    .line 290
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getClearCoverColor()I

    move-result v0

    .line 291
    .local v0, "coverColor":I
    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->setBackgroundColor(I)V

    .line 294
    .end local v0    # "coverColor":I
    :cond_0
    const v1, 0x7f1001d4

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/widget/GradientAnimationView;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    .line 295
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v1}, Lcom/android/incallui/widget/GradientAnimationView;->setUp()V

    .line 299
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    .line 300
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientBackground()V

    .line 302
    const v1, 0x7f100245

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverCallCardContainer:Landroid/widget/RelativeLayout;

    .line 303
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateCallCardHeight()V

    .line 305
    const v1, 0x7f100193

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    .line 306
    const v1, 0x7f100199

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Chronometer;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    .line 307
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v3}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 308
    const v1, 0x7f10025f

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mDivider:Landroid/widget/TextView;

    .line 310
    const v1, 0x7f1001da

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    .line 311
    const v1, 0x7f1000a5

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    .line 312
    const v1, 0x7f100249

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mResumeButton:Landroid/widget/Button;

    .line 313
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mResumeButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    const v1, 0x7f1001dc

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mNameLayout:Landroid/widget/LinearLayout;

    .line 315
    const v1, 0x7f1000e9

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    .line 316
    const v1, 0x7f100197

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mLabelAndNumber:Landroid/widget/LinearLayout;

    .line 317
    const v1, 0x7f10010e

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    .line 318
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 319
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    .line 320
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 321
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v3

    div-float/2addr v2, v3

    .line 322
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v3

    mul-float/2addr v2, v3

    .line 319
    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 324
    :cond_2
    const v1, 0x7f100198

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    .line 325
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 326
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    .line 327
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 328
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v3

    div-float/2addr v2, v3

    .line 329
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v3

    mul-float/2addr v2, v3

    .line 326
    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 334
    :cond_3
    const-string v1, "support_twophone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 335
    const v1, 0x7f10024a

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mKtTwophoneStub:Landroid/view/ViewStub;

    .line 336
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mKtTwophoneStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_4

    .line 337
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mKtTwophoneStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 338
    const v1, 0x7f10012e

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    .line 342
    :cond_4
    const-string v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "support_spam_call"

    .line 343
    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 344
    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForSmartCall()V

    .line 347
    :cond_6
    const-string v1, "phone_number_locator"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 348
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForPhoneNumberLocator()V

    .line 351
    :cond_7
    const v1, 0x7f10023f

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    .line 352
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForAnswer(Landroid/view/View;)V

    .line 354
    const v1, 0x7f100240

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallButtons:Landroid/view/View;

    .line 355
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallButtons:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForInCall(Landroid/view/View;)V

    .line 357
    const v1, 0x7f100242

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallButtons:Landroid/view/View;

    .line 358
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallButtons:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForEndCall(Landroid/view/View;)V

    .line 360
    const v1, 0x7f100251

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    .line 361
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForVideoCall(Landroid/view/View;)V

    .line 363
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForModifyCall()V

    .line 364
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "grabbedState"    # I

    .prologue
    .line 1957
    packed-switch p2, :pswitch_data_0

    .line 1969
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1960
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1961
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->pokeUserActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 1957
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 673
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/accessory/CoverScreen;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 674
    if-eqz p3, :cond_0

    .line 675
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 677
    :cond_0
    return-void
.end method

.method public onLastForwardedNumberChange()V
    .locals 0

    .prologue
    .line 1812
    return-void
.end method

.method public onNumberChanged(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 2609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNumberChanged... call : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2610
    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    .line 2611
    return-void
.end method

.method public onSessionModificationStateChange(I)V
    .locals 0
    .param p1, "sessionModificationState"    # I

    .prologue
    .line 1808
    return-void
.end method

.method public onSmartImageQueryComplete()V
    .locals 2

    .prologue
    .line 2398
    const-string v0, "onSmartImageQueryComplete - cover!"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2399
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2400
    return-void
.end method

.method public onSmartInfoQueryComplete()V
    .locals 2

    .prologue
    .line 2392
    const-string v0, "onSmartInfoQueryComplete - cover!"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2393
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2394
    return-void
.end method

.method public onSmartInfoQueryStart()V
    .locals 0

    .prologue
    .line 2404
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 12
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 547
    const-string v8, "CoverScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onStateChange: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 548
    const/4 v8, 0x0

    invoke-static {p3, v8, v7}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 549
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 550
    const-string v7, "CoverScreen"

    const-string v8, "call is null"

    invoke-static {v7, v8, v6}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 622
    :goto_0
    return-void

    .line 553
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2

    move v2, v6

    .line 554
    .local v2, "isDisconnected":Z
    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v3

    .line 555
    .local v3, "isIncomingMissed":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v4

    .line 557
    .local v4, "isRejectCall":Z
    if-nez v3, :cond_1

    if-eqz v4, :cond_3

    .line 558
    :cond_1
    const-string v7, "CoverScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onStateChange - isIncomingMissed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isRejectCall - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .end local v2    # "isDisconnected":Z
    .end local v3    # "isIncomingMissed":Z
    .end local v4    # "isRejectCall":Z
    :cond_2
    move v2, v7

    .line 553
    goto :goto_1

    .line 562
    .restart local v2    # "isDisconnected":Z
    .restart local v3    # "isIncomingMissed":Z
    .restart local v4    # "isRejectCall":Z
    :cond_3
    if-nez v2, :cond_5

    .line 563
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 564
    iget-object v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v8, v0}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v8

    if-nez v8, :cond_b

    move v5, v6

    .line 565
    .local v5, "primaryChanged":Z
    :goto_2
    if-eqz v0, :cond_c

    if-nez v5, :cond_4

    iget-object v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-nez v8, :cond_c

    .line 566
    :cond_4
    const-string v8, "CoverScreen"

    const-string v9, "need to find contactinfo"

    invoke-static {v8, v9, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 567
    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    .line 573
    .end local v5    # "primaryChanged":Z
    :cond_5
    :goto_3
    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v8, :cond_e

    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v8, :cond_e

    .line 574
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->animateForShrinkBackground()V

    .line 579
    :cond_6
    :goto_4
    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;

    .line 580
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientBackground()V

    .line 581
    iget-object v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, v0, v8}, Lcom/android/incallui/accessory/CoverScreen;->updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 582
    invoke-direct {p0, p2, v0}, Lcom/android/incallui/accessory/CoverScreen;->updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    .line 583
    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->updateRejectMsgContent(Lcom/android/incallui/Call;)V

    .line 584
    invoke-direct {p0, p2, v0, v2, v3}, Lcom/android/incallui/accessory/CoverScreen;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;ZZ)V

    .line 585
    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->updateVideoCallViews(Lcom/android/incallui/Call;)V

    .line 586
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateGuideText()V

    .line 587
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateHoldCallText()V

    .line 588
    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->updateRecordTime(Lcom/android/incallui/Call;)V

    .line 589
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/incallui/accessory/CoverScreen;->updateCarrierInfo(I)V

    .line 590
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/incallui/accessory/CoverScreen;->animateForEndCall(I)V

    .line 591
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/incallui/accessory/CoverScreen;->updateTextColor(I)V

    .line 592
    const-string v8, "support_smart_call"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 593
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/incallui/accessory/CoverScreen;->updateSmartTextColor(I)V

    .line 594
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 595
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_7

    .line 596
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 597
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateSmartCallInfo()V

    .line 598
    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->setSmartCallEndState(Lcom/android/incallui/Call;)V

    .line 602
    .end local v1    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_7
    const-string v8, "phone_number_locator"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 603
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneNumberLocator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryPhoneNumberLocator(Ljava/lang/String;I)V

    .line 604
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updatePhoneNumberLocatorTextColor()V

    .line 608
    :cond_8
    const-string v8, "automatic_answering_machine"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 609
    const-string v8, "CoverScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onStateChange :  isAutoAnswered - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 610
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    if-ne v8, v11, :cond_9

    .line 611
    invoke-virtual {p0, v6, v7}, Lcom/android/incallui/accessory/CoverScreen;->manageAMRecordInfo(ZZ)V

    .line 612
    iget-boolean v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v6, :cond_9

    .line 613
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->setAMView()V

    .line 616
    :cond_9
    if-eqz v2, :cond_a

    iget-boolean v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v6, :cond_a

    .line 617
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->clearAMView()V

    .line 621
    :cond_a
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    iput v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mPreviousCallState:I

    goto/16 :goto_0

    :cond_b
    move v5, v7

    .line 564
    goto/16 :goto_2

    .line 568
    .restart local v5    # "primaryChanged":Z
    :cond_c
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableIMSConferenceInfo()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 569
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v10, 0x4

    if-ne v8, v10, :cond_d

    move v8, v6

    :goto_5
    invoke-static {v9, v0, v8}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    goto/16 :goto_3

    :cond_d
    move v8, v7

    goto :goto_5

    .line 575
    .end local v5    # "primaryChanged":Z
    :cond_e
    iget v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mPreviousCallState:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_6

    .line 576
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    if-ne v8, v11, :cond_6

    .line 577
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->animateForShrinkBackground()V

    goto/16 :goto_4
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "whichHandle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1841
    packed-switch p2, :pswitch_data_0

    .line 1893
    :cond_0
    :goto_0
    return-void

    .line 1843
    :pswitch_0
    const-string v1, "LEFT_HANDLE"

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1844
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 1846
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1847
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1849
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    .line 1850
    .local v0, "recorderMgr":Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 1851
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1853
    :cond_1
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    .line 1854
    invoke-static {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    .line 1855
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-direct {p0, v1, v2, v3, v3}, Lcom/android/incallui/accessory/CoverScreen;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;ZZ)V

    .line 1856
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/accessory/CoverScreen;->updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    .line 1857
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->clearAMView()V

    goto :goto_0

    .line 1861
    .end local v0    # "recorderMgr":Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->acceptCallClicked()V

    .line 1862
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->hideIncomingScreen()V

    goto :goto_0

    .line 1863
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallButtons:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1864
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->voiceCallClicked()V

    .line 1865
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->coverCall_makeVoiceCallBySlide()V

    goto :goto_0

    .line 1870
    :pswitch_1
    const-string v1, "RIGHT_HANDLE"

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1871
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 1873
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1874
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1875
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    .line 1876
    invoke-static {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    .line 1877
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-direct {p0, v1, v2, v3, v3}, Lcom/android/incallui/accessory/CoverScreen;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;ZZ)V

    .line 1878
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/accessory/CoverScreen;->updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    .line 1879
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->clearAMView()V

    .line 1880
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->endCallClicked()V

    goto/16 :goto_0

    .line 1884
    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->rejectCallClicked()V

    .line 1885
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->hideIncomingScreen()V

    goto/16 :goto_0

    .line 1886
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1887
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->endCallClicked()V

    goto/16 :goto_0

    .line 1841
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUpdateCoreAppsContact()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 681
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 683
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 684
    const-string v4, "CoverScreen"

    const-string v5, "call is null"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    .line 689
    .local v2, "isConference":Z
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v5, :cond_3

    if-nez v2, :cond_3

    const/4 v3, 0x1

    .line 691
    .local v3, "showCoreApps":Z
    :goto_1
    if-eqz v3, :cond_0

    .line 693
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v1

    .line 694
    .local v1, "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    if-eqz v1, :cond_0

    .line 695
    iget-object v5, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 696
    iget-object v5, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryName(Ljava/lang/String;Z)V

    .line 698
    :cond_2
    iget-object v4, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 699
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v4, v5}, Lcom/android/incallui/accessory/CoverScreen;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .end local v1    # "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    .end local v3    # "showCoreApps":Z
    :cond_3
    move v3, v4

    .line 689
    goto :goto_1
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 2016
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2017
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 2027
    :goto_0
    return-void

    .line 2018
    :cond_0
    const-string v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2019
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 2020
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 2024
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SIVO"

    const-string v3, "Decline message"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2022
    :cond_1
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_1
.end method

.method public rejectWithAnswerMemo()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2668
    const-string v0, "rejectWithAnswerMemo!"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2669
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_2

    .line 2670
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2671
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    .line 2672
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->answeringMode()V

    .line 2673
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2674
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnsweringMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2675
    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnsweringMode(Z)V

    .line 2677
    :cond_1
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->playGuidance()V

    .line 2680
    :cond_2
    return-void
.end method

.method public setParentWindow(Landroid/view/Window;)V
    .locals 0
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen;->mParentWindow:Landroid/view/Window;

    .line 281
    return-void
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;I)V
    .locals 8
    .param p1, "phoneNumberLocator"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v4, 0x0

    .line 2539
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isPhoneNumberLocatorOn()Z

    move-result v0

    .line 2540
    .local v0, "isPnlOn":Z
    const/4 v5, 0x4

    if-eq v5, p2, :cond_0

    const/4 v5, 0x5

    if-eq v5, p2, :cond_0

    .line 2542
    invoke-static {p2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v1, v3

    .line 2543
    .local v1, "needToShow":Z
    :goto_0
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v3

    .line 2544
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2545
    .local v2, "sPhoneNumberLocator":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 2546
    if-eqz v1, :cond_5

    .line 2547
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 2548
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2549
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2550
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2551
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2565
    :cond_1
    :goto_2
    return-void

    .end local v1    # "needToShow":Z
    .end local v2    # "sPhoneNumberLocator":Ljava/lang/String;
    :cond_2
    move v1, v4

    .line 2542
    goto :goto_0

    .restart local v1    # "needToShow":Z
    :cond_3
    move v1, v4

    .line 2543
    goto :goto_1

    .line 2553
    .restart local v2    # "sPhoneNumberLocator":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2554
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2555
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2556
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 2559
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2560
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2561
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2562
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public setPrimarySpamInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 11
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 1061
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1062
    :cond_1
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 1064
    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamTagName()Ljava/lang/String;

    move-result-object v2

    .line 1065
    .local v2, "mTagName":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getisSpam()Z

    move-result v0

    .line 1066
    .local v0, "isSpam":Z
    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCount()I

    move-result v1

    .line 1067
    .local v1, "mCount":I
    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamTagType()I

    move-result v3

    .line 1069
    .local v3, "mTagType":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPrimarySpamInfo mTagName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isSpam : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mCount : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mTagType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isContactExist : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isYellowPage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isVoiceMail :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isConferenceCall :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1076
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1069
    invoke-static {p0, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1078
    const/4 v4, 0x0

    .line 1079
    .local v4, "reportText":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1080
    .local v5, "spamInfo":Ljava/lang/String;
    iget-boolean v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v6, :cond_2

    iget-boolean v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    if-nez v6, :cond_2

    if-eq v3, v10, :cond_2

    iget-boolean v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v6, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1081
    :cond_2
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v6}, Landroid/view/ViewStub;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_3

    .line 1082
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v6, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1084
    :cond_3
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 1085
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1088
    :cond_4
    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamReportOwn()I

    move-result v6

    if-le v3, v6, :cond_5

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 1089
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0902c4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCallTagName(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1090
    move-object v5, v4

    .line 1099
    :goto_1
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v6, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1100
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    .line 1101
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0132

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1105
    :goto_2
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1106
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1091
    :cond_5
    if-eq v3, v10, :cond_6

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 1092
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0902c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1093
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCallTagName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1095
    :cond_6
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v6, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1096
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1103
    :cond_7
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f010a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method public setSmartCallEndState(Lcom/android/incallui/Call;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x0

    .line 2568
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1

    .line 2569
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    .line 2599
    :cond_0
    :goto_0
    return-void

    .line 2572
    :cond_1
    if-eqz p1, :cond_0

    .line 2573
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2574
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_2
    const/4 v1, 0x1

    .line 2576
    .local v1, "rejectCall":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 2577
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    .line 2578
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v4, :cond_0

    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v4, :cond_0

    .line 2580
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/incallui/CallList;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v1, :cond_0

    .line 2581
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2582
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    .line 2583
    :cond_3
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 2584
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0240

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2588
    :cond_4
    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    .line 2589
    .local v2, "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    if-nez v2, :cond_0

    .line 2590
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2591
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2592
    :cond_6
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2593
    :cond_7
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2594
    :cond_8
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .end local v0    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v1    # "rejectCall":Z
    .end local v2    # "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_9
    move v1, v3

    .line 2574
    goto/16 :goto_1
.end method

.method public setUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2030
    const-string v0, "CoverScreen"

    const-string v1, "setUp"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2031
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 2032
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;Z)V

    .line 2033
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;Z)V

    .line 2034
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->addListener(Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;)V

    .line 2035
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2036
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/smartcall/SmartCallController;->addListener(Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;)V

    .line 2038
    :cond_0
    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2039
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V

    .line 2041
    :cond_1
    return-void
.end method

.method public updateAMRecordTime(Z)V
    .locals 8
    .param p1, "isPaused"    # Z

    .prologue
    .line 2641
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAMRecordTime isPaused = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2642
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v4

    .line 2643
    .local v4, "recorderMgr":Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2644
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v5, :cond_1

    .line 2645
    invoke-virtual {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->getRecordTime()J

    move-result-wide v2

    .line 2647
    .local v2, "duration":J
    const-wide/16 v0, -0x1

    .line 2648
    .local v0, "baseTime":J
    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v6, v2

    .line 2649
    :cond_0
    const-wide/16 v6, -0x1

    cmp-long v5, v0, v6

    if-lez v5, :cond_2

    .line 2650
    const-string v5, "start record time"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2651
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    .line 2652
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->start()V

    .line 2664
    .end local v0    # "baseTime":J
    .end local v2    # "duration":J
    :cond_1
    :goto_0
    return-void

    .line 2655
    .restart local v0    # "baseTime":J
    .restart local v2    # "duration":J
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-static {v6, v7}, Lcom/android/incallui/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    .line 2656
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0

    .line 2662
    .end local v0    # "baseTime":J
    .end local v2    # "duration":J
    :cond_3
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0
.end method

.method public updateCallCardHeight()V
    .locals 6

    .prologue
    .line 2329
    iget-boolean v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v1, :cond_1

    .line 2336
    :cond_0
    :goto_0
    return-void

    .line 2331
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverCallCardContainer:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 2332
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverCallCardContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2333
    .local v0, "callCardLp":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverHeight()I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2334
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverCallCardContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public declared-synchronized updateGradientBackground()V
    .locals 6

    .prologue
    .line 2206
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2207
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 2260
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2208
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    .line 2209
    .local v2, "secCall":Lcom/android/incallui/SecCall;
    const/4 v1, -0x1

    .line 2210
    .local v1, "currentModifyType":I
    if-eqz v2, :cond_2

    .line 2211
    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getModifyType()I

    move-result v1

    .line 2213
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-nez v3, :cond_3

    .line 2214
    const-string v3, "CoverScreen"

    const-string v4, "updateGradientBackground: mGradientAnimationView is null"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2206
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "currentModifyType":I
    .end local v2    # "secCall":Lcom/android/incallui/SecCall;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2218
    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v1    # "currentModifyType":I
    .restart local v2    # "secCall":Lcom/android/incallui/SecCall;
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    .line 2219
    const-string v3, "CoverScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateGradientBackground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    invoke-static {v5}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2221
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2222
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->endHideAnimationImmediately()V

    .line 2223
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setAlpha(F)V

    .line 2230
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2245
    :pswitch_0
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->isStreamAnimationRunning()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2246
    const-string v3, "CoverScreen"

    const-string v4, "updateGradientBackground: stopStreamAnimation"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2247
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->stopStreamAnimation()V

    .line 2249
    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2252
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->isScaleAnimationRunning()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2253
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setPivotY(F)V

    .line 2254
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setScaleY(F)V

    .line 2259
    :cond_6
    :goto_2
    iput v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPreviousModifyType:I

    goto/16 :goto_0

    .line 2224
    :cond_7
    iget v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPreviousModifyType:I

    sget v4, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    if-eq v3, v4, :cond_4

    .line 2225
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_8

    .line 2226
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_4

    .line 2227
    :cond_8
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setAlpha(F)V

    goto :goto_1

    .line 2236
    :pswitch_1
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->isStreamAnimationRunning()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2237
    const-string v3, "CoverScreen"

    const-string v4, "updateGradientBackground: animateForStream"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2238
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->animateForStream()V

    .line 2240
    :cond_9
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->isScaleAnimationRunning()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2241
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setScaleY(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 2230
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

.method public updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "needToSetDefault"    # Z

    .prologue
    .line 2198
    iget-boolean v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v0, :cond_1

    .line 2203
    :cond_0
    :goto_0
    return-void

    .line 2200
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_0

    .line 2201
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method public updateGuideText()V
    .locals 13

    .prologue
    const v10, 0x7f0900e3

    const/16 v12, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 706
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    .line 707
    .local v2, "calls":Lcom/android/incallui/CallList;
    if-nez v2, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    if-nez v7, :cond_2

    .line 709
    const v7, 0x7f10024f

    invoke-virtual {p0, v7}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    .line 712
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/InCallUISystemDB;->isFlightMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDeviceOnWiFi()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 713
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isVoWIFIRegistered()Z

    move-result v7

    if-nez v7, :cond_4

    .line 714
    :cond_3
    const-string v7, "isFlightMode = true"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0901f9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x5dc

    invoke-direct {p0, v7, v8, v9}, Lcom/android/incallui/accessory/CoverScreen;->showPopupWindow(Ljava/lang/String;J)V

    goto :goto_0

    .line 720
    :cond_4
    const-string v0, "%s"

    .line 721
    .local v0, "SRC_TAGS":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v3

    .line 722
    .local v3, "fgCall":Lcom/android/incallui/Call;
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 723
    .local v1, "bgCall":Lcom/android/incallui/Call;
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v4

    .line 724
    .local v4, "incomingCall":Lcom/android/incallui/Call;
    const/4 v6, 0x0

    .line 726
    .local v6, "name":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 727
    invoke-virtual {v3}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v7

    invoke-static {v7}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v8

    .line 726
    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 728
    .local v5, "mIsModifyProgress":Ljava/lang/Boolean;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/incallui/accessory/CoverScreen;->updateModifyCallGuide(Z)V

    .line 730
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 731
    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    .line 732
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0900e0

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .end local v5    # "mIsModifyProgress":Ljava/lang/Boolean;
    :cond_5
    move v7, v9

    .line 727
    goto :goto_1

    .line 734
    .restart local v5    # "mIsModifyProgress":Ljava/lang/Boolean;
    :cond_6
    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    .line 735
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09020f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 737
    iput-boolean v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mNeedToShowGuideText:Z

    goto/16 :goto_0

    .line 738
    :cond_7
    if-eqz v3, :cond_b

    if-eqz v1, :cond_b

    .line 739
    invoke-virtual {v1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 740
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090242

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 742
    :goto_2
    if-eqz v6, :cond_0

    .line 743
    iget-boolean v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v7, :cond_9

    .line 744
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "%s"

    invoke-virtual {v8, v10, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 741
    :cond_8
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/incallui/accessory/CoverScreen;->getCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 747
    :cond_9
    iget-boolean v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mNeedToShowGuideText:Z

    if-eqz v7, :cond_a

    .line 748
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%s"

    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v10, 0xbb8

    invoke-direct {p0, v7, v10, v11}, Lcom/android/incallui/accessory/CoverScreen;->showPopupWindow(Ljava/lang/String;J)V

    .line 750
    iput-boolean v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mNeedToShowGuideText:Z

    .line 752
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x6e

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 753
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 758
    :cond_b
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public updateModifyCallGuide(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 2186
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2187
    const/4 p1, 0x0

    .line 2189
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2190
    if-eqz p1, :cond_1

    .line 2191
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2192
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2195
    :cond_1
    return-void
.end method

.method public updateRecordInfoColor(Z)V
    .locals 8
    .param p1, "isPaused"    # Z

    .prologue
    const v7, 0x7f0f0133

    const v6, 0x7f0f00fc

    const v5, 0x7f0f00f7

    const v4, 0x7f0203bb

    const/4 v1, 0x0

    .line 1475
    iget-boolean v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v0, :cond_7

    .line 1476
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1477
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1480
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 1481
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1480
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1484
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1485
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordText:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 1486
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1485
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1489
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_3

    .line 1490
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz p1, :cond_6

    .line 1491
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1490
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Chronometer;->setTextColor(I)V

    .line 1514
    :cond_3
    :goto_3
    return-void

    .line 1479
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020196

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1487
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    .line 1492
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2

    .line 1495
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 1496
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    move-object v0, v1

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1499
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    .line 1500
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1499
    :cond_8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1503
    :cond_9
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordText:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 1504
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordText:Landroid/widget/TextView;

    if-eqz p1, :cond_c

    .line 1505
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1504
    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1508
    :cond_a
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_3

    .line 1509
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz p1, :cond_d

    .line 1510
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1509
    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/Chronometer;->setTextColor(I)V

    goto :goto_3

    .line 1498
    :cond_b
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02022c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4

    .line 1506
    :cond_c
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f017b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_5

    .line 1511
    :cond_d
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f017b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_6
.end method

.method public updateRecordTime(Z)V
    .locals 8
    .param p1, "isPaused"    # Z

    .prologue
    .line 1517
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateRecordTime isPaused="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1518
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v4

    .line 1519
    .local v4, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1520
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v5, :cond_1

    .line 1521
    invoke-virtual {v4}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v2

    .line 1523
    .local v2, "duration":J
    const-wide/16 v0, -0x1

    .line 1524
    .local v0, "baseTime":J
    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v6, v2

    .line 1525
    :cond_0
    const-wide/16 v6, -0x1

    cmp-long v5, v0, v6

    if-lez v5, :cond_2

    .line 1526
    const-string v5, "start record time"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1527
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    .line 1528
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->start()V

    .line 1540
    .end local v0    # "baseTime":J
    .end local v2    # "duration":J
    :cond_1
    :goto_0
    return-void

    .line 1531
    .restart local v0    # "baseTime":J
    .restart local v2    # "duration":J
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-static {v6, v7}, Lcom/android/incallui/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    .line 1532
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0

    .line 1538
    .end local v0    # "baseTime":J
    .end local v2    # "duration":J
    :cond_3
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0
.end method

.method public updateSmartCallInfo()V
    .locals 20

    .prologue
    .line 2407
    const-string v17, "support_smart_call"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 2536
    :cond_0
    :goto_0
    return-void

    .line 2408
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 2411
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v9

    .line 2412
    .local v9, "mCall":Lcom/android/incallui/Call;
    if-eqz v9, :cond_0

    .line 2413
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v17

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v7

    .line 2414
    .local v7, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v7, :cond_0

    .line 2416
    iget-boolean v0, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    iget-boolean v0, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 2417
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_0

    .line 2424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    const/16 v17, 0x8

    :goto_1
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    const/16 v17, 0x0

    goto :goto_1

    .line 2429
    :cond_4
    const-string v17, "updateSmartCallInfo "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2430
    invoke-static {v9}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v13

    .line 2431
    .local v13, "mSmartCallRegisterState":I
    const/4 v12, 0x4

    .line 2432
    .local v12, "mHasPhoto":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a009e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v4, v0

    .line 2433
    .local v4, "diameter":I
    invoke-virtual {v9}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    :cond_5
    const/4 v11, 0x1

    .line 2434
    .local v11, "mEndCallState":Z
    :goto_2
    invoke-virtual {v9}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/accessory/CoverScreen;->mSpamNumber:Ljava/lang/String;

    .line 2436
    iget-object v0, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    move-object/from16 v16, v0

    .line 2437
    .local v16, "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    if-eqz v16, :cond_14

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    if-eqz v13, :cond_14

    .line 2438
    :cond_6
    const/4 v10, 0x0

    .line 2440
    .local v10, "mDrawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    const/16 v17, 0x1

    move/from16 v0, v17

    if-gt v13, v0, :cond_10

    .line 2441
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2442
    .local v14, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2444
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2445
    .local v5, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v5, :cond_7

    .line 2446
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2447
    .local v8, "mBitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_7

    .line 2449
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v17

    .line 2452
    invoke-static {v8, v4, v4}, Lcom/android/incallui/util/GraphicResourceUtils;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 2451
    move-object/from16 v0, v18

    invoke-static {v0, v4, v4}, Lcom/android/incallui/util/GraphicResourceUtils;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 2450
    invoke-static/range {v18 .. v18}, Lcom/android/incallui/util/GraphicResourceUtils;->getDrawableFromBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 2448
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 2458
    .end local v8    # "mBitmap":Landroid/graphics/Bitmap;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x4

    invoke-static/range {v18 .. v19}, Lcom/android/incallui/util/SecOpenThemeUtils;->setCoverScreenSmartCallBackgroundResource(Landroid/content/Context;I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    move/from16 v17, v0

    if-nez v17, :cond_f

    const/16 v17, 0x0

    :goto_3
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2460
    invoke-virtual {v9}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/accessory/CoverScreen;->setSmartCallPhotoFilter(IZ)V

    .line 2470
    .end local v5    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_4
    if-eqz v10, :cond_a

    .line 2471
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    .line 2472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v10}, Lcom/android/incallui/accessory/CoverScreen;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2473
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 2474
    .local v15, "showPhotoContainer":Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    .line 2475
    .local v3, "calls":Lcom/android/incallui/CallList;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v17

    if-eqz v17, :cond_8

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v17

    if-eqz v17, :cond_8

    .line 2476
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 2478
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_11

    const/16 v17, 0x0

    :goto_5
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2481
    .end local v3    # "calls":Lcom/android/incallui/CallList;
    .end local v15    # "showPhotoContainer":Ljava/lang/Boolean;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2487
    :cond_a
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/android/incallui/smartcall/SmartCallUtil;->setSmartAppLogging(ILandroid/content/Context;)V

    .line 2489
    if-nez v11, :cond_d

    .line 2490
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateSmartCallImageInfo mEndCallState : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2491
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_12

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v13, v0, :cond_b

    if-nez v13, :cond_12

    .line 2494
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2495
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 2496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2497
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 2498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2511
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mLabelAndNumber:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2535
    .end local v10    # "mDrawable":Landroid/graphics/drawable/Drawable;
    :cond_d
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/accessory/CoverScreen;->arrangePrimaryLayout()V

    goto/16 :goto_0

    .line 2433
    .end local v11    # "mEndCallState":Z
    .end local v16    # "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 2459
    .restart local v5    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v10    # "mDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "mEndCallState":Z
    .restart local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v16    # "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_f
    const/16 v17, 0x8

    goto/16 :goto_3

    .line 2462
    .end local v5    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_10
    :try_start_1
    const-string v17, "Display smart call level image"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2464
    invoke-static {v13, v4}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallRegisterImage(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 2465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f020200

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2467
    invoke-virtual {v9}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/accessory/CoverScreen;->setSmartCallPhotoFilter(IZ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 2483
    :catch_0
    move-exception v6

    .line 2484
    .local v6, "e":Ljava/lang/IllegalStateException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateSmartCallInfo : Illegal State Exception Occured"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 2478
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    .restart local v3    # "calls":Lcom/android/incallui/CallList;
    .restart local v15    # "showPhotoContainer":Ljava/lang/Boolean;
    :cond_11
    const/16 v17, 0x8

    goto/16 :goto_5

    .line 2502
    .end local v3    # "calls":Lcom/android/incallui/CallList;
    .end local v15    # "showPhotoContainer":Ljava/lang/Boolean;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-static {v13}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallName(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2504
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 2505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSpamNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSpamNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2506
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSpamNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSpamNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 2507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSpamNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 2518
    .end local v10    # "mDrawable":Landroid/graphics/drawable/Drawable;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2520
    if-nez v11, :cond_15

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getSmartCallSearching()Z

    move-result v17

    if-eqz v17, :cond_15

    .line 2521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0902b5

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSpamNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mLabelAndNumber:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    .line 2529
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8
.end method

.method public updateSmartCallRejectMsg(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 2774
    invoke-static {p1}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 2775
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2776
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090580

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2779
    :cond_0
    return-void
.end method
