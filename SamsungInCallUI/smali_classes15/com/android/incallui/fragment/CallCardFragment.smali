.class public Lcom/android/incallui/fragment/CallCardFragment;
.super Lcom/android/incallui/BaseFragment;
.source "CallCardFragment.java"

# interfaces
.implements Lcom/android/incallui/CallCardUi;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/InCallPresenter$EmergencyModeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/CallCardPresenter;",
        "Lcom/android/incallui/CallCardUi;",
        ">;",
        "Lcom/android/incallui/CallCardUi;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/incallui/InCallPresenter$EmergencyModeListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Landroid/view/View$OnKeyListener;"
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
.field protected mBelowButtonLayout:Landroid/view/View;

.field protected mBizDuring:Landroid/widget/ImageView;

.field protected mBizIncoming:Landroid/widget/ImageView;

.field protected mBizOutgoing:Landroid/widget/ImageView;

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

.field protected mOnScreenMenuIcon:Landroid/widget/ImageButton;

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

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 130
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mViewAdapters:Ljava/util/List;

    .line 209
    iput-boolean v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsActivityCreated:Z

    .line 212
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOldCallState:I

    .line 217
    iput-boolean v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsBlinkForEndCall:Z

    .line 218
    iput-boolean v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsDefaultBizRingIcon:Z

    .line 233
    new-instance v0, Lcom/android/incallui/fragment/CallCardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/CallCardFragment$1;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;->hideVideoTogglingViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/CallCardFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mEndCallRepeatCount:I

    return v0
.end method

.method static synthetic access$106(Lcom/android/incallui/fragment/CallCardFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mEndCallRepeatCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mEndCallRepeatCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;->animateForBlinkCallTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;->stopCallEndTimeBlink()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/incallui/fragment/CallCardFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsBlinkForEndCall:Z

    return p1
.end method

.method private animateForBlinkCallTime()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1434
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-nez v3, :cond_0

    .line 1463
    :goto_0
    return-void

    .line 1436
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1437
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_1

    .line 1438
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1439
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1440
    .local v1, "duration":I
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v9, [F

    const/4 v6, 0x0

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1441
    .local v0, "decreaseAlpha":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1442
    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1443
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1444
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v9, [F

    aput v7, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1445
    .local v2, "increaseAlpha":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1446
    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1447
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1448
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/incallui/fragment/CallCardFragment$5;

    invoke-direct {v4, p0}, Lcom/android/incallui/fragment/CallCardFragment$5;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1462
    .end local v0    # "decreaseAlpha":Landroid/animation/ObjectAnimator;
    .end local v1    # "duration":I
    .end local v2    # "increaseAlpha":Landroid/animation/ObjectAnimator;
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private getStringForElapsedTime(III)Ljava/lang/String;
    .locals 11
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1185
    new-array v0, v9, [Ljava/lang/String;

    const-string v9, "%d"

    aput-object v9, v0, v10

    .line 1186
    .local v0, "SRC_TAGS":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1189
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v9, 0x1

    :try_start_0
    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 1190
    .local v7, "strMinutes":[Ljava/lang/String;
    const v9, 0x7f0902e4

    .line 1191
    invoke-virtual {p0, v9}, Lcom/android/incallui/fragment/CallCardFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1190
    invoke-static {v9, v0, v7}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1193
    .local v2, "charMinutes":Ljava/lang/CharSequence;
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1194
    .local v8, "strSeconds":[Ljava/lang/String;
    const v9, 0x7f0902e6

    .line 1195
    invoke-virtual {p0, v9}, Lcom/android/incallui/fragment/CallCardFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1194
    invoke-static {v9, v0, v8}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1197
    .local v3, "charSeconds":Ljava/lang/CharSequence;
    if-lez p1, :cond_0

    .line 1198
    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    .line 1199
    .local v6, "strHours":[Ljava/lang/String;
    const v9, 0x7f0902e3

    .line 1200
    invoke-virtual {p0, v9}, Lcom/android/incallui/fragment/CallCardFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1199
    invoke-static {v9, v0, v6}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1201
    .local v1, "charHours":Ljava/lang/CharSequence;
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1204
    .end local v1    # "charHours":Ljava/lang/CharSequence;
    .end local v6    # "strHours":[Ljava/lang/String;
    :cond_0
    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1205
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1206
    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1207
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1212
    .end local v2    # "charMinutes":Ljava/lang/CharSequence;
    .end local v3    # "charSeconds":Ljava/lang/CharSequence;
    .end local v7    # "strMinutes":[Ljava/lang/String;
    .end local v8    # "strSeconds":[Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1208
    :catch_0
    move-exception v4

    .line 1209
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "CallCardFragment"

    const-string v10, " getStringForElapsedTime IndexOutOfBoundsException "

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private hideVideoTogglingViews()V
    .locals 1

    .prologue
    .line 1273
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->hideVideoTogglingViews()V

    .line 1274
    return-void
.end method

.method private menuButtonClicked()V
    .locals 3

    .prologue
    .line 658
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    .line 670
    :goto_0
    return-void

    .line 659
    :cond_0
    const-string v1, "CallCardFragment"

    const-string v2, "menuButtonClicked: "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 661
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v1, :cond_2

    .line 662
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v1}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 663
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    goto :goto_0

    .line 665
    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->showInCallMenu()V

    goto :goto_0

    .line 668
    :cond_2
    const-string v1, "CallCardFragment"

    const-string v2, "activity or mInCallMenu is null"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1253
    const/4 v0, -0x1

    .line 1255
    .local v0, "res":I
    if-nez p1, :cond_0

    const/4 v0, -0x1

    .line 1259
    :goto_0
    return v0

    .line 1255
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1256
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setupInCallPopupMenu(I)V
    .locals 2
    .param p1, "menuRes"    # I

    .prologue
    .line 939
    const-string v0, "CallCardFragment"

    const-string v1, "setupInCallPopupMenu()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 942
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuBtnView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 945
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuBtnView:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lcom/android/incallui/InCallActivity;->setupInCallMenu(ILandroid/view/View;)V

    .line 946
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->setInCallMenuInstance(Lcom/android/incallui/InCallMenu;)V

    .line 950
    :goto_0
    return-void

    .line 948
    :cond_1
    const-string v0, "CallCardFragment"

    const-string v1, "activity is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showMoreOptionLabelToast()V
    .locals 17

    .prologue
    .line 688
    const-string v15, "CallCardFragment"

    const-string v16, "showMoreOptionLabelToast"

    invoke-static/range {v15 .. v16}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-nez v15, :cond_0

    .line 733
    :goto_0
    return-void

    .line 691
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageButton;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v3

    .line 692
    .local v3, "mHoverPopupWindow":Lcom/samsung/android/widget/SemHoverPopupWindow;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    .line 694
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "layout_inflater"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 695
    .local v4, "mInflater":Landroid/view/LayoutInflater;
    const v15, 0x7f040183

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 696
    .local v12, "toastView":Landroid/view/View;
    const v15, 0x7f100432

    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 697
    .local v11, "toastText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v15}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0f00bf

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 700
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v15}, Landroid/widget/ImageButton;->getWidth()I

    move-result v15

    div-int/lit8 v13, v15, 0x2

    .line 701
    .local v13, "xOffset":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v15}, Landroid/widget/ImageButton;->getHeight()I

    move-result v14

    .line 703
    .local v14, "yOffset":I
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 704
    const/4 v15, 0x2

    new-array v9, v15, [I

    .line 705
    .local v9, "screenPos":[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v15, v9}, Landroid/widget/ImageButton;->getLocationOnScreen([I)V

    .line 706
    if-eqz v9, :cond_2

    array-length v15, v9

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 707
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "window"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/WindowManager;

    invoke-interface {v15}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 708
    .local v2, "display":Landroid/view/Display;
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 710
    .local v6, "realDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v2, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v1, v15, Landroid/util/DisplayMetrics;->density:F

    .line 713
    .local v1, "density":F
    iget v5, v6, Landroid/util/DisplayMetrics;->density:F

    .line 715
    .local v5, "realDensity":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v15}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v5

    mul-float/2addr v15, v1

    float-to-int v8, v15

    .line 716
    .local v8, "realWidth":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v15}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v5

    mul-float/2addr v15, v1

    float-to-int v7, v15

    .line 718
    .local v7, "realHeight":I
    cmpl-float v15, v1, v5

    if-eqz v15, :cond_3

    .line 719
    iget v15, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v16, 0x0

    aget v16, v9, v16

    sub-int v15, v15, v16

    div-int/lit8 v16, v8, 0x2

    sub-int v13, v15, v16

    .line 720
    const/4 v15, 0x1

    aget v14, v9, v15

    .line 728
    .end local v1    # "density":F
    .end local v2    # "display":Landroid/view/Display;
    .end local v5    # "realDensity":F
    .end local v6    # "realDisplayMetrics":Landroid/util/DisplayMetrics;
    .end local v7    # "realHeight":I
    .end local v8    # "realWidth":I
    .end local v9    # "screenPos":[I
    :cond_2
    :goto_1
    new-instance v10, Landroid/widget/Toast;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v10, v15}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 729
    .local v10, "toast":Landroid/widget/Toast;
    invoke-virtual {v10, v12}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 730
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/widget/Toast;->setDuration(I)V

    .line 731
    const v15, 0x800035

    invoke-virtual {v10, v15, v13, v14}, Landroid/widget/Toast;->setGravity(III)V

    .line 732
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 722
    .end local v10    # "toast":Landroid/widget/Toast;
    .restart local v1    # "density":F
    .restart local v2    # "display":Landroid/view/Display;
    .restart local v5    # "realDensity":F
    .restart local v6    # "realDisplayMetrics":Landroid/util/DisplayMetrics;
    .restart local v7    # "realHeight":I
    .restart local v8    # "realWidth":I
    .restart local v9    # "screenPos":[I
    :cond_3
    const/4 v15, 0x1

    aget v15, v9, v15

    add-int v14, v15, v7

    goto :goto_1
.end method

.method private showVolumeSeekBar()V
    .locals 3

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    if-nez v0, :cond_0

    .line 787
    :goto_0
    return-void

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/VolumeSeekBar;->showBelow(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method private stopCallEndTimeBlink()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1466
    const-string v1, "CallCardFragment"

    const-string v2, "stopCallEndTimeBlink"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->removeMessageForBlinkTime()V

    .line 1469
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1471
    .local v0, "cfText":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1474
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1475
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1476
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1478
    .end local v0    # "cfText":Ljava/lang/StringBuilder;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsBlinkForEndCall:Z

    .line 1479
    iput-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    .line 1480
    iput-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    .line 1481
    return-void
.end method

.method private updateAnswerMemoRecordTime()V
    .locals 8

    .prologue
    .line 1574
    const-string v1, "CallCardFragment"

    const-string v6, "updateAnswerMemoRecordTime"

    invoke-static {v1, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    .line 1576
    .local v0, "ansMemoRecorderMgr":Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1577
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    .line 1578
    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->getRecordTime()J

    move-result-wide v4

    .line 1580
    .local v4, "duration":J
    const-wide/16 v2, -0x1

    .line 1581
    .local v2, "baseTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v4

    .line 1582
    const-wide/16 v6, -0x1

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 1583
    const-string v1, "CallCardFragment"

    const-string v6, "start record time"

    invoke-static {v1, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 1585
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->start()V

    .line 1592
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {p0, v4, v5, v1}, Lcom/android/incallui/fragment/CallCardFragment;->setTTS(JLandroid/view/View;)V

    .line 1597
    .end local v2    # "baseTime":J
    .end local v4    # "duration":J
    :cond_0
    :goto_1
    return-void

    .line 1588
    .restart local v2    # "baseTime":J
    .restart local v4    # "duration":J
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    invoke-static {v6, v7}, Lcom/android/incallui/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    .line 1589
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0

    .line 1595
    .end local v2    # "baseTime":J
    .end local v4    # "duration":J
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    goto :goto_1
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 0

    .prologue
    .line 1110
    return-void
.end method

.method public animateForHideManager(Z)V
    .locals 0
    .param p1, "showPhoto"    # Z

    .prologue
    .line 1093
    return-void
.end method

.method public animateForMoveDialpad(Z)V
    .locals 0
    .param p1, "showDialpad"    # Z

    .prologue
    .line 1114
    return-void
.end method

.method public animateForNewOutgoingCall()V
    .locals 0

    .prologue
    .line 526
    return-void
.end method

.method public animateForNewOutgoingCall(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "touchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 1059
    return-void
.end method

.method public animateRevealForNewOutgoingCall()V
    .locals 0

    .prologue
    .line 1062
    return-void
.end method

.method public changeCallCardForAM(I)V
    .locals 0
    .param p1, "callState"    # I

    .prologue
    .line 1528
    return-void
.end method

.method public changeViewForMoveDialpad(Z)V
    .locals 0
    .param p1, "showDialpad"    # Z

    .prologue
    .line 1122
    return-void
.end method

.method public clearAMView()V
    .locals 0

    .prologue
    .line 1534
    return-void
.end method

.method public createPresenter()Lcom/android/incallui/CallCardPresenter;
    .locals 1

    .prologue
    .line 269
    new-instance v0, Lcom/android/incallui/CallCardPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallCardPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->createPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected dismissInCallMenu()V
    .locals 1

    .prologue
    .line 1277
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    .line 1278
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method public enableMenu(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 822
    :cond_0
    return-void
.end method

.method public getCallInfoContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallInfoContainer:Landroid/view/View;

    return-object v0
.end method

.method public getCallNumberAndLabel()Landroid/view/View;
    .locals 1

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    return-object v0
.end method

.method public getCallStateContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateContainer:Landroid/view/View;

    return-object v0
.end method

.method public getCallStateLabel()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCallerInfoCardView()Lcom/android/incallui/callerinfocard/CallerInfoCardView;
    .locals 1

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    return-object v0
.end method

.method public getCallerInfoView()Lcom/android/incallui/fragment/view/CallCardCallerInfoView;
    .locals 1

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    return-object v0
.end method

.method public getChnFeatureView()Lcom/android/incallui/fragment/view/CallCardChnFeatureView;
    .locals 1

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    return-object v0
.end method

.method public getCurrentSecondaryCallName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1736
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayHeight()I
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mDisplayHeight:I

    return v0
.end method

.method public getDisplayWidth()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mDisplayWidth:I

    return v0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    .line 915
    new-instance v0, Lcom/android/incallui/InCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getIncomingPhoto()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1683
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenuRes()I
    .locals 1

    .prologue
    .line 921
    const v0, 0x7f120001

    return v0
.end method

.method public getMultiSimView()Lcom/android/incallui/fragment/view/CallCardMultiSimView;
    .locals 1

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    return-object v0
.end method

.method public getNumberLabel()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOnScreenMenuIcon()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getPhoneNumber()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhoto()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPhotoContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPhotoContainer:Landroid/view/View;

    return-object v0
.end method

.method public getPrimaryCallCardContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    return-object v0
.end method

.method public getPrimaryName()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPrimaryPhotoView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSpaceBesideCallCard()F
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x0

    return v0
.end method

.method public getUi()Lcom/android/incallui/CallCardUi;
    .locals 0

    .prologue
    .line 274
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    return-object v0
.end method

.method public hasAnimationMsg()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 258
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v0

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected inflateRecordInfo()V
    .locals 0

    .prologue
    .line 1266
    return-void
.end method

.method protected initVolumePanelLayout()V
    .locals 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButtonStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 791
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100275

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButtonStub:Landroid/view/ViewStub;

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 795
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10041c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    .line 796
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 797
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 799
    :cond_1
    new-instance v0, Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/VolumeSeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    .line 800
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 801
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 802
    return-void
.end method

.method public isActivityCreated()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsActivityCreated:Z

    return v0
.end method

.method public isAnimationRunning()Z
    .locals 3

    .prologue
    .line 1054
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

    .line 1055
    iget-boolean v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsOutgoingAnimationRunning:Z

    return v0
.end method

.method public isAnswerProcessing()Z
    .locals 1

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsAnswerProcessing:Z

    return v0
.end method

.method public isAvailableFullScreenMode()Z
    .locals 1

    .prologue
    .line 1639
    const/4 v0, 0x1

    return v0
.end method

.method protected isBlinkForEndCall(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1404
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

    .prologue
    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public isInExceptionArea(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1086
    const/4 v0, 0x0

    return v0
.end method

.method public isManageConferenceVisible()Z
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    return v0
.end method

.method public isMenuShowing()Z
    .locals 2

    .prologue
    .line 825
    const/4 v0, 0x0

    .line 826
    .local v0, "bIsMenuShown":Z
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 827
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 829
    :cond_0
    :goto_0
    return v0

    .line 827
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isMergeProcessing()Z
    .locals 1

    .prologue
    .line 1078
    const/4 v0, 0x0

    return v0
.end method

.method public isPrimaryVisible()Z
    .locals 1

    .prologue
    .line 611
    const/4 v0, 0x1

    return v0
.end method

.method public isShowingIncomingPhoto()Z
    .locals 1

    .prologue
    .line 1519
    const/4 v0, 0x0

    return v0
.end method

.method public isSwapProcessing()Z
    .locals 1

    .prologue
    .line 1082
    const/4 v0, 0x0

    return v0
.end method

.method public manageAnswerMemoRecord(Z)V
    .locals 4
    .param p1, "isActiveCall"    # Z

    .prologue
    .line 1547
    const-string v1, "CallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manageAnswerMemoRecord "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    .line 1549
    .local v0, "recorderMgr":Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
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

    .line 1550
    if-eqz v0, :cond_1

    .line 1551
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

    .line 1552
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1553
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1554
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->inflateRecordInfo()V

    .line 1555
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1557
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1558
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;->updateAnswerMemoRecordTime()V

    .line 1564
    :cond_1
    :goto_0
    return-void

    .line 1561
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method protected manageCallEndTimeBlink(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/16 v3, 0xa

    const/16 v2, 0x9

    .line 1408
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eq p1, v3, :cond_0

    if-ne p1, v2, :cond_1

    .line 1409
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/fragment/CallCardFragment;->setTTS(Ljava/lang/String;Landroid/view/View;)V

    .line 1412
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-ne p1, v2, :cond_2

    .line 1413
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1414
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    if-ne p1, v3, :cond_4

    .line 1415
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

    .line 1416
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1417
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

    .line 1420
    :cond_3
    const-string v0, "CallCardFragment"

    const-string v1, "manageCallEndTimeBlink"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1422
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

    .line 1423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsBlinkForEndCall:Z

    .line 1424
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1425
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1426
    const-string v0, "dcm_end_call_time_blink_extension"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mEndCallRepeatCount:I

    .line 1428
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;->animateForBlinkCallTime()V

    .line 1431
    :cond_4
    return-void

    .line 1426
    :cond_5
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public manageMultiTouchStub(Z)V
    .locals 2
    .param p1, "isIncoming"    # Z

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyStub:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 1009
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/PhoneModeUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1010
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyStub:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1011
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1012
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    .line 1014
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1018
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1019
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1020
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method public manageRecordInfo(ZZ)V
    .locals 7
    .param p1, "showRecordInfo"    # Z
    .param p2, "isPaused"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1125
    const-string v2, "CallCardFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "manageRecordInfo(showRecordInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isPaused="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1127
    const-string v2, "CallCardFragment"

    const-string v3, "fragment is detached from activity, return"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1131
    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    .line 1132
    .local v0, "answerUi":Lcom/android/incallui/AnswerUi;
    if-eqz v0, :cond_2

    .line 1133
    const-string v2, "answer animation is running"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1134
    invoke-interface {v0}, Lcom/android/incallui/AnswerUi;->isAnswerAnimationRunning()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    and-int/2addr p1, v2

    .line 1137
    :cond_2
    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v1

    .line 1138
    .local v1, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v1, :cond_0

    .line 1139
    if-eqz p1, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1140
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->inflateRecordInfo()V

    .line 1141
    invoke-virtual {p0, p2}, Lcom/android/incallui/fragment/CallCardFragment;->updateRecordTime(Z)V

    .line 1142
    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    .line 1143
    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1144
    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 1145
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz p2, :cond_5

    move-object v2, v4

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1148
    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0203b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_3
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .end local v1    # "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    :cond_4
    move v2, v3

    .line 1134
    goto :goto_1

    .line 1146
    .restart local v1    # "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f02022b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    .line 1152
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1153
    :cond_7
    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v2}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0
.end method

.method public needToShowMenu()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 836
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 837
    .local v2, "currentActivity":Landroid/app/Activity;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->isAdded()Z

    move-result v5

    if-nez v5, :cond_1

    .line 838
    :cond_0
    const-string v5, "CallCardFragment"

    const-string v6, "needToShowMenu: fragment is detached from activity, return"

    invoke-static {v5, v6, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 892
    :goto_0
    return v0

    .line 842
    :cond_1
    const-string v5, "CallCardFragment"

    const-string v6, "needToShowMenu"

    invoke-static {v5, v6, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 844
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 845
    .local v1, "call":Lcom/android/incallui/Call;
    if-eqz v1, :cond_2

    .line 846
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    .line 847
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_2

    .line 848
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_2

    .line 849
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_2

    .line 850
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_2

    move v0, v4

    .line 853
    .local v0, "bShowMenu":Z
    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 854
    const/4 v0, 0x0

    .line 857
    :cond_3
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isLostPhoneLock()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 858
    const/4 v0, 0x0

    .line 860
    :cond_4
    if-eqz v0, :cond_5

    const-string v4, "true"

    const-string v5, "ril.domesticOtaStart"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 861
    const/4 v0, 0x0

    .line 863
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 864
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->isExistOptionsItem()Z

    move-result v0

    .line 867
    :cond_6
    const-string v4, "support_nsri_secure"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 868
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isNsriSecureCallMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 869
    const/4 v0, 0x0

    .line 874
    :cond_7
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 875
    const-string v4, "CallCardFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needToShowMenu :  isAutoAnswered "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 877
    const/4 v0, 0x0

    .line 880
    :cond_8
    const-string v4, "end_call_when_dial_e911"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 881
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v3

    .line 882
    .local v3, "fgCall":Lcom/android/incallui/Call;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v4, "911"

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 883
    const/4 v0, 0x0

    .line 886
    .end local v3    # "fgCall":Lcom/android/incallui/Call;
    :cond_9
    const-string v4, "china_cdma_call"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 887
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->showCdmaMultipartyBtn()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 888
    const/4 v0, 0x0

    .line 891
    :cond_a
    const-string v4, "CallCardFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needToShowMenu: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public needToShowVolumeButton()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 904
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 905
    .local v1, "call":Lcom/android/incallui/Call;
    if-eqz v1, :cond_0

    .line 906
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 907
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    .line 908
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 909
    .local v0, "bShowVolumeButton":Z
    :cond_0
    const-string v2, "CallCardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needToShowVolumeButton: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    return v0
.end method

.method protected needToStartEffect(I)Z
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1025
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->isAnimationRunning()Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    .line 1026
    .local v0, "needToStartEffect":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1027
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v3

    and-int/2addr v0, v3

    .line 1029
    :cond_0
    const/16 v3, 0xd

    if-ne p1, v3, :cond_1

    .line 1030
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x6

    if-eq p1, v3, :cond_2

    const/4 v3, 0x4

    if-eq p1, v3, :cond_2

    const/4 v3, 0x5

    if-ne p1, v3, :cond_6

    :cond_2
    :goto_1
    and-int/2addr v0, v1

    .line 1036
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1037
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1038
    const/4 v0, 0x1

    .line 1042
    :cond_3
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1043
    const/4 v0, 0x1

    .line 1046
    :cond_4
    const-string v1, "CallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToStartEffect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    return v0

    .end local v0    # "needToStartEffect":Z
    :cond_5
    move v0, v2

    .line 1025
    goto :goto_0

    .restart local v0    # "needToStartEffect":Z
    :cond_6
    move v1, v2

    .line 1030
    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 289
    const-string v3, "CallCardFragment"

    const-string v4, "onActivityCreated"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsActivityCreated:Z

    .line 293
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    .line 294
    .local v2, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 295
    .local v1, "call":Lcom/android/incallui/Call;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/incallui/CallCardPresenter;->init(Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 299
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->needToAnimateForNewOutgoingCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->animateRevealForNewOutgoingCall()V

    .line 302
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/incallui/InCallActivity;->setNeedToAnimateForNewOutgoingCall(Z)V

    .line 305
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 641
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 642
    .local v0, "id":I
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

    .line 643
    sparse-switch v0, :sswitch_data_0

    .line 652
    const-string v1, "CallCardFragment"

    const-string v2, "onClick: unexpected"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :goto_0
    return-void

    .line 645
    :sswitch_0
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->fullScreen_moreOption()V

    .line 646
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;->menuButtonClicked()V

    goto :goto_0

    .line 649
    :sswitch_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;->showVolumeSeekBar()V

    goto :goto_0

    .line 643
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100273 -> :sswitch_0
        0x7f10041c -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 279
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 281
    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V

    .line 284
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 333
    const-string v1, "CallCardFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "parent":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 309
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroy()V

    .line 310
    const-string v0, "CallCardFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iput-boolean v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsOutgoingAnimationRunning:Z

    .line 313
    iput-boolean v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsActivityCreated:Z

    .line 315
    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V

    .line 319
    :cond_0
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 324
    :cond_1
    return-void
.end method

.method public onDialpadVisiblityChange(Z)V
    .locals 0
    .param p1, "isShown"    # Z

    .prologue
    .line 550
    iput-boolean p1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsDialpadShowing:Z

    .line 551
    return-void
.end method

.method public onEmergencyModeChange(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 1524
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->needToShowMenu()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/CallCardFragment;->showMenu(Z)V

    .line 1525
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1707
    packed-switch p2, :pswitch_data_0

    .line 1717
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1710
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/fragment/CallCardFragment;->onVolumeKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1711
    const/4 v0, 0x1

    goto :goto_0

    .line 1707
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 674
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 675
    .local v0, "id":I
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

    .line 676
    packed-switch v0, :pswitch_data_0

    .line 681
    const-string v1, "CallCardFragment"

    const-string v2, "onClick: unexpected"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :goto_0
    return v4

    .line 678
    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;->showMoreOptionLabelToast()V

    goto :goto_0

    .line 676
    :pswitch_data_0
    .packed-switch 0x7f100273
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 544
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    .line 545
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->updateNavigationBar()V

    .line 546
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 341
    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 342
    const-string v0, "CallCardFragment"

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->setupInCallMenu(Landroid/view/View;)V

    .line 345
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->initVolumePanelLayout()V

    .line 348
    :cond_0
    return-void
.end method

.method public onVolumeKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 1692
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1702
    :cond_0
    :goto_0
    return v0

    .line 1693
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

    .line 1694
    const/16 v0, 0x18

    if-ne p1, v0, :cond_3

    .line 1695
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->increaseVolume()V

    .line 1699
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/VolumeSeekBar;->showBelow(Landroid/view/View;Landroid/view/View;)V

    .line 1700
    const/4 v0, 0x1

    goto :goto_0

    .line 1696
    :cond_3
    const/16 v0, 0x19

    if-ne p1, v0, :cond_2

    .line 1697
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->decreaseVolume()V

    goto :goto_1
.end method

.method protected removeMessageForBlinkTime()V
    .locals 2

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1485
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mEndCallRepeatCount:I

    if-lez v0, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1487
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mEndCallRepeatCount:I

    .line 1488
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1490
    :cond_1
    return-void
.end method

.method public resetAnswerCallAnimator()V
    .locals 0

    .prologue
    .line 1106
    return-void
.end method

.method protected resetMergeAnimation()V
    .locals 0

    .prologue
    .line 1075
    return-void
.end method

.method public resetRevealAnimator()V
    .locals 0

    .prologue
    .line 1065
    return-void
.end method

.method protected resetSplitAnimation()V
    .locals 0

    .prologue
    .line 1090
    return-void
.end method

.method protected resetSwapAnimation()V
    .locals 0

    .prologue
    .line 1072
    return-void
.end method

.method public sendAccessibilityAnnouncement()V
    .locals 0

    .prologue
    .line 531
    return-void
.end method

.method public setAMView(Z)V
    .locals 0
    .param p1, "isRecording"    # Z

    .prologue
    .line 1531
    return-void
.end method

.method public setCallCardVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 408
    const-string v0, "CallCardFragment"

    const-string v1, "setVisible - - getView() == null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :goto_0
    return-void

    .line 412
    :cond_0
    if-eqz p1, :cond_1

    .line 413
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCallCharge(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x3

    .line 1493
    const-string v0, "CallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallCharge mOldCallState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOldCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOldCallState:I

    invoke-static {v0}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOldCallState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    :cond_0
    if-ne p1, v3, :cond_2

    .line 1495
    invoke-static {}, Lcom/android/incallui/service/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/service/SecModifyCallProcessor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecModifyCallProcessor;->setCallCharge(Z)V

    .line 1499
    :cond_1
    :goto_0
    return-void

    .line 1496
    :cond_2
    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOldCallState:I

    invoke-static {v0}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p1, v3, :cond_1

    .line 1497
    invoke-static {}, Lcom/android/incallui/service/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/service/SecModifyCallProcessor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecModifyCallProcessor;->setCallCharge(Z)V

    goto :goto_0
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "videoState"    # I
    .param p3, "sessionModificationState"    # I
    .param p4, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p5, "connectionLabel"    # Ljava/lang/String;
    .param p6, "connectionIcon"    # Landroid/graphics/drawable/Drawable;
    .param p7, "gatewayNumber"    # Ljava/lang/String;

    .prologue
    .line 471
    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "videoState"    # I
    .param p3, "sessionModificationState"    # I
    .param p4, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p5, "connectionLabel"    # Ljava/lang/String;
    .param p6, "connectionIcon"    # Landroid/graphics/drawable/Drawable;
    .param p7, "gatewayNumber"    # Ljava/lang/String;
    .param p8, "isWifi"    # Z
    .param p9, "isConference"    # Z
    .param p10, "isWorkCall"    # Z

    .prologue
    .line 441
    return-void
.end method

.method public setCallSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "callSubject"    # Ljava/lang/String;

    .prologue
    .line 480
    return-void
.end method

.method public setCallbackNumber(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "callbackNumber"    # Ljava/lang/String;
    .param p2, "isEmergencyCall"    # Z

    .prologue
    .line 475
    return-void
.end method

.method public setContactContextContent(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "listAdapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 372
    return-void
.end method

.method public setContactContextTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "listHeaderView"    # Landroid/view/View;

    .prologue
    .line 367
    return-void
.end method

.method public setDisplaySize()V
    .locals 4

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 632
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 638
    :goto_0
    return-void

    .line 633
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 634
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 635
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 636
    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mDisplayWidth:I

    .line 637
    iget v3, v2, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mDisplayHeight:I

    goto :goto_0
.end method

.method public setEndCallButtonEnabled(ZZ)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 502
    return-void
.end method

.method public setMenuText(Ljava/lang/String;)V
    .locals 3
    .param p1, "uniqueMenuItem"    # Ljava/lang/String;

    .prologue
    .line 896
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

    .line 897
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 900
    :cond_0
    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p6, "isSipCall"    # Z
    .param p7, "isContactPhotoShown"    # Z
    .param p8, "isWorkCall"    # Z

    .prologue
    .line 423
    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "isConference"    # Z
    .param p5, "canManageConference"    # Z
    .param p6, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p7, "isWorkCall"    # Z

    .prologue
    .line 572
    return-void
.end method

.method public setPrimaryCallElapsedTime(ZJ)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "duration"    # J

    .prologue
    .line 484
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/fragment/CallCardFragment;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    .line 485
    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 494
    return-void
.end method

.method public setPrimaryCityId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cityId"    # Ljava/lang/String;

    .prologue
    .line 445
    return-void
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isPersonalPhotoAvailable"    # Z

    .prologue
    .line 588
    return-void
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 457
    return-void
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z

    .prologue
    .line 449
    return-void
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 453
    return-void
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumberLocator"    # Ljava/lang/String;

    .prologue
    .line 1069
    return-void
.end method

.method public setPrimaryVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 592
    return-void
.end method

.method public setPrimaryVisibleByDialpad(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 607
    return-void
.end method

.method public setProfileContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1281
    return-void
.end method

.method public setProfileForwardingContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1285
    return-void
.end method

.method protected setProfileIcon(J)V
    .locals 5
    .param p1, "userType"    # J

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 953
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 954
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100209

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileStub:Landroid/view/ViewStub;

    .line 955
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 957
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 961
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_5

    .line 962
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 963
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020368

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 969
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 970
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 976
    :cond_2
    :goto_1
    return-void

    .line 964
    :cond_3
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 965
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020362

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 966
    :cond_4
    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 967
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020366

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 972
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 973
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setProgressSpinnerVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 386
    return-void
.end method

.method public setRecordTimeUpdate(J)V
    .locals 0
    .param p1, "recDuration"    # J

    .prologue
    .line 596
    return-void
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "providerLabel"    # Ljava/lang/String;
    .param p5, "providerIcon"    # Landroid/graphics/drawable/Drawable;
    .param p6, "isConference"    # Z
    .param p7, "canManageConference"    # Z
    .param p8, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 584
    return-void
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "providerLabel"    # Ljava/lang/String;
    .param p6, "isConference"    # Z
    .param p7, "isVideoCall"    # Z
    .param p8, "isFullscreen"    # Z

    .prologue
    .line 429
    return-void
.end method

.method public setSecondaryCallElapsedTime(ZJ)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "duration"    # J

    .prologue
    .line 489
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/fragment/CallCardFragment;->setSecondaryCallElapsedTime(ZLjava/lang/String;)V

    .line 490
    return-void
.end method

.method public setSecondaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 498
    return-void
.end method

.method public setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isPersonalPhotoAvailable"    # Z

    .prologue
    .line 461
    return-void
.end method

.method public setSecondaryInfoVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 434
    return-void
.end method

.method protected setSecondaryProfileIcon(J)V
    .locals 5
    .param p1, "userType"    # J

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 979
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 980
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileStub:Landroid/view/ViewStub;

    .line 981
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 983
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileIcon:Landroid/widget/ImageView;

    .line 986
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 987
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_5

    .line 988
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 989
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020368

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 995
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 996
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1002
    :cond_2
    :goto_1
    return-void

    .line 990
    :cond_3
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 991
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020362

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 992
    :cond_4
    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 993
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020366

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 998
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 999
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setTTS(JLandroid/view/View;)V
    .locals 11
    .param p1, "time"    # J
    .param p3, "elapsedTimeView"    # Landroid/view/View;

    .prologue
    const-wide/32 v8, 0x36ee80

    const-wide/32 v6, 0xea60

    .line 1216
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gtz v3, :cond_0

    .line 1222
    :goto_0
    return-void

    .line 1217
    :cond_0
    div-long v4, p1, v8

    long-to-int v0, v4

    .line 1218
    .local v0, "hours":I
    rem-long v4, p1, v8

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 1219
    .local v1, "minutes":I
    rem-long v4, p1, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 1221
    .local v2, "seconds":I
    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/fragment/CallCardFragment;->getStringForElapsedTime(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTTS(Ljava/lang/String;Landroid/view/View;)V
    .locals 12
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "elapsedTimeView"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1225
    if-nez p1, :cond_1

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1228
    :cond_1
    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1229
    .local v6, "tokens":[Ljava/lang/String;
    array-length v7, v6

    if-lt v7, v10, :cond_0

    array-length v7, v6

    if-gt v7, v11, :cond_0

    .line 1232
    const/4 v0, 0x0

    .line 1233
    .local v0, "hour":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1234
    .local v4, "minute":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1236
    .local v5, "second":Ljava/lang/String;
    array-length v7, v6

    if-ne v7, v11, :cond_2

    .line 1237
    aget-object v0, v6, v8

    .line 1238
    aget-object v4, v6, v9

    .line 1239
    aget-object v5, v6, v10

    .line 1245
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/CallCardFragment;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1246
    .local v1, "iHour":I
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/CallCardFragment;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1247
    .local v2, "iMinute":I
    invoke-direct {p0, v5}, Lcom/android/incallui/fragment/CallCardFragment;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1249
    .local v3, "iSecond":I
    invoke-direct {p0, v1, v2, v3}, Lcom/android/incallui/fragment/CallCardFragment;->getStringForElapsedTime(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1241
    .end local v1    # "iHour":I
    .end local v2    # "iMinute":I
    .end local v3    # "iSecond":I
    :cond_2
    aget-object v4, v6, v8

    .line 1242
    aget-object v5, v6, v9

    goto :goto_1
.end method

.method public setViewStatePostSplit()V
    .locals 4

    .prologue
    const/16 v1, 0x68

    .line 1096
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1098
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1099
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1100
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    .line 1103
    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 353
    const-string v0, "CallCardFragment"

    const-string v1, "setVisible - - getView() == null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :goto_0
    return-void

    .line 357
    :cond_0
    if-eqz p1, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setupInCallMenu(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 925
    const-string v0, "CallCardFragment"

    const-string v1, "setupInCallMenu()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 927
    if-nez p1, :cond_0

    .line 928
    const-string v0, "CallCardFragment"

    const-string v1, "setupInCallMenu() view is null !!"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    :goto_0
    return-void

    .line 932
    :cond_0
    const v0, 0x7f100273

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    .line 933
    const v0, 0x7f100274

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuBtnView:Landroid/view/View;

    .line 935
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getMenuRes()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/CallCardFragment;->setupInCallPopupMenu(I)V

    goto :goto_0
.end method

.method public showCallCardIndicatorArea(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1503
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1505
    :cond_0
    return-void

    .line 1503
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showCdmaMultipartyBtn()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 766
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 767
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 780
    :cond_0
    :goto_0
    return v3

    .line 771
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 775
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    .line 776
    .local v2, "showSwap":Z
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    .line 777
    .local v1, "showMerge":Z
    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    move v3, v4

    .line 778
    goto :goto_0
.end method

.method public showConferenceStateInfoBanner(ZLjava/lang/String;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 603
    return-void
.end method

.method public showContactContext(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 377
    return-void
.end method

.method public showForwardIndicator(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 396
    return-void
.end method

.method public showHdAudioIndicator(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 391
    return-void
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 511
    return-void
.end method

.method public showMenu(Z)V
    .locals 9
    .param p1, "show"    # Z

    .prologue
    const v8, 0x7f0f013f

    const/4 v4, 0x0

    .line 737
    iget-object v5, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-nez v5, :cond_0

    .line 738
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/CallCardFragment;->setupInCallMenu(Landroid/view/View;)V

    .line 740
    :cond_0
    const-string v5, "CallCardFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showMenu: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 744
    .local v1, "call":Lcom/android/incallui/Call;
    iget-object v5, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v5, :cond_1

    .line 745
    iget-object v5, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 746
    :cond_1
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 747
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 748
    .local v3, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 749
    const v4, 0x7f0f01ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 750
    .local v0, "activeColor":Landroid/content/res/ColorStateList;
    const-string v4, "QCIF"

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 751
    const v4, 0x7f0f01ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 752
    const v4, 0x7f0f01ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 753
    .local v2, "incomingColor":Landroid/content/res/ColorStateList;
    iget-object v4, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v4, :cond_2

    .line 754
    iget-object v4, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .end local v2    # "incomingColor":Landroid/content/res/ColorStateList;
    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 763
    .end local v0    # "activeColor":Landroid/content/res/ColorStateList;
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_2
    :goto_2
    return-void

    .line 745
    :cond_3
    const/16 v4, 0x8

    goto :goto_0

    .restart local v0    # "activeColor":Landroid/content/res/ColorStateList;
    .restart local v2    # "incomingColor":Landroid/content/res/ColorStateList;
    .restart local v3    # "res":Landroid/content/res/Resources;
    :cond_4
    move-object v2, v0

    .line 754
    goto :goto_1

    .line 757
    .end local v0    # "activeColor":Landroid/content/res/ColorStateList;
    .end local v2    # "incomingColor":Landroid/content/res/ColorStateList;
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v4, :cond_6

    .line 758
    iget-object v4, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 759
    :cond_6
    iget-object v4, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    if-eqz v4, :cond_2

    .line 760
    iget-object v4, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2
.end method

.method public showModifyStateInfoBanner(ZLjava/lang/String;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 599
    return-void
.end method

.method public showModifySwitchButtonAM()V
    .locals 0

    .prologue
    .line 1537
    return-void
.end method

.method public showNoteSentToast()V
    .locals 0

    .prologue
    .line 536
    return-void
.end method

.method public showRecordingInfo(ZZ)V
    .locals 0
    .param p1, "near"    # Z
    .param p2, "show"    # Z

    .prologue
    .line 1118
    return-void
.end method

.method public showVideoStateMessageUi(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1630
    return-void
.end method

.method public showVolumeButton(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 807
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

    .line 808
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 810
    :cond_0
    if-nez p1, :cond_1

    .line 811
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 812
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->dismiss()V

    .line 815
    :cond_1
    return-void

    .line 808
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateCallCard(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1622
    return-void
.end method

.method public updateCallCardIndicatorArea()V
    .locals 2

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1509
    const-string v0, "CallCardFragment"

    const-string v1, "fragment is detached from activity, return"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    :goto_0
    return-void

    .line 1512
    :cond_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1513
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/CallCardFragment;->showCallCardIndicatorArea(Z)V

    goto :goto_0

    .line 1515
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/CallCardFragment;->showCallCardIndicatorArea(Z)V

    goto :goto_0
.end method

.method public updateCallCardPriority()V
    .locals 0

    .prologue
    .line 1752
    return-void
.end method

.method public updateCallerInfoOrgView(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1635
    return-void
.end method

.method public updateDisplayChildCallChanged()V
    .locals 0

    .prologue
    .line 540
    return-void
.end method

.method public updateEri()V
    .locals 0

    .prologue
    .line 1605
    return-void
.end method

.method public updateFullscreenMode(Z)V
    .locals 0
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 1626
    return-void
.end method

.method public updateIncomingHideButton()V
    .locals 0

    .prologue
    .line 1263
    return-void
.end method

.method public updateJanskyInfo()V
    .locals 0

    .prologue
    .line 616
    return-void
.end method

.method public updateNavigationBar()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1740
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mNavigationBarArea:Landroid/view/View;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1741
    const/4 v0, 0x0

    .line 1742
    .local v0, "isLandscape":Z
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v1

    .line 1743
    .local v1, "isMultiWindow":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1744
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    const/4 v0, 0x1

    .line 1746
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mNavigationBarArea:Landroid/view/View;

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/16 v2, 0x8

    :cond_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1748
    .end local v0    # "isLandscape":Z
    .end local v1    # "isMultiWindow":Z
    :cond_3
    return-void

    .restart local v0    # "isLandscape":Z
    .restart local v1    # "isMultiWindow":Z
    :cond_4
    move v0, v2

    .line 1744
    goto :goto_0
.end method

.method public updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V
    .locals 0
    .param p1, "state"    # Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;
    .param p2, "block"    # I

    .prologue
    .line 1270
    return-void
.end method

.method public updateRecordTime(Z)V
    .locals 8
    .param p1, "isPaused"    # Z

    .prologue
    .line 1160
    const-string v5, "CallCardFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateRecordTime isPaused="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v4

    .line 1162
    .local v4, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1163
    iget-object v5, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v5, :cond_0

    .line 1164
    invoke-virtual {v4}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v2

    .line 1165
    .local v2, "duration":J
    if-nez p1, :cond_1

    .line 1166
    const-string v5, "CallCardFragment"

    const-string v6, "start record time"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v6, v2

    .line 1170
    .local v0, "baseTime":J
    iget-object v5, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    .line 1171
    iget-object v5, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->start()V

    .line 1182
    .end local v0    # "baseTime":J
    .end local v2    # "duration":J
    :cond_0
    :goto_0
    return-void

    .line 1173
    .restart local v2    # "duration":J
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-static {v6, v7}, Lcom/android/incallui/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    iget-object v5, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0

    .line 1178
    .end local v2    # "duration":J
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->stop()V

    .line 1179
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1180
    .restart local v0    # "baseTime":J
    iget-object v5, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    goto :goto_0
.end method

.method public updateSmartCallImageInfo()V
    .locals 0

    .prologue
    .line 1611
    return-void
.end method

.method public updateSmartCallInfo(Lcom/android/incallui/Call;Z)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isTimeout"    # Z

    .prologue
    .line 1608
    return-void
.end method

.method public updateSmartCallProviderImageInfo()V
    .locals 0

    .prologue
    .line 1614
    return-void
.end method

.method protected updateTextColor(I)V
    .locals 21
    .param p1, "state"    # I

    .prologue
    .line 1288
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v16

    if-nez v16, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1401
    :cond_0
    :goto_0
    return-void

    .line 1289
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallActivity;

    .line 1290
    .local v2, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->isBackgroundShowing()Z

    move-result v16

    if-eqz v16, :cond_11

    const/4 v12, 0x1

    .line 1291
    .local v12, "isBackgroundShowing":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0f0133

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 1292
    .local v9, "bannerTextColor":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0f0132

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 1294
    .local v8, "bannerSubTextColor":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0f011c

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 1295
    .local v11, "endCallLabelColor":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0f012f

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 1296
    .local v7, "bannerNameTextColor":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0f012e

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 1297
    .local v6, "bannerDefaultTextColor":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0f012d

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 1299
    .local v5, "bannerDefaultSubTextColor":I
    const/16 v16, 0xa

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mOldCallState:I

    move/from16 v16, v0

    const/16 v17, 0xa

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_12

    const/4 v3, 0x1

    .line 1300
    .local v3, "animated":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateTextColor(IZ)V

    .line 1301
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/incallui/fragment/view/CallCardVolteView;->updateIconColor(IZ)V

    .line 1302
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mJanskyView:Lcom/android/incallui/fragment/view/CallCardJanskyView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mJanskyView:Lcom/android/incallui/fragment/view/CallCardJanskyView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/incallui/fragment/view/CallCardJanskyView;->updateMultiLineColor(IZ)V

    .line 1304
    :cond_4
    if-eqz v12, :cond_13

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v16

    if-nez v16, :cond_5

    const/16 v16, 0x9

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_13

    .line 1305
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1306
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1307
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1308
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1309
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/widget/Chronometer;->setTextColor(I)V

    .line 1311
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1312
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1313
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1376
    :cond_d
    :goto_3
    const/16 v16, 0x8

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_20

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const v17, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1378
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const v17, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1379
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const v17, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1380
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getVisibility()I

    move-result v16

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mIsDefaultBizRingIcon:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const v17, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 1290
    .end local v3    # "animated":Z
    .end local v5    # "bannerDefaultSubTextColor":I
    .end local v6    # "bannerDefaultTextColor":I
    .end local v7    # "bannerNameTextColor":I
    .end local v8    # "bannerSubTextColor":I
    .end local v9    # "bannerTextColor":I
    .end local v11    # "endCallLabelColor":I
    .end local v12    # "isBackgroundShowing":Z
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1299
    .restart local v5    # "bannerDefaultSubTextColor":I
    .restart local v6    # "bannerDefaultTextColor":I
    .restart local v7    # "bannerNameTextColor":I
    .restart local v8    # "bannerSubTextColor":I
    .restart local v9    # "bannerTextColor":I
    .restart local v11    # "endCallLabelColor":I
    .restart local v12    # "isBackgroundShowing":Z
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1315
    .restart local v3    # "animated":Z
    :cond_13
    const/16 v16, 0xa

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mOldCallState:I

    move/from16 v16, v0

    const/16 v17, 0xa

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_14

    .line 1316
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v16

    if-nez v16, :cond_14

    .line 1317
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0d002b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 1319
    .local v10, "duration":I
    new-instance v16, Landroid/animation/ArgbEvaluator;

    invoke-direct/range {v16 .. v16}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 1320
    .local v13, "labelColorAnimator":Landroid/animation/ValueAnimator;
    int-to-long v0, v10

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1321
    new-instance v16, Lcom/android/incallui/fragment/CallCardFragment$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/incallui/fragment/CallCardFragment$2;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1330
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->start()V

    .line 1332
    new-instance v16, Landroid/animation/ArgbEvaluator;

    invoke-direct/range {v16 .. v16}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v14

    .line 1333
    .local v14, "nameColorAnimator":Landroid/animation/ValueAnimator;
    int-to-long v0, v10

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1334
    new-instance v16, Lcom/android/incallui/fragment/CallCardFragment$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/incallui/fragment/CallCardFragment$3;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1341
    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->start()V

    .line 1343
    new-instance v16, Landroid/animation/ArgbEvaluator;

    invoke-direct/range {v16 .. v16}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v15

    .line 1344
    .local v15, "numberAndLabelColorAnimator":Landroid/animation/ValueAnimator;
    int-to-long v0, v10

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1345
    new-instance v16, Lcom/android/incallui/fragment/CallCardFragment$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/incallui/fragment/CallCardFragment$4;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    invoke-virtual/range {v15 .. v16}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1352
    invoke-virtual {v15}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_3

    .line 1354
    .end local v10    # "duration":I
    .end local v13    # "labelColorAnimator":Landroid/animation/ValueAnimator;
    .end local v14    # "nameColorAnimator":Landroid/animation/ValueAnimator;
    .end local v15    # "numberAndLabelColorAnimator":Landroid/animation/ValueAnimator;
    :cond_14
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v16

    if-nez v16, :cond_d

    .line 1357
    const/16 v16, 0xa

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_1c

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1359
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1360
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1361
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    move-object/from16 v16, v0

    if-eqz v16, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/Chronometer;->setTextColor(I)V

    .line 1368
    :cond_18
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1369
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1370
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1371
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 1363
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1364
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1365
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1366
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    move-object/from16 v16, v0

    if-eqz v16, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/widget/Chronometer;->setTextColor(I)V

    goto/16 :goto_4

    .line 1382
    :cond_20
    const/16 v16, 0x3

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mOldCallState:I

    move/from16 v16, v0

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_25

    .line 1383
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1384
    .local v4, "animatorSet":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_21

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v16, v0

    sget-object v17, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    aput v20, v18, v19

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1386
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_22

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v16, v0

    sget-object v17, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    aput v20, v18, v19

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1388
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_23

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    sget-object v17, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    aput v20, v18, v19

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1390
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getVisibility()I

    move-result v16

    if-nez v16, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mIsDefaultBizRingIcon:Z

    move/from16 v16, v0

    if-eqz v16, :cond_24

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    sget-object v17, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    aput v20, v18, v19

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1392
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0d0029

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1393
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1395
    .end local v4    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1396
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1397
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1398
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getVisibility()I

    move-result v16

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mIsDefaultBizRingIcon:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method public updateVolteView(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1618
    return-void
.end method
