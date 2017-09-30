.class public Lcom/android/incallui/accessory/CoverScreen;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Chronometer$OnChronometerTickListener;
.implements Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;
.implements Lcom/android/incallui/CallList$CallUpdateListener;
.implements Lcom/android/incallui/InCallPresenter$EmergencyModeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;
.implements Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;
.implements Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;
.implements Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;


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
.field private isCallRejected:Z

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

.field private mCoverCallCardContainer:Landroid/widget/LinearLayout;

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

.field private mPhoneNumberLocator:Landroid/widget/TextView;

.field private mPhoneNumberLocatorName:Landroid/widget/TextView;

.field private mPhoneNumberLocatorNumber:Landroid/widget/TextView;

.field private mPhoneNumberLocatorStub:Landroid/view/ViewStub;

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

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mNeedToShowGuideText:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPreviousCallState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPreviousModifyType:I

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamNumber:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    iput-boolean v1, p0, Lcom/android/incallui/accessory/CoverScreen;->isCallRejected:Z

    new-instance v0, Lcom/android/incallui/accessory/CoverScreen$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/accessory/CoverScreen$1;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-direct {v0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v2, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    return-void
.end method

.method private acceptCallClicked()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingOrActive()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/incallui/AnswerPresenter;->controlWaitingCall(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->coverCall_answerVoiceCallBySlide()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/incallui/accessory/CoverScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->dismissPopupWindow()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/Chronometer;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/incallui/accessory/CoverScreen;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/incallui/accessory/CoverScreen;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgHandle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->updateRejectMsgContent(Lcom/android/incallui/Call;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/widget/GradientAnimationView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/widget/GradientAnimationView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/widget/GradientAnimationView;)Lcom/android/incallui/widget/GradientAnimationView;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/incallui/accessory/CoverScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmCurrentStatusText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/accessory/CoverScreen;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->updateRejectHandleDrawer(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/accessory/CoverScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->animateHideForMaskPanel()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/accessory/CoverScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->animateShowForMaskPanel()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/accessory/CoverScreen;->updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method private animateForDummyBackground(Landroid/animation/AnimatorSet;I)V
    .locals 3

    const-string v0, "CoverScreen"

    const-string v1, "animateForDummyBackground"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    if-nez v0, :cond_0

    const v0, 0x7f10031b

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/GradientAnimationView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->setUp()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v1}, Lcom/android/incallui/widget/GradientAnimationView;->getStartColor()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v2}, Lcom/android/incallui/widget/GradientAnimationView;->getEndColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColor(II)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->hide()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    new-instance v0, Lcom/android/incallui/accessory/CoverScreen$16;

    invoke-direct {v0, p0}, Lcom/android/incallui/accessory/CoverScreen$16;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2, p2, v0}, Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForScale(FILcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0, p2}, Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForShow(I)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    return-void
.end method

.method private animateForEndCall(I)V
    .locals 3

    const/16 v1, 0xa

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPreviousCallState:I

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_0

    const-string v0, "animateForEndCall"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->animateForHide(I)V

    goto :goto_0
.end method

.method private animateHideForMaskPanel()V
    .locals 5

    const-string v0, "animateHideForMaskPanel"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/accessory/CoverScreen$14;

    invoke-direct {v1, p0}, Lcom/android/incallui/accessory/CoverScreen$14;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private animateShowForMaskPanel()V
    .locals 5

    const-string v0, "animateShowForMaskPanel"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setRejectMsgHandleView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const v4, 0x3e99999a    # 0.3f

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/accessory/CoverScreen$13;

    invoke-direct {v1, p0}, Lcom/android/incallui/accessory/CoverScreen$13;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private answeringMode()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "answeringMode - sView!"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

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

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->acceptCallClicked()V

    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->playGuidance()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    goto :goto_0
.end method

.method private arrangePrimaryLayout()V
    .locals 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0222

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a021b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a021c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method private canShowRejectCallWithMessage(Lcom/android/incallui/Call;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private clearAMView()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "answeringMode - sView! clearAMView "

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmViewStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmViewStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTextTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTextTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTextTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTimerTask:Ljava/util/TimerTask;

    iput-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTextTimer:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method private dismissPopupWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateGuideText()V

    return-void
.end method

.method private endCallClicked()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->updateNotUpdatingCalls(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->coverCall_endCallBySlide()V

    :cond_0
    return-void
.end method

.method private getCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)Ljava/lang/CharSequence;
    .locals 4

    const/4 v0, 0x0

    const/16 v3, 0x8

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v2, v0}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, v3}, Landroid/widget/Chronometer;->setVisibility(I)V

    move-object v0, v1

    :cond_1
    :goto_0
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v3}, Landroid/widget/Chronometer;->setVisibility(I)V

    :cond_2
    return-object v0

    :cond_3
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v3}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->setCallTime()V

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->setCallTime()V

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-virtual {v2, v0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->setLastCallTime(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getCallerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallerName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallerName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->nameAlternative:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    const-string v2, "UNKNOWN NAME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    goto :goto_0
.end method

.method private getNumber()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 2

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "geo_description_disable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/incallui/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method private getVideoCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)Ljava/lang/CharSequence;
    .locals 4

    const/4 v1, 0x0

    const/16 v3, 0x8

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_3

    :cond_0
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090144

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v2, v1}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v3}, Landroid/widget/Chronometer;->setVisibility(I)V

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_6

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090196

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v3}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090197

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090198

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_7

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->setCallTime()V

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->setCallTime()V

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-ne v0, v3, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-virtual {v2, v1}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->setLastCallTime(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    move-object v0, v1

    goto/16 :goto_1

    :cond_9
    move-object v0, v1

    goto :goto_3
.end method

.method private hideIncomingScreen()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private onFinishInflateForAnswer(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "onFinishInflateForAnswer"

    invoke-static {p0, v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const v0, 0x7f100268

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    :cond_0
    const v0, 0x7f10022b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    const v0, 0x7f10007a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

    const v0, 0x7f10007b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setLinearLayout(Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setTextView(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    const-string v0, "support_cover_extra_size"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0568

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const-string v0, "support_cover_extra_size"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0567

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->registerDetector(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/accessory/CoverScreen;->setDescriptionToHandle(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v1, Lcom/android/incallui/accessory/CoverScreen$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/accessory/CoverScreen$2;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerOpenListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v1, Lcom/android/incallui/accessory/CoverScreen$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/accessory/CoverScreen$3;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerCloseListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v1, Lcom/android/incallui/accessory/CoverScreen$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/accessory/CoverScreen$4;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerAnimateListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;)V

    :cond_5
    const v0, 0x7f100269

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setBackgroundPanel(Landroid/view/View;)V

    :cond_6
    const v0, 0x7f100078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgHandle:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgHandle:Landroid/view/View;

    if-eqz v0, :cond_7

    const-string v0, "support_cover_extra_size"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0566

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgHandle:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    const v0, 0x7f100079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    const v0, 0x7f10022d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/RejectMsgContentCover;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    invoke-virtual {v0, p0}, Lcom/android/incallui/RejectMsgContentCover;->setOnItemClickListener(Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/RejectMsgContentCover;->showAddReminderCheckBox(Ljava/lang/Boolean;)V

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    invoke-virtual {v0, p0}, Lcom/android/incallui/RejectMsgContentCover;->setOnAnswerMemoClickListener(Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setRejectMsgHandleView(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method private onFinishInflateForEndCall(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f1002cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setTouchVibationMode(Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(II)V

    :cond_0
    return-void
.end method

.method private onFinishInflateForInCall(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f1002cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setTouchVibationMode(Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(II)V

    :cond_0
    return-void
.end method

.method private onFinishInflateForModifyCall()V
    .locals 1

    const-string v0, "common_volte_kor"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1002ce

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mModifyCallViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mModifyCallViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mModifyCallViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mModifyCallView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private onFinishInflateForPhoneNumberLocator()V
    .locals 4

    const v0, 0x7f1001c7

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    const v0, 0x7f1001c8

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    const v0, 0x7f1001c5

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f1001c6

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocator:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0561

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method private onFinishInflateForSmartCall()V
    .locals 4

    const v0, 0x7f100298

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    const v0, 0x7f10029b

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0561

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    const v0, 0x7f100287

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    const v0, 0x7f1002d5

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f1002d6

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f1002da

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method private onFinishInflateForVideoCall(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f1002dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallGuideText:Landroid/widget/TextView;

    return-void
.end method

.method private rejectCallClicked()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->coverCall_declineVoiceCallBySlide()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/accessory/CoverScreen;->isCallRejected:Z

    goto :goto_0
.end method

.method private setAMView()V
    .locals 6

    const/16 v3, 0x8

    const/4 v2, 0x1

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

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    const v0, 0x7f1002e7

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v0, 0x7f10025c

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusImage:Landroid/widget/ImageView;

    const v0, 0x7f10025d

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusText:Landroid/widget/TextView;

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

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmCurrentStatusText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmCurrentStatusText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTextTimer:Ljava/util/Timer;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTextTimer:Ljava/util/Timer;

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTimerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_6

    new-instance v0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;-><init>(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/accessory/CoverScreen$1;)V

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTimerTask:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTextTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmCurrentStatusText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f02005f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setCallTime()V
    .locals 11

    const-wide/16 v2, -0x1

    const/4 v10, 0x0

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-static {v1, v10, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    :goto_0
    const/16 v5, 0x9

    if-eq v1, v5, :cond_0

    const/16 v5, 0xa

    if-ne v1, v5, :cond_4

    :cond_0
    move v5, v0

    :goto_1
    const/16 v8, 0x8

    if-ne v1, v8, :cond_5

    :goto_2
    const/4 v8, 0x3

    if-eq v1, v8, :cond_1

    if-nez v5, :cond_1

    if-eqz v0, :cond_6

    :cond_1
    invoke-virtual {v7}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    const-string v8, "ctc_call_time_duration"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getCdmaEarliestCallForTime()Lcom/android/incallui/Call;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v7

    if-ne v7, v6, :cond_2

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    :cond_2
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v6, v8, v6

    cmp-long v2, v0, v2

    if-lez v2, :cond_7

    if-nez v5, :cond_7

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, v6, v7}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, v4}, Landroid/widget/Chronometer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    :cond_3
    :goto_4
    return-void

    :cond_4
    move v5, v4

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_2

    :cond_6
    move-wide v0, v2

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v2}, Landroid/widget/Chronometer;->stop()V

    if-eqz v5, :cond_9

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, v6, v7}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v2}, Landroid/widget/Chronometer;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->setLastCallTime(Ljava/lang/String;)V

    :goto_5
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, v4}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-virtual {v0, v10}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->setLastCallTime(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v2}, Landroid/widget/Chronometer;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->setLastCallTime(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    move v1, v6

    goto/16 :goto_0
.end method

.method private setDescriptionToHandle(Landroid/view/View;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const v2, 0x7f090321

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const v2, 0x7f0902a9

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const v2, 0x7f0902a8

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_2
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1
.end method

.method private setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 10

    const v9, 0x7f0a009e

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "CoverScreen"

    const-string v2, "setPrimaryImage: views are not inflated yet"

    invoke-static {v0, v2, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v0, :cond_3

    const-string v0, "CoverScreen"

    const-string v2, "setPrimaryImage: clear flip cover"

    invoke-static {v0, v2, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4, v8, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "CoverScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPrimaryImage: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v6

    iget-object v7, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v6

    invoke-static {v5}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v2, :cond_7

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/util/SecOpenThemeUtils;->setCoverEmergencyBackgroundResource(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0, v8, v3}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    :goto_1
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v2}, Lcom/android/incallui/accessory/CoverScreen;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v4

    const-string v6, "support_smart_call"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    if-eqz v6, :cond_4

    invoke-static {v5}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v1

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    move v0, v3

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_b

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->arrangePrimaryLayout()V

    goto/16 :goto_0

    :cond_7
    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0, v2, v1}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-static {v7, v2, v6}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/util/SecOpenThemeUtils;->setCoverBackgroundResource(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_8
    if-eqz v6, :cond_9

    iget-object v7, v6, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_9

    const-string v2, "CallerImage From ContactAgent"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v7, v6, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v7, v1}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    iget-object v6, v6, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v7, v6, v2}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    :cond_9
    iget-boolean v6, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v6, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020486

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/SecOpenThemeUtils;->setCoverYpBackgroundResource(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    move-object v2, v0

    move v0, v1

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0, v8, v3}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_1

    :cond_b
    const/16 v3, 0x8

    goto/16 :goto_2
.end method

.method private setPrimaryLabel(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPrimaryName(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/4 v0, 0x3

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNameLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNameLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method private setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method private setSmartCallPhotoFilter(IZ)V
    .locals 7

    const v6, 0x7f0f004b

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSmartCallPhotoFilter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDefaultPhoto = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v5, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/accessory/CoverScreen$9;

    invoke-direct {v1, p0}, Lcom/android/incallui/accessory/CoverScreen$9;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0221

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/incallui/accessory/CoverScreen$10;

    invoke-direct {v1, p0}, Lcom/android/incallui/accessory/CoverScreen$10;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private showOnHoldText(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05001f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPopupWindow(Ljava/lang/String;J)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private startContactInfoSearch(Lcom/android/incallui/Call;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    new-instance v2, Lcom/android/incallui/accessory/CoverScreen$5;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/accessory/CoverScreen$5;-><init>(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/Call;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private tearDown()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v4, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearDrawable()V

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v4, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearDrawable()V

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v4, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->clearDrawable()V

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_5

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->tearDown()V

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->tearDown()V

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    :cond_7
    return-void
.end method

.method private updateAnswerButtons()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;ZZ)V
    .locals 9

    const/16 v5, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallButtons:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    const-string v1, "CoverScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIncomingMissed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isIncomingRejectedCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->hideIncomingScreen()V

    goto :goto_0

    :cond_3
    const-string v0, "CoverScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallButtons..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_9

    move v3, v1

    :goto_1
    if-nez p3, :cond_a

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v0, :cond_a

    move v0, v1

    :goto_2
    invoke-static {p2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v2

    :cond_4
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "CoverScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCallButtons :  isAutoAnswered - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v2

    move v3, v1

    :cond_5
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    if-eqz v3, :cond_b

    move v4, v2

    :goto_3
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v3, :cond_6

    if-eqz v6, :cond_c

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateVideoCallAnswerButtons()V

    :cond_6
    :goto_4
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_d

    move v3, v2

    :goto_5
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateInCallButtons()V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallButtons:Landroid/view/View;

    if-eqz p3, :cond_e

    :goto_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p3, :cond_8

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateEndCallButtons()V

    :cond_8
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v1, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    goto/16 :goto_0

    :cond_9
    move v3, v2

    goto/16 :goto_1

    :cond_a
    move v0, v2

    goto :goto_2

    :cond_b
    move v4, v5

    goto :goto_3

    :cond_c
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateAnswerButtons()V

    goto :goto_4

    :cond_d
    move v3, v5

    goto :goto_5

    :cond_e
    move v2, v5

    goto :goto_6
.end method

.method private updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/accessory/CoverScreen;->getVideoCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0, p2}, Lcom/android/incallui/accessory/CoverScreen;->updateCallTimeBlinkInfo(Ljava/lang/CharSequence;Lcom/android/incallui/Call;)V

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v4, :cond_4

    const/4 v1, 0x1

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->showOnHoldText(Z)V

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-virtual {v1}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->removeMessageForBlinkTime()V

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-virtual {v1}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->hasMessageForBlinkTime()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "not update stateLabel for blink call time"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/accessory/CoverScreen;->getCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-virtual {v0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->hasMessageForBlinkTime()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "not update stateLabel for blink call time"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCallTimeBlinkInfo(Ljava/lang/CharSequence;Lcom/android/incallui/Call;)V
    .locals 2

    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->setCallSubStateLabel(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->setCallSubStateView(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->setCallStateLabel(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, v1}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->setCallStateView(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->manageCallEndTimeBlink(I)V

    return-void
.end method

.method private updateCarrierInfo(I)V
    .locals 4

    const v3, 0x7f02042d

    const/16 v2, 0x8

    const/4 v1, 0x0

    const-string v0, "support_twophone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegisteredForCall()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->updateTwoPhoneColor(I)V

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mKtTwophoneStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mKtTwophoneStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "one phone mode, Call is two phone line"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "mKtTwophoneStub GONE"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mKtTwophoneStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mKtTwophoneStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "two phone mode, Call is two phone line"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02042c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "two phone mode, Call is one phone line"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateEndCallButtons()V
    .locals 9

    const/4 v7, 0x3

    const/16 v8, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v3

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-eq v4, v7, :cond_2

    if-nez v0, :cond_0

    if-nez v3, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-boolean v0, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    iget v4, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    iget v4, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    if-ne v4, v7, :cond_7

    :cond_3
    move v3, v0

    move v0, v2

    :goto_1
    const-string v4, "ims_voice_conference"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v1

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isEmergency : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isNumberExists : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isGroupCall : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v3, :cond_9

    if-eqz v0, :cond_9

    if-nez v4, :cond_9

    :goto_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "updateEndCallButtons : come here"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v2

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v8}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v8}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v4, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v4, :cond_c

    iget-object v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    :cond_8
    move v3, v0

    move v0, v2

    goto/16 :goto_1

    :cond_9
    move v1, v2

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v8}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    move v4, v2

    goto/16 :goto_2

    :cond_c
    move v3, v0

    move v0, v1

    goto/16 :goto_1

    :cond_d
    move v0, v1

    move v3, v2

    goto/16 :goto_1
.end method

.method private updateHoldCallText()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mHoldTextStub:Landroid/view/ViewStub;

    if-nez v0, :cond_2

    const v0, 0x7f1002d1

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mHoldTextStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mHoldTextStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f1002a2

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mHoldCallText:Landroid/widget/TextView;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mHoldTextStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-virtual {v2, v7}, Lcom/android/incallui/CallList;->getBgCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090318

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mHoldCallText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-static {v2, v7, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mHoldTextStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private updateInCallButtons()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private updatePhoneNumberLocatorTextColor()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0174

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0173

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    const-string v0, "CoverScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePrimaryDisplayInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v6

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-eqz v6, :cond_6

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0902bc

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x2

    if-lt v0, v5, :cond_a

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "secConferenceCallLabel"

    invoke-virtual {v7, v8, v9}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "%d"

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v5, v4

    move-object v4, v0

    :goto_2
    if-eqz v5, :cond_7

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_3
    invoke-direct {p0, v5, v0}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryName(Ljava/lang/String;Z)V

    invoke-direct {p0, v4}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    if-eqz v6, :cond_8

    :goto_4
    invoke-direct {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryLabel(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v3, v2

    :cond_5
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/accessory/CoverScreen;->setPrimarySpamInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->arrangePrimaryLayout()V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-static {v5, v1, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v7, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v4, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v4

    move-object v4, v0

    goto :goto_2

    :cond_7
    move v0, v3

    goto :goto_3

    :cond_8
    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    goto :goto_4

    :cond_9
    move-object v5, v4

    move-object v4, v0

    goto/16 :goto_2

    :cond_a
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private updateRecordTime(Lcom/android/incallui/Call;)V
    .locals 2

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v1

    invoke-virtual {v0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isShowRecordInfo(Lcom/android/incallui/Call;)Z

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/accessory/CoverScreen;->manageRecordInfo(ZZ)V

    goto :goto_0
.end method

.method private updateRejectHandleDrawer(Z)V
    .locals 4

    const/4 v1, -0x2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    const v0, 0x7f0203d1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v2

    if-nez p1, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/android/incallui/accessory/CoverScreen;->setDescriptionToHandle(Landroid/view/View;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a02ef

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_2
    const-string v3, "support_cover_extra_size"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0568

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    :cond_2
    :goto_3
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_3
    return-void

    :cond_4
    const v0, 0x7f0203d5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v1, v0

    goto :goto_3
.end method

.method private updateRejectMsgContent(Lcom/android/incallui/Call;)V
    .locals 3

    const/16 v1, 0x8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    if-eqz v0, :cond_3

    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_4

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getCoverBlockReportMessage()Ljava/util/List;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    invoke-virtual {v2, v0}, Lcom/android/incallui/RejectMsgContentCover;->configureRejectMsgList(Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->canShowRejectCallWithMessage(Lcom/android/incallui/Call;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    :cond_7
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_9

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateSmartTextColor(I)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const v8, 0x3ecccccd    # 0.4f

    iget-boolean v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0173

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e016f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e016e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x9

    if-ne p1, v4, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    :goto_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_4
    const/16 v4, 0xa

    if-ne p1, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f004d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    new-instance v5, Landroid/animation/ArgbEvaluator;

    invoke-direct {v5}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v11

    invoke-static {v5, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v6, v4

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/incallui/accessory/CoverScreen$11;

    invoke-direct {v2, p0}, Lcom/android/incallui/accessory/CoverScreen$11;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v11

    invoke-static {v0, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/incallui/accessory/CoverScreen$12;

    invoke-direct {v1, p0}, Lcom/android/incallui/accessory/CoverScreen$12;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method private updateTextColor(I)V
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const v9, 0x3ecccccd    # 0.4f

    iget-boolean v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setTextColor(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e013c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e013c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setTextColor(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0173

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e015d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e016f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e016e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->isBackgroundShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x9

    if-ne p1, v5, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v2, v0}, Landroid/widget/Chronometer;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0xa

    if-ne p1, v5, :cond_5

    iget v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mPreviousCallState:I

    const/16 v6, 0xa

    if-eq v5, v6, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f004d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    new-instance v6, Landroid/animation/ArgbEvaluator;

    invoke-direct {v6}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v7, v13, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v12

    invoke-static {v6, v7}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v2

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/incallui/accessory/CoverScreen$6;

    invoke-direct {v6, p0}, Lcom/android/incallui/accessory/CoverScreen$6;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v6, v13, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v12

    invoke-static {v2, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v2, v5

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/incallui/accessory/CoverScreen$7;

    invoke-direct {v2, p0}, Lcom/android/incallui/accessory/CoverScreen$7;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v12

    invoke-static {v0, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v2, v5

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/incallui/accessory/CoverScreen$8;

    invoke-direct {v1, p0}, Lcom/android/incallui/accessory/CoverScreen$8;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, v2}, Landroid/widget/Chronometer;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method private updateTwoPhoneColor(I)V
    .locals 3

    const v2, 0x7f0e0174

    iget-boolean v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e014b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method

.method private updateVideoCallAnswerButtons()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private updateVideoCallViews(Lcom/android/incallui/Call;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x4

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-eq v1, v2, :cond_4

    const/4 v0, 0x6

    if-eq v1, v0, :cond_4

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v0

    if-ne v0, v3, :cond_5

    :cond_4
    const v0, 0x7f0e0174

    :goto_1
    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallGuideText:Landroid/widget/TextView;

    const v2, 0x7f09025c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_5
    const v0, 0x7f0e014d

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallGuideText:Landroid/widget/TextView;

    const v2, 0x7f09025f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private voiceCallClicked()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUISystemDB;->isFlightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDeviceOnWiFi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isVoWIFIRegistered()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "isFlightMode = true"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090260

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "support_twophone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v4, "TwoPhoneDialOption"

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "twophone"

    :goto_1
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v1, "tel"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    const-string v1, "onephone"

    goto :goto_1
.end method


# virtual methods
.method public animateForShrinkBackground()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v1, Lcom/android/incallui/accessory/CoverScreen$15;

    invoke-direct {v1, p0}, Lcom/android/incallui/accessory/CoverScreen$15;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForScale(FILcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v1}, Lcom/android/incallui/widget/GradientAnimationView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v2, v0}, Lcom/android/incallui/accessory/CoverScreen;->animateForDummyBackground(Landroid/animation/AnimatorSet;I)V

    :cond_0
    const-string v0, "CoverScreen"

    const-string v1, "animateForShrinkBackground"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->stopStreamAnimation()V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void
.end method

.method public attemptFinish(Z)V
    .locals 3

    const-string v0, "CoverScreen"

    const-string v1, "tearDown"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->removeListener(Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->tearDown()V

    :cond_3
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/smartcall/SmartCallController;->removeListener(Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;)V

    :cond_4
    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V

    :cond_5
    return-void
.end method

.method protected inflateRecordInfo()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    const v0, 0x7f10028f

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f1002dd

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordIcon:Landroid/widget/ImageView;

    const v0, 0x7f1002de

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordText:Landroid/widget/TextView;

    const v0, 0x7f1002df

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    :cond_0
    return-void
.end method

.method public isBackgroundShowing()Z
    .locals 1

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
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "manageRecordInfo(showRecordInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->inflateRecordInfo()V

    invoke-virtual {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->updateAMRecordTime(Z)V

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/accessory/CoverScreen;->updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    iget-boolean v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->setAMView()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->updateRecordInfoColor(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0
.end method

.method public manageRecordInfo(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "manageRecordInfo(showRecordInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->inflateRecordInfo()V

    invoke-virtual {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->updateRecordTime(Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->updateRecordInfoColor(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0
.end method

.method public onCallChanged(Lcom/android/incallui/Call;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "CoverScreen"

    const-string v1, "call is null"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->updateRejectMsgContent(Lcom/android/incallui/Call;)V

    goto :goto_0

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

    return-void
.end method

.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/Chronometer;->getBase()J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

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

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick: call super onClick"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 2

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

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v0, p1, v1, p0}, Lcom/android/incallui/util/SecCallerInfoUtils;->refreshContactInfoCache(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;)V

    return-void
.end method

.method public onEmergencyModeChange(I)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const v4, 0x7f0a0561

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const-string v0, "CoverScreen"

    const-string v1, "CoverScreen onFinishInflate()"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v0

    if-ne v0, v2, :cond_0

    iput-boolean v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getClearCoverColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->setBackgroundColor(I)V

    :cond_0
    const v0, 0x7f10024b

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/GradientAnimationView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->setUp()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->hide()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/accessory/CoverScreen;->isCallRejected:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientBackground()V

    const v0, 0x7f1002cf

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverCallCardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateCallCardHeight()V

    const v0, 0x7f10020a

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    const v0, 0x7f100210

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, v2}, Landroid/widget/Chronometer;->setVisibility(I)V

    const v0, 0x7f1002e9

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mDivider:Landroid/widget/TextView;

    const v0, 0x7f100251

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    const v0, 0x7f1000d0

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    const v0, 0x7f1002d3

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mResumeButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mResumeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100253

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNameLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f10012a

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    const v0, 0x7f10020e

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mLabelAndNumber:Landroid/widget/LinearLayout;

    const v0, 0x7f10014f

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    const v0, 0x7f10020f

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    const-string v0, "support_twophone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f1002d4

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mKtTwophoneStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mKtTwophoneStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mKtTwophoneStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f10016f

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    :cond_4
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForSmartCall()V

    :cond_6
    const-string v0, "phone_number_locator"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForPhoneNumberLocator()V

    :cond_7
    const v0, 0x7f1002c9

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForAnswer(Landroid/view/View;)V

    const v0, 0x7f1002ca

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallButtons:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallButtons:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForInCall(Landroid/view/View;)V

    const v0, 0x7f1002cc

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallButtons:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallButtons:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForEndCall(Landroid/view/View;)V

    const v0, 0x7f1002db

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForVideoCall(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForModifyCall()V

    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->pokeUserActivity(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/accessory/CoverScreen;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    :cond_0
    return-void
.end method

.method public onLastForwardedNumberChange()V
    .locals 0

    return-void
.end method

.method public onNumberChanged(Lcom/android/incallui/Call;)V
    .locals 2

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

    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public onSessionModificationStateChange(I)V
    .locals 0

    return-void
.end method

.method public onSmartImageQueryComplete()V
    .locals 2

    const-string v0, "onSmartImageQueryComplete - cover!"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSmartInfoQueryComplete()V
    .locals 2

    const-string v0, "onSmartInfoQueryComplete - cover!"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSmartInfoQueryStart()V
    .locals 0

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "CoverScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStateChange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-static {p3, v0, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v0, "CoverScreen"

    const-string v2, "call is null"

    invoke-static {v0, v2, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-ne v0, v8, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0, v4}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-ne v0, v8, :cond_2

    invoke-virtual {v4}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/incallui/accessory/CoverScreen;->isCallRejected:Z

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v3

    if-nez v5, :cond_4

    if-eqz v3, :cond_6

    :cond_4
    const-string v0, "CoverScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStateChange - isIncomingMissed : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", isRejectCall - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v3, v4}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_e

    move v3, v1

    :goto_2
    if-eqz v4, :cond_f

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-nez v3, :cond_f

    :cond_7
    const-string v3, "CoverScreen"

    const-string v6, "need to find contactinfo"

    invoke-static {v3, v6, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v4}, Lcom/android/incallui/accessory/CoverScreen;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    :cond_8
    :goto_3
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v3, :cond_11

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_11

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->animateForShrinkBackground()V

    :cond_9
    :goto_4
    iput-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientBackground()V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, v4, v3}, Lcom/android/incallui/accessory/CoverScreen;->updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-direct {p0, p2, v4}, Lcom/android/incallui/accessory/CoverScreen;->updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    invoke-direct {p0, v4}, Lcom/android/incallui/accessory/CoverScreen;->updateRejectMsgContent(Lcom/android/incallui/Call;)V

    invoke-direct {p0, p2, v4, v0, v5}, Lcom/android/incallui/accessory/CoverScreen;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;ZZ)V

    invoke-direct {p0, v4}, Lcom/android/incallui/accessory/CoverScreen;->updateVideoCallViews(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateGuideText()V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateHoldCallText()V

    invoke-direct {p0, v4}, Lcom/android/incallui/accessory/CoverScreen;->updateRecordTime(Lcom/android/incallui/Call;)V

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/incallui/accessory/CoverScreen;->updateCarrierInfo(I)V

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/incallui/accessory/CoverScreen;->animateForEndCall(I)V

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/incallui/accessory/CoverScreen;->updateTextColor(I)V

    const-string v3, "support_smart_call"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/incallui/accessory/CoverScreen;->updateSmartTextColor(I)V

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateSmartCallInfo()V

    invoke-virtual {p0, v4}, Lcom/android/incallui/accessory/CoverScreen;->setSmartCallEndState(Lcom/android/incallui/Call;)V

    :cond_a
    const-string v3, "phone_number_locator"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getPhoneNumberLocator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryPhoneNumberLocator(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updatePhoneNumberLocatorTextColor()V

    :cond_b
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "CoverScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStateChange :  isAutoAnswered - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v8, :cond_c

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/accessory/CoverScreen;->manageAMRecordInfo(ZZ)V

    iget-boolean v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v1, :cond_c

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->setAMView()V

    :cond_c
    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->clearAMView()V

    :cond_d
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPreviousCallState:I

    goto/16 :goto_0

    :cond_e
    move v3, v2

    goto/16 :goto_2

    :cond_f
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableIMSConferenceInfo()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v7, 0x4

    if-ne v3, v7, :cond_10

    move v3, v1

    :goto_5
    invoke-static {v6, v4, v3}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    goto/16 :goto_3

    :cond_10
    move v3, v2

    goto :goto_5

    :cond_11
    iget v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPreviousCallState:I

    const/4 v6, 0x6

    if-ne v3, v6, :cond_9

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v8, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->animateForShrinkBackground()V

    goto/16 :goto_4
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "LEFT_HANDLE"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    invoke-static {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/incallui/accessory/CoverScreen;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;ZZ)V

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/accessory/CoverScreen;->updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->clearAMView()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->acceptCallClicked()V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->hideIncomingScreen()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->voiceCallClicked()V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->coverCall_makeVoiceCallBySlide()V

    goto :goto_0

    :pswitch_1
    const-string v0, "RIGHT_HANDLE"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    invoke-static {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/incallui/accessory/CoverScreen;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;ZZ)V

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/accessory/CoverScreen;->updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->clearAMView()V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->endCallClicked()V

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->rejectCallClicked()V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->hideIncomingScreen()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->endCallClicked()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUpdateCoreAppsContact()V
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "CoverScreen"

    const-string v1, "call is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryName(Ljava/lang/String;Z)V

    :cond_2
    iget-object v1, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/accessory/CoverScreen;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SIVO"

    const-string v2, "Decline message"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3, p1}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_1
.end method

.method public rejectWithAnswerMemo()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "rejectWithAnswerMemo!"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->answeringMode()V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnsweringMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnsweringMode(Z)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->playGuidance()V

    :cond_2
    return-void
.end method

.method public setParentWindow(Landroid/view/Window;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen;->mParentWindow:Landroid/view/Window;

    return-void
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/16 v4, 0x8

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isPhoneNumberLocatorOn()Z

    move-result v3

    const/4 v2, 0x4

    if-eq v2, p2, :cond_0

    const/4 v2, 0x5

    if-eq v2, p2, :cond_0

    invoke-static {p2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public setPrimarySpamInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->spamCallInfo:Lcom/android/incallui/operator/chn/SpamCallInfo;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/android/incallui/operator/chn/SpamCallInfo;->spamTagName:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/android/incallui/operator/chn/SpamCallInfo;->isSpam:Z

    iget v3, v0, Lcom/android/incallui/operator/chn/SpamCallInfo;->spamCount:I

    iget v0, v0, Lcom/android/incallui/operator/chn/SpamCallInfo;->spamTagType:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPrimarySpamInfo mTagName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isSpam : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mTagType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isContactExist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isYellowPage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isVoiceMail :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isConferenceCall :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v4, :cond_4

    iget-boolean v4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    if-nez v4, :cond_4

    if-eq v0, v8, :cond_4

    iget-boolean v4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_5

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamReportOwn()I

    move-result v4

    if-le v0, v4, :cond_7

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09034d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCallTagName(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    if-eq v0, v8, :cond_8

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09034f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCallTagName(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e014a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method public setSmartCallEndState(Lcom/android/incallui/Call;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v3, :cond_0

    iget-boolean v3, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/incallui/CallList;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0222

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    iget-object v0, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method

.method public setUp()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "CoverScreen"

    const-string v1, "setUp"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;Z)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->addListener(Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;)V

    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/smartcall/SmartCallController;->addListener(Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;)V

    :cond_0
    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V

    :cond_1
    return-void
.end method

.method public updateAMRecordTime(Z)V
    .locals 6

    const-wide/16 v2, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAMRecordTime isPaused = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->getRecordTime()J

    move-result-wide v4

    if-nez p1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v4

    :goto_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-string v2, "start record time"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v2, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    const-wide/16 v2, 0x3e8

    div-long v2, v4, v2

    invoke-static {v2, v3}, Lcom/android/incallui/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    goto :goto_1

    :cond_3
    move-wide v0, v2

    goto :goto_0
.end method

.method public updateCallCardHeight()V
    .locals 6

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverCallCardContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverCallCardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverHeight()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-double v2, v2

    const-wide v4, 0x3fea3d70a3d70a3dL    # 0.82

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverCallCardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverCallCardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverHeight()I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverCallCardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public declared-synchronized updateGradientBackground()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    const/4 v0, -0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getModifyType()I

    move-result v0

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-nez v2, :cond_3

    const-string v0, "CoverScreen"

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
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    const-string v2, "CoverScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateGradientBackground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v2}, Lcom/android/incallui/widget/GradientAnimationView;->show()V

    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v1}, Lcom/android/incallui/widget/GradientAnimationView;->isStreamAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "CoverScreen"

    const-string v2, "updateGradientBackground: stopStreamAnimation"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v1}, Lcom/android/incallui/widget/GradientAnimationView;->stopStreamAnimation()V

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v1}, Lcom/android/incallui/widget/GradientAnimationView;->isScaleAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/GradientAnimationView;->setPivotY(F)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/GradientAnimationView;->setScaleY(F)V

    :cond_6
    :goto_2
    iput v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPreviousModifyType:I

    goto/16 :goto_0

    :cond_7
    iget v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPreviousModifyType:I

    sget v3, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    if-eq v2, v3, :cond_4

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_8

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    :cond_8
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v1}, Lcom/android/incallui/widget/GradientAnimationView;->isStreamAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "CoverScreen"

    const-string v2, "updateGradientBackground: animateForStream"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v1}, Lcom/android/incallui/widget/GradientAnimationView;->animateForStream()V

    :cond_9
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v1}, Lcom/android/incallui/widget/GradientAnimationView;->isScaleAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/GradientAnimationView;->setScaleY(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

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

.method public updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method public updateGuideText()V
    .locals 9

    const v8, 0x7f090133

    const/16 v7, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    if-nez v0, :cond_2

    const v0, 0x7f1002d9

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUISystemDB;->isFlightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDeviceOnWiFi()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isVoWIFIRegistered()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "isFlightMode = true"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090260

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x5dc

    invoke-direct {p0, v0, v2, v3}, Lcom/android/incallui/accessory/CoverScreen;->showPopupWindow(Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    const-string v0, "%s"

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->updateModifyCallGuide(Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090130

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09027e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mNeedToShowGuideText:Z

    goto/16 :goto_0

    :cond_7
    if-eqz v4, :cond_b

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0902bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v5}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->getCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    iget-boolean v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mNeedToShowGuideText:Z

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "%s"

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0xbb8

    invoke-direct {p0, v0, v4, v5}, Lcom/android/incallui/accessory/CoverScreen;->showPopupWindow(Ljava/lang/String;J)V

    iput-boolean v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mNeedToShowGuideText:Z

    :cond_a
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public updateModifyCallGuide(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v1

    if-nez v1, :cond_0

    move p1, v0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09025d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public updateRecordInfoColor(Z)V
    .locals 8

    const v7, 0x7f0e0174

    const v6, 0x7f0e013c

    const v5, 0x7f0e0137

    const v4, 0x7f02047f

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordText:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Chronometer;->setTextColor(I)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020214

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    move-object v0, v1

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordText:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordText:Landroid/widget/TextView;

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/Chronometer;->setTextColor(I)V

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0202b2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4

    :cond_c
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e01bc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_5

    :cond_d
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e01bc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_6
.end method

.method public updateRecordTime(Z)V
    .locals 6

    const-wide/16 v2, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRecordTime isPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v4

    if-nez p1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v4

    :goto_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-string v2, "start record time"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v2, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    const-wide/16 v2, 0x3e8

    div-long v2, v4, v2

    invoke-static {v2, v3}, Lcom/android/incallui/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    goto :goto_1

    :cond_3
    move-wide v0, v2

    goto :goto_0
.end method

.method public updateSmartCallInfo()V
    .locals 13

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v0, 0x8

    const/4 v1, 0x0

    const-string v2, "support_smart_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-static {v2, v4, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-boolean v2, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v2, :cond_2

    iget-boolean v2, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    const-string v2, "updateSmartCallInfo "

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0a009e

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v8, v2

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v9, 0x9

    if-eq v2, v9, :cond_5

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v9, 0xa

    if-ne v2, v9, :cond_d

    :cond_5
    move v2, v3

    :goto_2
    invoke-virtual {v6}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamNumber:Ljava/lang/String;

    iget-object v9, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    if-eqz v9, :cond_13

    iget-object v5, v9, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v7, :cond_13

    :cond_6
    :try_start_0
    iget-object v5, v9, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    if-eqz v5, :cond_f

    if-gt v7, v3, :cond_f

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v10, 0x1

    iput v10, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v11, 0x0

    iget-object v12, v9, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    invoke-static {v12, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v10, v11, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v5, v8, v8}, Lcom/android/incallui/util/GraphicResourceUtils;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5, v8, v8}, Lcom/android/incallui/util/GraphicResourceUtils;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/GraphicResourceUtils;->getDrawableFromBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5, v8}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_7
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v10, 0x4

    invoke-static {v8, v10}, Lcom/android/incallui/util/SecOpenThemeUtils;->setCoverScreenSmartCallBackgroundResource(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-ne v7, v3, :cond_e

    iget-boolean v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v5, :cond_e

    move v5, v1

    :goto_3
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/incallui/accessory/CoverScreen;->setSmartCallPhotoFilter(IZ)V

    :goto_4
    if-eqz v4, :cond_a

    iget-boolean v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v4}, Lcom/android/incallui/accessory/CoverScreen;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_8

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :cond_8
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_10

    move v4, v1

    :goto_5
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_6
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/incallui/smartcall/SmartCallUtil;->setSmartAppLogging(ILandroid/content/Context;)V

    if-nez v2, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSmartCallImageInfo mEndCallState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v9, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x2

    if-gt v7, v2, :cond_11

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    iget-object v3, v9, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v9, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v3, v9, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v9, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v3, v9, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_7
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mLabelAndNumber:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_c
    :goto_8
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->arrangePrimaryLayout()V

    goto/16 :goto_0

    :cond_d
    move v2, v1

    goto/16 :goto_2

    :cond_e
    move v5, v0

    goto/16 :goto_3

    :cond_f
    :try_start_1
    const-string v4, "Display smart call level image"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v8}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallRegisterImage(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    const v8, 0x7f020286

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/incallui/accessory/CoverScreen;->setSmartCallPhotoFilter(IZ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSmartCallInfo : Illegal State Exception Occured"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_10
    move v4, v0

    goto/16 :goto_5

    :cond_11
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v9, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamNumber:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamNumber:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamNumber:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_13
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v2, :cond_14

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getSmartCallSearching()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09033b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mLabelAndNumber:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_14
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8
.end method

.method public updateSmartCallRejectMsg(Lcom/android/incallui/Call;)V
    .locals 3

    invoke-static {p1}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09064b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
