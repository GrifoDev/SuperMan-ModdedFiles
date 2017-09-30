.class public Lcom/android/incallui/fragment/CallCardFragment;
.super Lcom/android/incallui/BaseFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/incallui/CallCardUi;
.implements Lcom/android/incallui/InCallPresenter$ContentViewChangeListener;
.implements Lcom/android/incallui/InCallPresenter$EmergencyModeListener;
.implements Lcom/android/incallui/coreapps/CoreAppsManager$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/CallCardPresenter;",
        "Lcom/android/incallui/CallCardUi;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnKeyListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Lcom/android/incallui/CallCardUi;",
        "Lcom/android/incallui/InCallPresenter$ContentViewChangeListener;",
        "Lcom/android/incallui/InCallPresenter$EmergencyModeListener;",
        "Lcom/android/incallui/coreapps/CoreAppsManager$Listener;"
    }
.end annotation


# static fields
.field protected static final CALL_END_TIME_BLINK_COUNT_MAX:I = 0x2

.field protected static final CALL_END_TIME_BLINK_COUNT_MAX_DCM:I = 0x3

.field protected static final EVENT_HIDE_TOGGLING_VIEWS:I = 0x6b

.field protected static final EVENT_HIDE_TOGGLING_VIEWS_DELAY:I = 0x3e8

.field protected static final EVENT_RESET_ANIM_DELAY:I = 0x1388

.field protected static final EVENT_RESET_ANIM_DELAY_VZW:I = 0x1b58

.field protected static final EVENT_RESET_MERGE_ANIM:I = 0x66

.field protected static final EVENT_RESET_SPLIT_ANIM:I = 0x68

.field protected static final EVENT_RESET_SWAP_ANIM:I = 0x67

.field private static final TAG:Ljava/lang/String; = "CallCardFragment"

.field protected static sIsWindowRevealed:Z


# instance fields
.field protected mAgifDummy:Landroid/view/View;

.field protected mBelowButtonLayout:Landroid/view/View;

.field protected mBizDuring:Landroid/widget/ImageView;

.field protected mBizInOut:Landroid/widget/ImageView;

.field protected mCallBannerContainer:Landroid/view/View;

.field protected mCallInfoContainer:Landroid/view/View;

.field protected mCallNumberAndLabel:Landroid/view/View;

.field protected mCallNumberAndLabelDummy:Landroid/view/View;

.field protected mCallPlusView:Lcom/android/incallui/fragment/view/CallCardCallPlusView;

.field protected mCallStateContainer:Landroid/view/View;

.field protected mCallStateIcon:Landroid/widget/ImageView;

.field protected mCallStateLabel:Landroid/widget/TextView;

.field protected mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mCallTypeLabel:Landroid/widget/TextView;

.field protected mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

.field protected mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

.field protected mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

.field protected mDisplayHeight:I

.field protected mDisplayWidth:I

.field protected mDivider:Landroid/widget/TextView;

.field protected mElapsedTime:Landroid/widget/TextView;

.field protected mElapsedTimeLayout:Landroid/view/View;

.field protected mEndCallContactBtn:Landroid/widget/Button;

.field private mEndCallRepeatCount:I

.field protected mForthPriorityInfoLayout:Landroid/view/View;

.field protected mHandler:Landroid/os/Handler;

.field protected mInCallMenu:Lcom/android/incallui/InCallMenu;

.field protected mIndicatorArea:Landroid/view/ViewGroup;

.field private mIsActivityCreated:Z

.field protected mIsAnswerProcessing:Z

.field private mIsBlinkForEndCall:Z

.field protected mIsDefaultBizRingIcon:Z

.field protected mIsDialpadShowing:Z

.field protected mIsOutgoingAnimationRunning:Z

.field protected mJanskyView:Lcom/android/incallui/fragment/view/CallCardJanskyView;

.field protected mLastestCallStateLabel:Ljava/lang/CharSequence;

.field protected mLastestCallTime:Ljava/lang/String;

.field protected mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

.field protected mMoreButtonContainer:Landroid/view/View;

.field protected mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

.field protected mMultiTouchDummyStub:Landroid/view/ViewStub;

.field private mMultiTouchDummyView:Landroid/view/View;

.field protected mNameContainer:Landroid/view/View;

.field protected mNavigationBarArea:Landroid/view/View;

.field protected mNumberLabel:Landroid/widget/TextView;

.field protected mOldCallState:I

.field protected mOnScreenMenuBtn:Landroid/widget/Button;

.field protected mOnScreenMenuBtnView:Landroid/view/View;

.field protected mOnScreenMenuContainer:Landroid/view/View;

.field protected mOnScreenMenuIcon:Landroid/widget/ImageButton;

.field protected mOnScreenMoreMenuContainer:Landroid/view/View;

.field protected mOnholdContainer:Landroid/view/View;

.field protected mOnholdForwardSlash:Landroid/widget/TextView;

.field protected mOnholdText:Landroid/widget/TextView;

.field protected mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mOutgoingRevealAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mPhoneNumber:Landroid/widget/TextView;

.field protected mPhoneNumberForTalkBack:Landroid/widget/TextView;

.field protected mPhoto:Landroid/widget/ImageView;

.field protected mPhotoContainer:Landroid/view/View;

.field protected mPrimaryCallCardContainer:Landroid/view/View;

.field protected mPrimaryCallInfo:Landroid/view/ViewGroup;

.field protected mPrimaryCallInfoBannerContainer:Landroid/view/View;

.field protected mPrimaryCallInfoDummy:Landroid/view/View;

.field protected mPrimaryContainer:Landroid/view/View;

.field protected mPrimaryName:Landroid/widget/TextView;

.field protected mPrimaryNameForTalkBack:Landroid/widget/TextView;

.field protected mPrimaryNameLayout:Landroid/view/ViewGroup;

.field protected mPrimaryUpperName:Landroid/widget/TextView;

.field protected mProfileIcon:Landroid/widget/ImageView;

.field protected mProfileStub:Landroid/view/ViewStub;

.field protected mPulseAnimation:Landroid/view/animation/Animation;

.field protected mRecordIcon:Landroid/widget/ImageView;

.field protected mRecordInfoStub:Landroid/view/ViewStub;

.field protected mRecordText:Landroid/widget/TextView;

.field protected mRecordTime:Landroid/widget/Chronometer;

.field protected mResumeCallBtn:Landroid/widget/Button;

.field protected mSecondaryProfileIcon:Landroid/widget/ImageView;

.field protected mSecondaryProfileStub:Landroid/view/ViewStub;

.field protected mSmartCallView:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

.field protected mSugudenView:Lcom/android/incallui/fragment/view/CallCardSugudenView;

.field protected mThirdPriorityInfoLayout:Landroid/view/View;

.field protected mTwoPhoneView:Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

.field protected final mViewAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/fragment/view/ICallCardViewAdapter;",
            ">;"
        }
    .end annotation
.end field

.field protected mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

.field protected mVolumeButton:Landroid/widget/Button;

.field protected mVolumeButtonStub:Landroid/view/ViewStub;

.field protected mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mViewAdapters:Ljava/util/List;

    iput-boolean v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsActivityCreated:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOldCallState:I

    iput-boolean v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsBlinkForEndCall:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsDefaultBizRingIcon:Z

    new-instance v0, Lcom/android/incallui/fragment/CallCardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/CallCardFragment$1;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;->hideVideoTogglingViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/CallCardFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mEndCallRepeatCount:I

    return v0
.end method

.method static synthetic access$106(Lcom/android/incallui/fragment/CallCardFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mEndCallRepeatCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mEndCallRepeatCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;->animateForBlinkCallTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;->stopCallEndTimeBlink()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/incallui/fragment/CallCardFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsBlinkForEndCall:Z

    return p1
.end method

.method private animateForBlinkCallTime()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v7, [F

    const/4 v4, 0x0

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v7, [F

    aput v5, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/incallui/fragment/CallCardFragment$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/CallCardFragment$5;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private getStringForElapsedTime(III)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CallCardFragment"

    const-string v1, "fragment is detached from activity, return"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "%d"

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const v3, 0x7f090364

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/CallCardFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const v4, 0x7f090366

    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/CallCardFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v0, v3}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    if-lez p1, :cond_1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const v5, 0x7f090363

    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/CallCardFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5, v0, v4}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "CallCardFragment"

    const-string v2, " getStringForElapsedTime IndexOutOfBoundsException "

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private hideVideoTogglingViews()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->hideVideoTogglingViews()V

    return-void
.end method

.method private menuButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "CallCardFragment"

    const-string v1, "menuButtonClicked: "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->showInCallMenu()V

    goto :goto_0

    :cond_2
    const-string v0, "CallCardFragment"

    const-string v1, "activity or mInCallMenu is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setupInCallPopupMenu(I)V
    .locals 2

    const-string v0, "CallCardFragment"

    const-string v1, "setupInCallPopupMenu()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuBtnView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuBtnView:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lcom/android/incallui/InCallActivity;->setupInCallMenu(ILandroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->setInCallMenuInstance(Lcom/android/incallui/InCallMenu;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "CallCardFragment"

    const-string v1, "activity is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showMoreOptionLabelToast()V
    .locals 10

    const/4 v5, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v0, "CallCardFragment"

    const-string v1, "showMoreOptionLabelToast"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f040198

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f1000a4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e00fb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHeight()I

    move-result v0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_2

    new-array v3, v5, [I

    iget-object v4, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->getLocationOnScreen([I)V

    if-eqz v3, :cond_2

    array-length v4, v3

    if-ne v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget v5, v4, Landroid/util/DisplayMetrics;->density:F

    iget-object v6, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    mul-float/2addr v6, v0

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    mul-float/2addr v7, v0

    float-to-int v7, v7

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    aget v1, v3, v9

    sub-int/2addr v0, v1

    div-int/lit8 v1, v6, 0x2

    sub-int v1, v0, v1

    aget v0, v3, v8

    :cond_2
    :goto_1
    new-instance v3, Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v3, v9}, Landroid/widget/Toast;->setDuration(I)V

    const v2, 0x800035

    invoke-virtual {v3, v2, v1, v0}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_3
    aget v0, v3, v8

    add-int/2addr v0, v7

    goto :goto_1
.end method

.method private showVolumeSeekBar()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/VolumeSeekBar;->showBelow(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method private stopCallEndTimeBlink()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "CallCardFragment"

    const-string v1, "stopCallEndTimeBlink"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->removeMessageForBlinkTime()V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsBlinkForEndCall:Z

    iput-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method private updateAnswerMemoRecordTime()V
    .locals 6

    const-string v0, "CallCardFragment"

    const-string v1, "updateAnswerMemoRecordTime"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CallCardFragment"

    const-string v1, "fragment is detached from activity, return"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->getRecordTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    const-string v4, "CallCardFragment"

    const-string v5, "start record time"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v4, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v2}, Landroid/widget/Chronometer;->start()V

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/fragment/CallCardFragment;->setTTS(JLandroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-static {v4, v5}, Lcom/android/incallui/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v2}, Landroid/widget/Chronometer;->stop()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 0

    return-void
.end method

.method public animateForHideManager(Z)V
    .locals 0

    return-void
.end method

.method public animateForMoveDialpad(Z)V
    .locals 0

    return-void
.end method

.method public animateForNewOutgoingCall()V
    .locals 0

    return-void
.end method

.method public animateForNewOutgoingCall(Landroid/graphics/Point;)V
    .locals 0

    return-void
.end method

.method public animateForShow()V
    .locals 0

    return-void
.end method

.method public animateRevealForNewOutgoingCall()V
    .locals 0

    return-void
.end method

.method public changeCallCardForAM(I)V
    .locals 0

    return-void
.end method

.method public changeViewForMoveDialpad(Z)V
    .locals 0

    return-void
.end method

.method public clearAMView()V
    .locals 0

    return-void
.end method

.method public createPresenter()Lcom/android/incallui/CallCardPresenter;
    .locals 1

    new-instance v0, Lcom/android/incallui/CallCardPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallCardPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->createPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected dismissInCallMenu()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enableMenu(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enableSwapButton(Z)V
    .locals 0

    return-void
.end method

.method public getCallInfoContainer()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallInfoContainer:Landroid/view/View;

    return-object v0
.end method

.method public getCallNumberAndLabel()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    return-object v0
.end method

.method public getCallStateContainer()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateContainer:Landroid/view/View;

    return-object v0
.end method

.method public getCallStateLabel()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCallerInfoCardView()Lcom/android/incallui/callerinfocard/CallerInfoCardView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    return-object v0
.end method

.method public getCallerInfoView()Lcom/android/incallui/fragment/view/CallCardCallerInfoView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    return-object v0
.end method

.method public getChnFeatureView()Lcom/android/incallui/fragment/view/CallCardChnFeatureView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    return-object v0
.end method

.method public getCurrentSecondaryCallName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayHeight()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mDisplayHeight:I

    return v0
.end method

.method public getDisplayWidth()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mDisplayWidth:I

    return v0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/InCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getIncomingPhoto()Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenuRes()I
    .locals 1

    const v0, 0x7f120001

    return v0
.end method

.method public getMultiSimView()Lcom/android/incallui/fragment/view/CallCardMultiSimView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    return-object v0
.end method

.method public getNumberLabel()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOnScreenMenuIcon()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getPhoneNumber()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhoto()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPhotoContainer()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPhotoContainer:Landroid/view/View;

    return-object v0
.end method

.method public getPrimaryCallCardContainer()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    return-object v0
.end method

.method public getPrimaryCallInfo()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPrimaryName()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPrimaryPhotoView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSpaceBesideCallCard()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUi()Lcom/android/incallui/CallCardUi;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    return-object v0
.end method

.method public hasAnimationMsg()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected inflateRecordInfo()V
    .locals 0

    return-void
.end method

.method protected initVolumePanelLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButtonStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButtonStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1004b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    new-instance v0, Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/VolumeSeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public isActivityCreated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsActivityCreated:Z

    return v0
.end method

.method public isAnimationRunning()Z
    .locals 3

    const-string v0, "CallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsOutgoingAnimationRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsOutgoingAnimationRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsOutgoingAnimationRunning:Z

    return v0
.end method

.method public isAnswerProcessing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsAnswerProcessing:Z

    return v0
.end method

.method public isAvailableFullScreenMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isBlinkForEndCall(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsBlinkForEndCall:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCallSubjectVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDisplayingAgif()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInExceptionArea(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isManageConferenceVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMenuShowing()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected isMergeProcessing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPrimaryVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isShowVZWInfoBanner()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowingCameraEffectUi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowingIncomingPhoto()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSwapProcessing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isVideoState()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public manageAnswerMemoRecord(Z)V
    .locals 4

    const-string v0, "CallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manageAnswerMemoRecord "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    const-string v1, "CallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnswerMemoUtils.isAutoAnswered() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v1, "CallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recorderMgr.isRecording() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->inflateRecordInfo()V

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;->updateAnswerMemoRecordTime()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method protected manageCallEndTimeBlink(I)V
    .locals 4

    const/16 v3, 0xa

    const/16 v2, 0x9

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eq p1, v3, :cond_0

    if-ne p1, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/fragment/CallCardFragment;->setTTS(Ljava/lang/String;Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-ne p1, v2, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    if-ne p1, v3, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getCallTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getCallTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    :cond_3
    const-string v0, "CallCardFragment"

    const-string v1, "manageCallEndTimeBlink"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCallEndTimeBlink mLastestCallTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsBlinkForEndCall:Z

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "dcm_end_call_time_blink_extension"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mEndCallRepeatCount:I

    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;->animateForBlinkCallTime()V

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public manageMultiTouchStub(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyStub:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/PhoneModeUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyStub:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method public manageRecordInfo(ZZ)V
    .locals 6

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v1, 0x0

    const-string v0, "CallCardFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "manageRecordInfo(showRecordInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isPaused="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CallCardFragment"

    const-string v1, "fragment is detached from activity, return"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v4, "answer animation is running"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/android/incallui/AnswerUi;->isAnswerAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    and-int/2addr p1, v0

    :cond_2
    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->inflateRecordInfo()V

    invoke-virtual {p0, p2}, Lcom/android/incallui/fragment/CallCardFragment;->updateRecordTime(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz p2, :cond_7

    move-object v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f02047e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordText:Landroid/widget/TextView;

    if-eqz p2, :cond_5

    move v1, v3

    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0202b2

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    goto/16 :goto_0
.end method

.method public needToShowMenu()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "CallCardFragment"

    const-string v3, "needToShowMenu: fragment is detached from activity, return"

    invoke-static {v0, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const-string v0, "CallCardFragment"

    const-string v3, "needToShowMenu"

    invoke-static {v0, v3, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_a

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v4, 0x6

    if-eq v0, v4, :cond_a

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v4, 0x9

    if-eq v0, v4, :cond_a

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v4, 0xa

    if-eq v0, v4, :cond_a

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v4, 0xd

    if-eq v0, v4, :cond_a

    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isLostPhoneLock()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    const-string v2, "true"

    const-string v4, "ril.domesticOtaStart"

    invoke-static {v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->isExistOptionsItem()Z

    move-result v0

    :cond_5
    const-string v2, "support_nsri_secure"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isNsriSecureCallMode()Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    :cond_6
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "CallCardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needToShowMenu :  isAutoAnswered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_7

    move v0, v1

    :cond_7
    const-string v2, "end_call_when_dial_e911"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v3, "911"

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v0, v1

    :cond_8
    const-string v2, "china_cdma_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->showCdmaMultipartyBtn()Z

    move-result v2

    if-eqz v2, :cond_9

    move v0, v1

    :cond_9
    const-string v1, "CallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToShowMenu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto/16 :goto_1
.end method

.method public needToShowVolumeButton()Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "CallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToShowVolumeButton: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method protected needToStartEffect(I)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v3

    and-int/2addr v0, v3

    :cond_0
    const/16 v3, 0xd

    if-ne p1, v3, :cond_1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x6

    if-eq p1, v3, :cond_2

    const/4 v3, 0x4

    if-eq p1, v3, :cond_2

    const/4 v3, 0x5

    if-ne p1, v3, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    and-int/2addr v0, v2

    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_1
    const-string v0, "CallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToStartEffect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v1, v0

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, "CallCardFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsActivityCreated:Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/CallCardPresenter;->init(Landroid/content/Context;Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->needToAnimateForNewOutgoingCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->animateRevealForNewOutgoingCall()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->setNeedToAnimateForNewOutgoingCall(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "CallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sparse-switch v0, :sswitch_data_0

    const-string v0, "CallCardFragment"

    const-string v1, "onClick: unexpected"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->fullScreen_moreOption()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;->menuButtonClicked()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;->showVolumeSeekBar()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1002fd -> :sswitch_0
        0x7f1004b0 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "CallCardFragment"

    const-string v1, "CallCardFragment onConfigurationChanged()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ims_rcs_bb"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CallCardFragment"

    const-string v1, "CallCardFragmet isInMultiWindowMode()"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setonMultiWindowChange(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setonMultiWindowChange(Z)V

    goto :goto_0
.end method

.method public onContentViewChanged(Landroid/graphics/Point;)V
    .locals 0

    return-void
.end method

.method public onCoverStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->addListener(Lcom/android/incallui/coreapps/CoreAppsManager$Listener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addContentViewChangeListener(Lcom/android/incallui/InCallPresenter$ContentViewChangeListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "CallCardFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroy()V

    const-string v0, "CallCardFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsOutgoingAnimationRunning:Z

    iput-boolean v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsActivityCreated:Z

    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeContentViewChangeListener(Lcom/android/incallui/InCallPresenter$ContentViewChangeListener;)V

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    :cond_1
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/coreapps/CoreAppsManager;->stopMediaSound()V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->removeListener(Lcom/android/incallui/coreapps/CoreAppsManager$Listener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getIsNeedAppUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->showAppUpdateDialogActivity()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->setIsNeedAppUpdate(Z)V

    :cond_2
    return-void
.end method

.method public onDialpadVisiblityChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsDialpadShowing:Z

    return-void
.end method

.method public onEmergencyModeChange(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->needToShowMenu()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/CallCardFragment;->showMenu(Z)V

    return-void
.end method

.method public onEnableStateChanged()V
    .locals 2

    const-string v0, "CallCardFragment"

    const-string v1, "onEnableStateChanged()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p2, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/fragment/CallCardFragment;->onVolumeKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "CallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    packed-switch v0, :pswitch_data_0

    const-string v0, "CallCardFragment"

    const-string v1, "onClick: unexpected"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v4

    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;->showMoreOptionLabelToast()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f1002fd
        :pswitch_0
    .end packed-switch
.end method

.method public onReceveShareMessage(Landroid/net/Uri;Lcom/android/incallui/Call;)V
    .locals 3

    const-string v0, "CallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceveShareMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/fragment/CallCardFragment;->onSelectAgifContents(Landroid/net/Uri;Z)V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->agifScreen_receiveAgif()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->updateNavigationBar()V

    return-void
.end method

.method public onSelectAgifContents(Landroid/net/Uri;Z)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v0, "CallCardFragment"

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->setupInCallMenu(Landroid/view/View;)V

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->initVolumePanelLayout()V

    :cond_0
    return-void
.end method

.method public onVolumeKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v1}, Lcom/android/incallui/VolumeSeekBar;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->increaseVolume()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/VolumeSeekBar;->showBelow(Landroid/view/View;Landroid/view/View;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/16 v0, 0x19

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->decreaseVolume()V

    goto :goto_1
.end method

.method protected removeMessageForBlinkTime()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mEndCallRepeatCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mEndCallRepeatCount:I

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    return-void
.end method

.method public resetAnswerCallAnimator()V
    .locals 0

    return-void
.end method

.method protected resetMergeAnimation()V
    .locals 0

    return-void
.end method

.method public resetRevealAnimator()V
    .locals 0

    return-void
.end method

.method protected resetSplitAnimation()V
    .locals 0

    return-void
.end method

.method protected resetSwapAnimation()V
    .locals 0

    return-void
.end method

.method public sendAccessibilityAnnouncement()V
    .locals 0

    return-void
.end method

.method public setAMView(Z)V
    .locals 0

    return-void
.end method

.method public setCallCardPriority(I)V
    .locals 0

    return-void
.end method

.method public setCallCardVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CallCardFragment"

    const-string v1, "setVisible - - getView() == null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
    .locals 0

    return-void
.end method

.method public setCallSubject(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCallbackNumber(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setContactContextContent(Landroid/widget/ListAdapter;)V
    .locals 0

    return-void
.end method

.method public setContactContextTitle(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setDisplaySize()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getContentViewSize()Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getContentViewSize()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mDisplayWidth:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mDisplayHeight:I

    :cond_2
    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mDisplayWidth:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mDisplayHeight:I

    if-gtz v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mDisplayWidth:I

    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mDisplayHeight:I

    goto :goto_0
.end method

.method public setEndCallButtonEnabled(ZZ)V
    .locals 0

    return-void
.end method

.method public setMenuText(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMenuText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    :cond_0
    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 0

    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0

    return-void
.end method

.method public setPrimaryCallElapsedTime(ZJ)V
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/fragment/CallCardFragment;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPrimaryCityId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPrimaryGifImage(Lcom/android/incallui/gif/GifDrawable;)V
    .locals 0

    return-void
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    return-void
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPrimaryVisible(Z)V
    .locals 0

    return-void
.end method

.method public setPrimaryVisibleByDialpad(Z)V
    .locals 0

    return-void
.end method

.method public setProfileContent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setProfileForwardingContent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected setProfileIcon(J)V
    .locals 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100294

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100212

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f02042b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020425

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020429

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setProgressSpinnerVisible(Z)V
    .locals 0

    return-void
.end method

.method public setRecordTimeUpdate(J)V
    .locals 0

    return-void
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    return-void
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0

    return-void
.end method

.method public setSecondaryCallElapsedTime(ZJ)V
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/fragment/CallCardFragment;->setSecondaryCallElapsedTime(ZLjava/lang/String;)V

    return-void
.end method

.method public setSecondaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    return-void
.end method

.method public setSecondaryInfoVisible(Z)V
    .locals 0

    return-void
.end method

.method protected setSecondaryProfileIcon(J)V
    .locals 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100380

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100213

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileIcon:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f02042b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020425

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020429

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setTTS(JLandroid/view/View;)V
    .locals 7

    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0xea60

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    div-long v0, p1, v2

    long-to-int v0, v0

    rem-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v1, v2

    rem-long v2, p1, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/fragment/CallCardFragment;->getStringForElapsedTime(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTTS(Ljava/lang/String;Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lt v1, v5, :cond_0

    array-length v1, v0

    if-gt v1, v6, :cond_0

    const/4 v2, 0x0

    array-length v1, v0

    if-ne v1, v6, :cond_2

    aget-object v2, v0, v3

    aget-object v1, v0, v4

    aget-object v0, v0, v5

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/CallCardFragment;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/CallCardFragment;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/CallCardFragment;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v2, v1, v0}, Lcom/android/incallui/fragment/CallCardFragment;->getStringForElapsedTime(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    aget-object v1, v0, v3

    aget-object v0, v0, v4

    goto :goto_1
.end method

.method public setViewStatePostSplit()V
    .locals 4

    const/16 v1, 0x68

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CallCardFragment"

    const-string v1, "setVisible - - getView() == null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setupInCallMenu(Landroid/view/View;)V
    .locals 3

    const-string v0, "CallCardFragment"

    const-string v1, "setupInCallMenu()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_0

    const-string v0, "CallCardFragment"

    const-string v1, "setupInCallMenu() view is null !!"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f1002fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    const v0, 0x7f1002fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuBtnView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getMenuRes()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/CallCardFragment;->setupInCallPopupMenu(I)V

    goto :goto_0
.end method

.method public showCallCardIndicatorArea(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showCameraEffectLayout(Z)V
    .locals 0

    return-void
.end method

.method public showCdmaMultipartyBtn()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    if-nez v3, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public showConferenceStateInfoBanner(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showContactContext(Z)V
    .locals 0

    return-void
.end method

.method public showForwardIndicator(Z)V
    .locals 0

    return-void
.end method

.method public showHdAudioIndicator(Z)V
    .locals 0

    return-void
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 0

    return-void
.end method

.method public showMenu(Z)V
    .locals 5

    const/4 v0, 0x0

    const v4, 0x7f0e0180

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "CallCardFragment"

    const-string v1, "fragment is detached from activity, return"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/CallCardFragment;->setupInCallMenu(Landroid/view/View;)V

    :cond_2
    const-string v1, "CallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showMenu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_3
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "QCIF"

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0
.end method

.method public showModifyStateInfoBanner(ZLjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public showModifyStateInfoBanner(ZLjava/lang/String;[Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public showModifySwitchButtonAM()V
    .locals 0

    return-void
.end method

.method public showNoteSentToast()V
    .locals 0

    return-void
.end method

.method public showRecordingInfo(ZZ)V
    .locals 0

    return-void
.end method

.method public showVideoStateMessageUi(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showVolumeButton(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const-string v0, "CallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showVolumeMenu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->dismiss()V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateAgifContainer(Z)V
    .locals 0

    return-void
.end method

.method public updateAgifImage()V
    .locals 0

    return-void
.end method

.method public updateBelowButtonMargin(Z)V
    .locals 0

    return-void
.end method

.method public updateCallButtons()V
    .locals 0

    return-void
.end method

.method public updateCallCard(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public updateCallCardIndicatorArea()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CallCardFragment"

    const-string v1, "fragment is detached from activity, return"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/CallCardFragment;->showCallCardIndicatorArea(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateCallerInfoOrgView(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateCameraEffectLayout()V
    .locals 0

    return-void
.end method

.method public updateDisplayChildCallChanged()V
    .locals 0

    return-void
.end method

.method public updateEri()V
    .locals 0

    return-void
.end method

.method public updateFullscreenMode(Z)V
    .locals 0

    return-void
.end method

.method public updateIncomingHideButton()V
    .locals 0

    return-void
.end method

.method public updateInviteGroupVideoButtonLayout()V
    .locals 0

    return-void
.end method

.method public updateJanskyInfo()V
    .locals 0

    return-void
.end method

.method public updateNavigationBar()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mNavigationBarArea:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mNavigationBarArea:Landroid/view/View;

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/16 v1, 0x8

    :cond_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_1

    :cond_6
    move v2, v1

    goto :goto_1
.end method

.method public updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V
    .locals 0

    return-void
.end method

.method public updateRecordTime(Z)V
    .locals 6

    const-string v0, "CallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRecordTime isPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v0

    if-nez p1, :cond_1

    const-string v2, "CallCardFragment"

    const-string v3, "start record time"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v2, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Lcom/android/incallui/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v2, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    goto :goto_0
.end method

.method public updateSmartCallImageInfo()V
    .locals 0

    return-void
.end method

.method public updateSmartCallInfo(Lcom/android/incallui/Call;Z)V
    .locals 0

    return-void
.end method

.method public updateSmartCallProviderImageInfo()V
    .locals 0

    return-void
.end method

.method public updateSpamCallInfo(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method protected updateTextColor(I)V
    .locals 10

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isBackgroundShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0174

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e0173

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0e015d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0e0170

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0e016f

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0e016e

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    const/16 v1, 0xa

    if-ne p1, v1, :cond_15

    iget v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOldCallState:I

    const/16 v8, 0xa

    if-eq v1, v8, :cond_15

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->isVideoState()Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v0, 0x9

    if-ne p1, v0, :cond_16

    const/4 v0, 0x1

    :goto_3
    or-int/2addr v1, v0

    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOldCallState:I

    const/16 v8, 0x9

    if-eq v0, v8, :cond_17

    const/4 v0, 0x1

    :goto_4
    and-int/2addr v1, v0

    const/4 v0, 0x0

    :cond_3
    iget-object v8, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-virtual {v8, p1, v1}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateTextColor(IZ)V

    :cond_4
    iget-object v8, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v8, p1, v1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->updateIconColor(IZ)V

    :cond_5
    iget-object v8, p0, Lcom/android/incallui/fragment/CallCardFragment;->mJanskyView:Lcom/android/incallui/fragment/view/CallCardJanskyView;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/incallui/fragment/CallCardFragment;->mJanskyView:Lcom/android/incallui/fragment/view/CallCardJanskyView;

    invoke-virtual {v8, p1, v1}, Lcom/android/incallui/fragment/view/CallCardJanskyView;->updateMultiLineColor(IZ)V

    :cond_6
    iget-object v8, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    invoke-virtual {v8, p1}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->updateSubIconColor(I)V

    :cond_7
    if-eqz v0, :cond_18

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    if-ne p1, v0, :cond_18

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordText:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, v2}, Landroid/widget/Chronometer;->setTextColor(I)V

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_f
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_10
    :goto_5
    const/16 v0, 0x8

    if-ne p1, v0, :cond_26

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_11
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_12
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_13
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsDefaultBizRingIcon:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_15
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_17
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_18
    if-eqz v1, :cond_19

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v8

    invoke-static {v1, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    int-to-long v8, v0

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/incallui/fragment/CallCardFragment$2;

    invoke-direct {v4, p0}, Lcom/android/incallui/fragment/CallCardFragment$2;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    const/4 v2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/incallui/fragment/CallCardFragment$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/CallCardFragment$3;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/incallui/fragment/CallCardFragment$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/CallCardFragment$4;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_5

    :cond_19
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "do not update hasLiveCallToDisplay"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1a
    const/16 v0, 0xa

    if-ne p1, v0, :cond_22

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1b
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1c
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordText:Landroid/widget/TextView;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1d
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, v4}, Landroid/widget/Chronometer;->setTextColor(I)V

    :cond_1e
    :goto_6
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1f
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_20
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_21
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    :cond_22
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_23
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_24
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordText:Landroid/widget/TextView;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_25
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, v6}, Landroid/widget/Chronometer;->setTextColor(I)V

    goto :goto_6

    :cond_26
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2b

    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOldCallState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2b

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_27
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_28
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_29
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2a

    iget-boolean v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsDefaultBizRingIcon:Z

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2a
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_2b
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2c
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2d
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2e
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsDefaultBizRingIcon:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method public updateVolteView(I)V
    .locals 0

    return-void
.end method
