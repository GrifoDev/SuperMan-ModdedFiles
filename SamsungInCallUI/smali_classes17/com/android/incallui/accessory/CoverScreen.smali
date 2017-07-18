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
    .locals 5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingOrActive()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/AnswerPresenter;->controlWaitingCall(Ljava/lang/String;I)V

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
    .locals 6

    const-string v3, "CoverScreen"

    const-string v4, "animateForDummyBackground"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    if-nez v3, :cond_0

    const v3, 0x7f10029f

    invoke-virtual {p0, v3}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/widget/GradientAnimationView;

    iput-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->setUp()V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v4}, Lcom/android/incallui/widget/GradientAnimationView;->getStartColor()I

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v5}, Lcom/android/incallui/widget/GradientAnimationView;->getEndColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColor(II)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setScaleY(F)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

    new-instance v0, Lcom/android/incallui/accessory/CoverScreen$16;

    invoke-direct {v0, p0}, Lcom/android/incallui/accessory/CoverScreen$16;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v4, p2, v0}, Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForScale(FILcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;)Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationViewDummy:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3, p2}, Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForShow(I)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2
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

    const v2, 0x7f0d0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->animateForHide(I)V

    goto :goto_0
.end method

.method private animateHideForMaskPanel()V
    .locals 6

    const-string v1, "animateHideForMaskPanel"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

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

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/accessory/CoverScreen$14;

    invoke-direct {v2, p0}, Lcom/android/incallui/accessory/CoverScreen$14;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private animateShowForMaskPanel()V
    .locals 6

    const-string v1, "animateShowForMaskPanel"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForHideMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setRejectMsgHandleView(Landroid/view/View;)V

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

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/accessory/CoverScreen$13;

    invoke-direct {v2, p0}, Lcom/android/incallui/accessory/CoverScreen$13;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnimatorForShowMaskPanel:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

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
    .locals 4

    const/16 v2, 0x8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a023c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void

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

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0235

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0236

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method

.method private canShowRejectCallWithMessage(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

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
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

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

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->coverCall_endCallBySlide()V

    :cond_0
    return-void
.end method

.method private getCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)Ljava/lang/CharSequence;
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v0, 0x0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v4}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v3}, Landroid/widget/Chronometer;->setVisibility(I)V

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

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

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

    move-result-object v1

    const v2, 0x7f09001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

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

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

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

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-virtual {v1, v4}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->setLastCallTime(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getCallerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

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

    :goto_0
    return-object v2

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

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

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

    invoke-static {v1, v2, v0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getPreferredDisplayName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;

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
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    :cond_0
    return-object v2
.end method

.method private getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 3

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "geo_description_disable"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/incallui/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method private getVideoCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)Ljava/lang/CharSequence;
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v0, 0x0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_3

    :cond_0
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v4}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

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
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_6

    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09013c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v3}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09013d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_8

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->setCallTime()V

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
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

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-virtual {v1, v4}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->setLastCallTime(Ljava/lang/String;)V

    goto/16 :goto_1
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
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, "onFinishInflateForAnswer"

    invoke-static {p0, v4, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const v4, 0x7f1001ef

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v4, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    :cond_0
    const v4, 0x7f1001b1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iput-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    const v4, 0x7f100070

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

    const v4, 0x7f100071

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setLinearLayout(Landroid/widget/LinearLayout;)V

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setTextView(Landroid/widget/TextView;)V

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    const-string v4, "support_cover_extra_size"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a04ec

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    const-string v4, "support_cover_extra_size"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a04eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->registerDetector(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lcom/android/incallui/accessory/CoverScreen;->setDescriptionToHandle(Landroid/view/View;Z)V

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v5, Lcom/android/incallui/accessory/CoverScreen$2;

    invoke-direct {v5, p0}, Lcom/android/incallui/accessory/CoverScreen$2;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v4, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerOpenListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerOpenListener;)V

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v5, Lcom/android/incallui/accessory/CoverScreen$3;

    invoke-direct {v5, p0}, Lcom/android/incallui/accessory/CoverScreen$3;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v4, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerCloseListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;)V

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    new-instance v5, Lcom/android/incallui/accessory/CoverScreen$4;

    invoke-direct {v5, p0}, Lcom/android/incallui/accessory/CoverScreen$4;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v4, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setOnDrawerAnimateListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;)V

    :cond_5
    const v4, 0x7f1001f0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setBackgroundPanel(Landroid/view/View;)V

    :cond_6
    const v4, 0x7f10006e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgHandle:Landroid/view/View;

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgHandle:Landroid/view/View;

    if-eqz v4, :cond_7

    const-string v4, "support_cover_extra_size"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgHandle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a04ea

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgHandle:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    const v4, 0x7f10006f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    const v4, 0x7f1001b3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/RejectMsgContentCover;

    iput-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    invoke-virtual {v4, p0}, Lcom/android/incallui/RejectMsgContentCover;->setOnItemClickListener(Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;)V

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/RejectMsgContentCover;->showAddReminderCheckBox(Ljava/lang/Boolean;)V

    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    invoke-virtual {v4, p0}, Lcom/android/incallui/RejectMsgContentCover;->setOnAnswerMemoClickListener(Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;)V

    :cond_8
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgHandle:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setRejectMsgHandleView(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method private onFinishInflateForEndCall(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f100251

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

    const v0, 0x7f10024f

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

    const v0, 0x7f100252

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

    const v0, 0x7f10014f

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    const v0, 0x7f100150

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04e5

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
    return-void
.end method

.method private onFinishInflateForSmartCall()V
    .locals 4

    const v0, 0x7f10021d

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    const v0, 0x7f10021f

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

    const v3, 0x7f0a04e5

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
    const v0, 0x7f100208

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    const v0, 0x7f100259

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f10025a

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f10025e

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method private onFinishInflateForVideoCall(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f100260

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallGuideText:Landroid/widget/TextView;

    return-void
.end method

.method private rejectCallClicked()V
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->coverCall_declineVoiceCallBySlide()V

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

    const v0, 0x7f10026b

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
    const v0, 0x7f1001e5

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusImage:Landroid/widget/ImageView;

    const v0, 0x7f1001e6

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

    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmCurrentStatusText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f02004d

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

    const v1, 0x7f090092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmCurrentStatusText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mAmStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f02004e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setCallTime()V
    .locals 15

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v3, v12, v13}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    const-wide/high16 v8, -0x8000000000000000L

    const/4 v11, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    :cond_0
    const/16 v12, 0x9

    if-eq v11, v12, :cond_1

    const/16 v12, 0xa

    if-ne v11, v12, :cond_5

    :cond_1
    const/4 v7, 0x1

    :goto_0
    const/16 v12, 0x8

    if-ne v11, v12, :cond_6

    const/4 v10, 0x1

    :goto_1
    const/4 v12, 0x3

    if-eq v11, v12, :cond_2

    if-nez v7, :cond_2

    if-eqz v10, :cond_7

    :cond_2
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v8

    const-string v12, "ctc_call_time_duration"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/CallList;->getCdmaEarliestCallForTime()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v8

    :cond_3
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v4, v12, v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v0, v12, v4

    const-wide/16 v12, -0x1

    cmp-long v12, v8, v12

    if-lez v12, :cond_8

    if-nez v7, :cond_8

    iget-object v12, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v12, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v12, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v12}, Landroid/widget/Chronometer;->start()V

    iget-object v12, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Chronometer;->setVisibility(I)V

    iget-object v12, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v12, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    :cond_4
    :goto_3
    return-void

    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    :cond_7
    const-wide/16 v8, -0x1

    goto :goto_2

    :cond_8
    iget-object v12, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v12}, Landroid/widget/Chronometer;->stop()V

    if-eqz v7, :cond_a

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-lez v12, :cond_9

    iget-object v12, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v12, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

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

    :goto_4
    iget-object v12, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_3

    :cond_9
    iget-object v12, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->setLastCallTime(Ljava/lang/String;)V

    goto :goto_4

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

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f0902af

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f09023e

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f09023d

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v1, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_2
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1
.end method

.method private setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 13

    iget-object v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    if-nez v10, :cond_2

    :cond_0
    const-string v10, "CoverScreen"

    const-string v11, "setPrimaryImage: views are not inflated yet"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v10, :cond_3

    const-string v10, "CoverScreen"

    const-string v11, "setPrimaryImage: clear flip cover"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v2, v10, v11}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

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

    iget-object v6, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v8, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v10

    iget-object v11, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v3

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v6, :cond_7

    iget-object v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/SecOpenThemeUtils;->setCoverEmergencyBackgroundResource(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    :goto_1
    iget-object v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v10, v6}, Lcom/android/incallui/accessory/CoverScreen;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v7

    const-string v10, "support_smart_call"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v9, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    if-eqz v9, :cond_4

    invoke-static {v1}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v8, 0x1

    :cond_4
    if-eqz v8, :cond_5

    if-eqz v7, :cond_5

    if-eqz v5, :cond_5

    const/4 v8, 0x0

    :cond_5
    iget-object v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    if-eqz v10, :cond_6

    iget-object v11, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    if-eqz v8, :cond_b

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->arrangePrimaryLayout()V

    goto/16 :goto_0

    :cond_7
    if-eqz v8, :cond_8

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a009f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v4, v10

    const/4 v10, 0x1

    invoke-virtual {p0, v6, v10}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v10

    invoke-static {v10, v6, v4}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/SecOpenThemeUtils;->setCoverBackgroundResource(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_9

    iget-object v10, v3, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_9

    const-string v10, "CallerImage From ContactAgent"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a009f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v4, v10

    iget-object v10, v3, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v10

    iget-object v11, v3, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v10, v11, v4}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto/16 :goto_1

    :cond_9
    iget-boolean v10, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    if-eqz v10, :cond_a

    iget-boolean v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v10, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0203d8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v10, 0x1

    invoke-virtual {p0, v6, v10}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    iget-object v10, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/SecOpenThemeUtils;->setCoverYpBackgroundResource(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_1

    :cond_b
    const/16 v10, 0x8

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
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/4 v0, 0x3

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mNameLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mNameLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

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
    .locals 10

    const v9, 0x7f0d0029

    const/4 v8, 0x1

    const/4 v7, 0x0

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

    const/16 v3, 0x8

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v3, Lcom/android/incallui/accessory/CoverScreen$9;

    invoke-direct {v3, p0}, Lcom/android/incallui/accessory/CoverScreen$9;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    const/16 v3, 0xa

    if-ne p1, v3, :cond_2

    if-eqz p2, :cond_2

    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f01dd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/incallui/accessory/CoverScreen$10;

    invoke-direct {v3, p0}, Lcom/android/incallui/accessory/CoverScreen$10;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private showOnHoldText(Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mDivider:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05001f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPopupWindow()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x5dc

    invoke-direct {p0, v0, v2, v3}, Lcom/android/incallui/accessory/CoverScreen;->showPopupWindow(Ljava/lang/String;J)V

    :cond_0
    return-void
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
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

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

    :goto_1
    new-instance v2, Lcom/android/incallui/accessory/CoverScreen$5;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/accessory/CoverScreen$5;-><init>(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/Call;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

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
    .locals 11

    const/16 v8, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallButtons:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallButtons:Landroid/view/View;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v0, :cond_3

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

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->hideIncomingScreen()V

    goto :goto_0

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

    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v7, :cond_9

    move v2, v5

    :goto_1
    if-nez p3, :cond_a

    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v7, :cond_a

    move v4, v5

    :goto_2
    move v3, p3

    invoke-static {p2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v4, 0x0

    :cond_4
    const-string v7, "automatic_answering_machine"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

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

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v2, 0x1

    const/4 v4, 0x0

    :cond_5
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    if-eqz v2, :cond_b

    move v7, v6

    :goto_3
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_6

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateVideoCallAnswerButtons()V

    :cond_6
    :goto_4
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallButtons:Landroid/view/View;

    if-eqz v4, :cond_d

    move v7, v6

    :goto_5
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    if-eqz v4, :cond_7

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateInCallButtons()V

    :cond_7
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallButtons:Landroid/view/View;

    if-eqz v3, :cond_e

    :goto_6
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz v3, :cond_8

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateEndCallButtons()V

    :cond_8
    const-string v6, "automatic_answering_machine"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v6, v5, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    goto/16 :goto_0

    :cond_9
    move v2, v6

    goto/16 :goto_1

    :cond_a
    move v4, v6

    goto :goto_2

    :cond_b
    move v7, v8

    goto :goto_3

    :cond_c
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateAnswerButtons()V

    goto :goto_4

    :cond_d
    move v7, v8

    goto :goto_5

    :cond_e
    move v6, v8

    goto :goto_6
.end method

.method private updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v2

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    invoke-static {p2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/accessory/CoverScreen;->getVideoCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0, p2}, Lcom/android/incallui/accessory/CoverScreen;->updateCallTimeBlinkInfo(Ljava/lang/CharSequence;Lcom/android/incallui/Call;)V

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v6, :cond_4

    const/4 v3, 0x1

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/incallui/accessory/CoverScreen;->showOnHoldText(Z)V

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v5, 0xa

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-virtual {v3}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->removeMessageForBlinkTime()V

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-virtual {v3}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->hasMessageForBlinkTime()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "not update stateLabel for blink call time"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/accessory/CoverScreen;->getCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mBlinkEffect:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-virtual {v3}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->hasMessageForBlinkTime()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "not update stateLabel for blink call time"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

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

    const v3, 0x7f02037e

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

    const v2, 0x7f02037d

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
    .locals 13

    const/4 v12, 0x3

    const/16 v11, 0x8

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v6

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    if-eq v9, v12, :cond_2

    if-nez v5, :cond_0

    if-nez v6, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    iget-boolean v3, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    iget v9, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    iget v9, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    if-ne v9, v12, :cond_9

    :cond_3
    const/4 v7, 0x0

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

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v4, 0x1

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

    if-nez v3, :cond_b

    if-eqz v7, :cond_b

    if-nez v4, :cond_b

    const/4 v1, 0x1

    :goto_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "updateEndCallButtons : come here"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_6
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v9}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v9, v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_7
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v9}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v9, v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_8
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v9, :cond_0

    if-eqz v1, :cond_c

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v9}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v9, v8}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v9, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v9, :cond_a

    iget-object v9, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_b
    move v1, v8

    goto :goto_2

    :cond_c
    iget-object v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v8}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v8, v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateHoldCallText()V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mHoldTextStub:Landroid/view/ViewStub;

    if-nez v7, :cond_2

    const v7, 0x7f100255

    invoke-virtual {p0, v7}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewStub;

    iput-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mHoldTextStub:Landroid/view/ViewStub;

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mHoldTextStub:Landroid/view/ViewStub;

    invoke-virtual {v7}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v7, 0x7f100226

    invoke-virtual {p0, v7}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mHoldCallText:Landroid/widget/TextView;

    :cond_2
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mHoldTextStub:Landroid/view/ViewStub;

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-virtual {v2, v12}, Lcom/android/incallui/CallList;->getBgCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v0, :cond_3

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0902a8

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mHoldCallText:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-static {v7, v12, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/4 v9, 0x4

    if-eq v7, v9, :cond_3

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

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

    const v2, 0x7f0f0133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

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

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

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

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    if-eqz v3, :cond_6

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09024e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "secConferenceCallLabel"

    invoke-virtual {v9, v10, v11}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "%d"

    invoke-virtual {v8, v9, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    :cond_4
    :goto_1
    if-eqz v5, :cond_7

    iget-object v8, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v6, 0x1

    :goto_2
    invoke-direct {p0, v5, v6}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryName(Ljava/lang/String;Z)V

    invoke-direct {p0, v7}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    if-eqz v3, :cond_8

    const/4 v8, 0x0

    :goto_3
    invoke-direct {p0, v8}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryLabel(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    const-string v8, "support_spam_call"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_5
    const/4 v4, 0x1

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

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/accessory/CoverScreen;->setPrimarySpamInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->arrangePrimaryLayout()V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v8, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v5, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    :cond_8
    iget-object v8, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    goto :goto_4
.end method

.method private updateRecordTime(Lcom/android/incallui/Call;)V
    .locals 4

    const-string v3, "voice_call_recording"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v0

    invoke-virtual {v1, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isShowRecordInfo(Lcom/android/incallui/Call;)Z

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/accessory/CoverScreen;->manageRecordInfo(ZZ)V

    goto :goto_0
.end method

.method private updateRejectHandleDrawer(Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    const v2, 0x7f02032f

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v3

    if-nez p1, :cond_5

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v3, v2}, Lcom/android/incallui/accessory/CoverScreen;->setDescriptionToHandle(Landroid/view/View;Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a031a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    :goto_2
    const-string v2, "support_cover_extra_size"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    :cond_2
    :goto_3
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawerHandleText:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    :cond_3
    return-void

    :cond_4
    const v2, 0x7f020333

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0319

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    goto :goto_3
.end method

.method private updateRejectMsgContent(Lcom/android/incallui/Call;)V
    .locals 5

    const/16 v2, 0x8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    const-string v3, "support_smart_call"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p1}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_5

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getBlockReportMessage()Ljava/util/List;

    move-result-object v1

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContentCover;

    invoke-virtual {v3, v1}, Lcom/android/incallui/RejectMsgContentCover;->configureRejectMsgList(Ljava/util/List;)V

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverScreen;->canShowRejectCallWithMessage(Lcom/android/incallui/Call;)Z

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    :cond_4
    invoke-virtual {v3, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    :cond_7
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v3, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_9

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    :cond_9
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->close()V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v3, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateSmartTextColor(I)V
    .locals 11

    iget-boolean v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0133

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0132

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f012e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f012d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v7

    if-nez v7, :cond_2

    const/16 v7, 0x9

    if-ne p1, v7, :cond_4

    :cond_2
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    :goto_1
    const/16 v7, 0x8

    if-ne p1, v7, :cond_5

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_4
    const/16 v7, 0xa

    if-ne p1, v7, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d002b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

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

    int-to-long v8, v4

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/incallui/accessory/CoverScreen$11;

    invoke-direct {v7, p0}, Lcom/android/incallui/accessory/CoverScreen$11;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

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

    int-to-long v8, v4

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/incallui/accessory/CoverScreen$12;

    invoke-direct {v7, p0}, Lcom/android/incallui/accessory/CoverScreen$12;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_5
    const/4 v7, 0x3

    if-ne p1, v7, :cond_6

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0

    :cond_6
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method private updateTextColor(I)V
    .locals 13

    iget-boolean v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v9, :cond_2

    const/16 v9, 0x9

    if-eq p1, v9, :cond_0

    const/16 v9, 0xa

    if-ne p1, v9, :cond_1

    :cond_0
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f00f6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f00f6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/Chronometer;->setTextColor(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f00fc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f00fc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/Chronometer;->setTextColor(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f0133

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f0132

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f011c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f012e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f012d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

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

    :cond_3
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v9, v3}, Landroid/widget/Chronometer;->setTextColor(I)V

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    const/16 v9, 0x8

    if-ne p1, v9, :cond_6

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0

    :cond_4
    const/16 v9, 0xa

    if-ne p1, v9, :cond_5

    iget v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mPreviousCallState:I

    const/16 v10, 0xa

    if-eq v9, v10, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d002b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

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

    int-to-long v10, v4

    invoke-virtual {v6, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/android/incallui/accessory/CoverScreen$6;

    invoke-direct {v9, p0}, Lcom/android/incallui/accessory/CoverScreen$6;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

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

    int-to-long v10, v4

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/android/incallui/accessory/CoverScreen$7;

    invoke-direct {v9, p0}, Lcom/android/incallui/accessory/CoverScreen$7;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

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

    int-to-long v10, v4

    invoke-virtual {v8, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/android/incallui/accessory/CoverScreen$8;

    invoke-direct {v9, p0}, Lcom/android/incallui/accessory/CoverScreen$8;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1

    :cond_5
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v9, v5}, Landroid/widget/Chronometer;->setTextColor(I)V

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_6
    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method private updateTwoPhoneColor(I)V
    .locals 3

    const v2, 0x7f0f0133

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

    const v2, 0x7f0f010b

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
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x4

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallGuideText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-eq v0, v4, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v2

    if-ne v2, v5, :cond_5

    :cond_4
    const v1, 0x7f0f0133

    :goto_1
    if-ne v0, v4, :cond_6

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallGuideText:Landroid/widget/TextView;

    const v3, 0x7f0901fb

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_5
    const v1, 0x7f0f010d

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallGuideText:Landroid/widget/TextView;

    const v3, 0x7f0901fe

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private voiceCallClicked()V
    .locals 6

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

    :cond_0
    const-string v3, "isFlightMode = true"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901ff

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->getNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "telecom"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "support_twophone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v4, "TwoPhoneDialOption"

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "twophone"

    :goto_1
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    const-string v3, "onephone"

    goto :goto_1
.end method


# virtual methods
.method public animateForShrinkBackground()V
    .locals 7

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    new-instance v2, Lcom/android/incallui/accessory/CoverScreen$15;

    invoke-direct {v2, p0}, Lcom/android/incallui/accessory/CoverScreen$15;-><init>(Lcom/android/incallui/accessory/CoverScreen;)V

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const v5, 0x3f19999a    # 0.6f

    invoke-virtual {v4, v5, v3, v2}, Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForScale(FILcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v4}, Lcom/android/incallui/widget/GradientAnimationView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/accessory/CoverScreen;->animateForDummyBackground(Landroid/animation/AnimatorSet;I)V

    :cond_0
    const-string v4, "CoverScreen"

    const-string v5, "animateForShrinkBackground"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v4}, Lcom/android/incallui/widget/GradientAnimationView;->stopStreamAnimation()V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

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

    const v0, 0x7f100212

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f100261

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordIcon:Landroid/widget/ImageView;

    const v0, 0x7f100262

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordText:Landroid/widget/TextView;

    const v0, 0x7f100263

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
    .locals 3

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

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->inflateRecordInfo()V

    invoke-virtual {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->updateAMRecordTime(Z)V

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/accessory/CoverScreen;->updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    iget-boolean v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->setAMView()V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->updateRecordInfoColor(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0
.end method

.method public manageRecordInfo(ZZ)V
    .locals 3

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

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->inflateRecordInfo()V

    invoke-virtual {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->updateRecordTime(Z)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lcom/android/incallui/accessory/CoverScreen;->updateRecordInfoColor(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

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
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

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

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onClick: call super onClick"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

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
    .locals 6

    const v5, 0x7f0a04e5

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const-string v1, "CoverScreen"

    const-string v2, "CoverScreen onFinishInflate()"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    if-ne v1, v3, :cond_0

    iput-boolean v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getClearCoverColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->setBackgroundColor(I)V

    :cond_0
    const v1, 0x7f1001d4

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/widget/GradientAnimationView;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v1}, Lcom/android/incallui/widget/GradientAnimationView;->setUp()V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientBackground()V

    const v1, 0x7f100253

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverCallCardContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateCallCardHeight()V

    const v1, 0x7f100193

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCallStateLabel:Landroid/widget/TextView;

    const v1, 0x7f100199

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Chronometer;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v3}, Landroid/widget/Chronometer;->setVisibility(I)V

    const v1, 0x7f10026d

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mDivider:Landroid/widget/TextView;

    const v1, 0x7f1001da

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    const v1, 0x7f1000a5

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f100257

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mResumeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mResumeButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1001dc

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mNameLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f1000e9

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    const v1, 0x7f100197

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mLabelAndNumber:Landroid/widget/LinearLayout;

    const v1, 0x7f10010e

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    const v1, 0x7f100198

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    const-string v1, "support_twophone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f100258

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mKtTwophoneStub:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mKtTwophoneStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mKtTwophoneStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v1, 0x7f10012e

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mTwophoneIcon:Landroid/widget/ImageView;

    :cond_4
    const-string v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "support_spam_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForSmartCall()V

    :cond_6
    const-string v1, "phone_number_locator"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForPhoneNumberLocator()V

    :cond_7
    const v1, 0x7f10024d

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForAnswer(Landroid/view/View;)V

    const v1, 0x7f10024e

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallButtons:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallButtons:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForInCall(Landroid/view/View;)V

    const v1, 0x7f100250

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallButtons:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallButtons:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForEndCall(Landroid/view/View;)V

    const v1, 0x7f10025f

    invoke-virtual {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mVideoCallViews:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/incallui/accessory/CoverScreen;->onFinishInflateForVideoCall(Landroid/view/View;)V

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
    .locals 12

    const/4 v11, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

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

    const/4 v8, 0x0

    invoke-static {p3, v8, v7}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v7, "CoverScreen"

    const-string v8, "call is null"

    invoke-static {v7, v8, v6}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2

    move v2, v6

    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v4

    if-nez v3, :cond_1

    if-eqz v4, :cond_3

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

    :cond_2
    move v2, v7

    goto :goto_1

    :cond_3
    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v8, v0}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v8

    if-nez v8, :cond_b

    move v5, v6

    :goto_2
    if-eqz v0, :cond_c

    if-nez v5, :cond_4

    iget-object v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-nez v8, :cond_c

    :cond_4
    const-string v8, "CoverScreen"

    const-string v9, "need to find contactinfo"

    invoke-static {v8, v9, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    :cond_5
    :goto_3
    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v8, :cond_e

    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v8, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->animateForShrinkBackground()V

    :cond_6
    :goto_4
    iput-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateGradientBackground()V

    iget-object v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, v0, v8}, Lcom/android/incallui/accessory/CoverScreen;->updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-direct {p0, p2, v0}, Lcom/android/incallui/accessory/CoverScreen;->updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->updateRejectMsgContent(Lcom/android/incallui/Call;)V

    invoke-direct {p0, p2, v0, v2, v3}, Lcom/android/incallui/accessory/CoverScreen;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;ZZ)V

    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->updateVideoCallViews(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateGuideText()V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateHoldCallText()V

    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->updateRecordTime(Lcom/android/incallui/Call;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/incallui/accessory/CoverScreen;->updateCarrierInfo(I)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/incallui/accessory/CoverScreen;->animateForEndCall(I)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/incallui/accessory/CoverScreen;->updateTextColor(I)V

    const-string v8, "support_smart_call"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/incallui/accessory/CoverScreen;->updateSmartTextColor(I)V

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->updateSmartCallInfo()V

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/CoverScreen;->setSmartCallEndState(Lcom/android/incallui/Call;)V

    :cond_7
    const-string v8, "phone_number_locator"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneNumberLocator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryPhoneNumberLocator(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->updatePhoneNumberLocatorTextColor()V

    :cond_8
    const-string v8, "automatic_answering_machine"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

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

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    if-ne v8, v11, :cond_9

    invoke-virtual {p0, v6, v7}, Lcom/android/incallui/accessory/CoverScreen;->manageAMRecordInfo(ZZ)V

    iget-boolean v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v6, :cond_9

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->setAMView()V

    :cond_9
    if-eqz v2, :cond_a

    iget-boolean v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-nez v6, :cond_a

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->clearAMView()V

    :cond_a
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    iput v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mPreviousCallState:I

    goto/16 :goto_0

    :cond_b
    move v5, v7

    goto/16 :goto_2

    :cond_c
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableIMSConferenceInfo()Z

    move-result v8

    if-eqz v8, :cond_5

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

    :cond_e
    iget v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mPreviousCallState:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    if-ne v8, v11, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->animateForShrinkBackground()V

    goto/16 :goto_4
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "LEFT_HANDLE"

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordInfoStub:Landroid/view/ViewStub;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    invoke-static {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-direct {p0, v1, v2, v3, v3}, Lcom/android/incallui/accessory/CoverScreen;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;ZZ)V

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/accessory/CoverScreen;->updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->clearAMView()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->acceptCallClicked()V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->hideIncomingScreen()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mEndCallButtons:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->voiceCallClicked()V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->coverCall_makeVoiceCallBySlide()V

    goto :goto_0

    :pswitch_1
    const-string v1, "RIGHT_HANDLE"

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mAnswerButtons:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    invoke-static {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-direct {p0, v1, v2, v3, v3}, Lcom/android/incallui/accessory/CoverScreen;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;ZZ)V

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/accessory/CoverScreen;->updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->clearAMView()V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->endCallClicked()V

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->rejectCallClicked()V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->hideIncomingScreen()V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverScreen;->endCallClicked()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUpdateCoreAppsContact()V
    .locals 7

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v4, "CoverScreen"

    const-string v5, "call is null"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v5, :cond_3

    if-nez v2, :cond_3

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/android/incallui/accessory/CoverScreen;->setPrimaryName(Ljava/lang/String;Z)V

    :cond_2
    iget-object v4, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v4, v5}, Lcom/android/incallui/accessory/CoverScreen;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

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

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SIVO"

    const-string v3, "Decline message"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

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
    .locals 8

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isPhoneNumberLocatorOn()Z

    move-result v0

    const/4 v5, 0x4

    if-eq v5, p2, :cond_0

    const/4 v5, 0x5

    if-eq v5, p2, :cond_0

    invoke-static {p2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v3

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

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public setPrimarySpamInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamTagName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getisSpam()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCount()I

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamTagType()I

    move-result v3

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

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

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

    :cond_2
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v6}, Landroid/view/ViewStub;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_3

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v6, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_3
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_0

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamReportOwn()I

    move-result v6

    if-le v3, v6, :cond_5

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0902d1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCallTagName(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    :goto_1
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v6, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0132

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    if-eq v3, v10, :cond_6

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0902d3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

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

    :cond_6
    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamCallInfoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v6, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverScreen;->mSpamReportScore:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

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

    const/16 v7, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_2
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v4, :cond_0

    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/incallui/CallList;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a023c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    move v1, v3

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
    .locals 8

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

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->getRecordTime()J

    move-result-wide v2

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v6, v2

    :cond_0
    const-wide/16 v6, -0x1

    cmp-long v5, v0, v6

    if-lez v5, :cond_2

    const-string v5, "start record time"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-static {v6, v7}, Lcom/android/incallui/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0
.end method

.method public updateCallCardHeight()V
    .locals 6

    iget-boolean v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverCallCardContainer:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverCallCardContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

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

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mCoverCallCardContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public declared-synchronized updateGradientBackground()V
    .locals 6

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

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    const/4 v1, -0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getModifyType()I

    move-result v1

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-nez v3, :cond_3

    const-string v3, "CoverScreen"

    const-string v4, "updateGradientBackground: mGradientAnimationView is null"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setVisibility(I)V

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

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->endHideAnimationImmediately()V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setAlpha(F)V

    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->isStreamAnimationRunning()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "CoverScreen"

    const-string v4, "updateGradientBackground: stopStreamAnimation"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->stopStreamAnimation()V

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->isScaleAnimationRunning()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setPivotY(F)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setScaleY(F)V

    :cond_6
    :goto_2
    iput v1, p0, Lcom/android/incallui/accessory/CoverScreen;->mPreviousModifyType:I

    goto/16 :goto_0

    :cond_7
    iget v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mPreviousModifyType:I

    sget v4, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    if-eq v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_4

    :cond_8
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setAlpha(F)V

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->isStreamAnimationRunning()Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "CoverScreen"

    const-string v4, "updateGradientBackground: animateForStream"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->animateForStream()V

    :cond_9
    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v3}, Lcom/android/incallui/widget/GradientAnimationView;->isScaleAnimationRunning()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverScreen;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->setScaleY(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

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
    .locals 13

    const v10, 0x7f0900e5

    const/16 v12, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    if-nez v7, :cond_2

    const v7, 0x7f10025d

    invoke-virtual {p0, v7}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/InCallUISystemDB;->isFlightMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDeviceOnWiFi()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isVoWIFIRegistered()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    const-string v7, "isFlightMode = true"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0901ff

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x5dc

    invoke-direct {p0, v7, v8, v9}, Lcom/android/incallui/accessory/CoverScreen;->showPopupWindow(Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    const-string v0, "%s"

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v7

    invoke-static {v7}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v8

    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/incallui/accessory/CoverScreen;->updateModifyCallGuide(Z)V

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0900e2

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    move v7, v9

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090216

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v8, p0, Lcom/android/incallui/accessory/CoverScreen;->mNeedToShowGuideText:Z

    goto/16 :goto_0

    :cond_7
    if-eqz v3, :cond_b

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09024e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    if-eqz v6, :cond_0

    iget-boolean v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "%s"

    invoke-virtual {v8, v10, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/incallui/accessory/CoverScreen;->getCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_9
    iget-boolean v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mNeedToShowGuideText:Z

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%s"

    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v10, 0xbb8

    invoke-direct {p0, v7, v10, v11}, Lcom/android/incallui/accessory/CoverScreen;->showPopupWindow(Ljava/lang/String;J)V

    iput-boolean v9, p0, Lcom/android/incallui/accessory/CoverScreen;->mNeedToShowGuideText:Z

    :cond_a
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x6e

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

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

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen;->mGuideText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public updateRecordInfoColor(Z)V
    .locals 8

    const v7, 0x7f0f0133

    const v6, 0x7f0f00fc

    const v5, 0x7f0f00f7

    const v4, 0x7f0203d0

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

    const v3, 0x7f02019f

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

    const v3, 0x7f020235

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4

    :cond_c
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f017b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_5

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

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v2

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v6, v2

    :cond_0
    const-wide/16 v6, -0x1

    cmp-long v5, v0, v6

    if-lez v5, :cond_2

    const-string v5, "start record time"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-static {v6, v7}, Lcom/android/incallui/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverScreen;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0
.end method

.method public updateSmartCallInfo()V
    .locals 20

    const-string v17, "support_smart_call"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    :cond_0
    :goto_0
    return-void

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

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v17

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-boolean v0, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    iget-boolean v0, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_0

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

    :cond_4
    const-string v17, "updateSmartCallInfo "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v13

    const/4 v12, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a009f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v4, v0

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

    :goto_2
    invoke-virtual {v9}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/accessory/CoverScreen;->mSpamNumber:Ljava/lang/String;

    iget-object v0, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_14

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    if-eqz v13, :cond_14

    :cond_6
    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    const/16 v17, 0x1

    move/from16 v0, v17

    if-gt v13, v0, :cond_10

    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

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

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static {v8, v4, v4}, Lcom/android/incallui/util/GraphicResourceUtils;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v4, v4}, Lcom/android/incallui/util/GraphicResourceUtils;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/incallui/util/GraphicResourceUtils;->getDrawableFromBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

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

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/accessory/CoverScreen;->setSmartCallPhotoFilter(IZ)V

    :goto_4
    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mIsClearFlipCover:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v10}, Lcom/android/incallui/accessory/CoverScreen;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v17

    if-eqz v17, :cond_8

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v17

    if-eqz v17, :cond_8

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/accessory/CoverScreen;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/android/incallui/smartcall/SmartCallUtil;->setSmartAppLogging(ILandroid/content/Context;)V

    if-nez v11, :cond_d

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

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mLabelAndNumber:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/accessory/CoverScreen;->arrangePrimaryLayout()V

    goto/16 :goto_0

    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_f
    const/16 v17, 0x8

    goto/16 :goto_3

    :cond_10
    :try_start_1
    const-string v17, "Display smart call level image"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v4}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallRegisterImage(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPhotoContainer:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f020209

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

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

    :catch_0
    move-exception v6

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

    :cond_11
    const/16 v17, 0x8

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-static {v13}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallName(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_c

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

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v11, :cond_15

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getSmartCallSearching()Z

    move-result v17

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0902c2

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSpamNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mLabelAndNumber:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

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

    const v2, 0x7f090586

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
