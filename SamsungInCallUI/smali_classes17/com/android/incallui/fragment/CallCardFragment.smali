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

    .line 208
    iput-boolean v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsActivityCreated:Z

    .line 211
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOldCallState:I

    .line 216
    iput-boolean v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsBlinkForEndCall:Z

    .line 217
    iput-boolean v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsDefaultBizRingIcon:Z

    .line 232
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

    .line 1433
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-nez v3, :cond_0

    .line 1462
    :goto_0
    return-void

    .line 1435
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1436
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_1

    .line 1437
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1438
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1439
    .local v1, "duration":I
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v9, [F

    const/4 v6, 0x0

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1440
    .local v0, "decreaseAlpha":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1441
    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1442
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1443
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v9, [F

    aput v7, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1444
    .local v2, "increaseAlpha":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1445
    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1446
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1447
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/incallui/fragment/CallCardFragment$5;

    invoke-direct {v4, p0}, Lcom/android/incallui/fragment/CallCardFragment$5;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1461
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

    .line 1184
    new-array v0, v9, [Ljava/lang/String;

    const-string v9, "%d"

    aput-object v9, v0, v10

    .line 1185
    .local v0, "SRC_TAGS":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1188
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v9, 0x1

    :try_start_0
    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 1189
    .local v7, "strMinutes":[Ljava/lang/String;
    const v9, 0x7f0902d8

    .line 1190
    invoke-virtual {p0, v9}, Lcom/android/incallui/fragment/CallCardFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1189
    invoke-static {v9, v0, v7}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1192
    .local v2, "charMinutes":Ljava/lang/CharSequence;
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1193
    .local v8, "strSeconds":[Ljava/lang/String;
    const v9, 0x7f0902da

    .line 1194
    invoke-virtual {p0, v9}, Lcom/android/incallui/fragment/CallCardFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1193
    invoke-static {v9, v0, v8}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1196
    .local v3, "charSeconds":Ljava/lang/CharSequence;
    if-lez p1, :cond_0

    .line 1197
    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    .line 1198
    .local v6, "strHours":[Ljava/lang/String;
    const v9, 0x7f0902d7

    .line 1199
    invoke-virtual {p0, v9}, Lcom/android/incallui/fragment/CallCardFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1198
    invoke-static {v9, v0, v6}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1200
    .local v1, "charHours":Ljava/lang/CharSequence;
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1203
    .end local v1    # "charHours":Ljava/lang/CharSequence;
    .end local v6    # "strHours":[Ljava/lang/String;
    :cond_0
    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1204
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1205
    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1206
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    .end local v2    # "charMinutes":Ljava/lang/CharSequence;
    .end local v3    # "charSeconds":Ljava/lang/CharSequence;
    .end local v7    # "strMinutes":[Ljava/lang/String;
    .end local v8    # "strSeconds":[Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1207
    :catch_0
    move-exception v4

    .line 1208
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "CallCardFragment"

    const-string v10, " getStringForElapsedTime IndexOutOfBoundsException "

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private hideVideoTogglingViews()V
    .locals 1

    .prologue
    .line 1272
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->hideVideoTogglingViews()V

    .line 1273
    return-void
.end method

.method private menuButtonClicked()V
    .locals 3

    .prologue
    .line 657
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    .line 669
    :goto_0
    return-void

    .line 658
    :cond_0
    const-string v1, "CallCardFragment"

    const-string v2, "menuButtonClicked: "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 660
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v1, :cond_2

    .line 661
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v1}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 662
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    goto :goto_0

    .line 664
    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->showInCallMenu()V

    goto :goto_0

    .line 667
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
    .line 1252
    const/4 v0, -0x1

    .line 1254
    .local v0, "res":I
    if-nez p1, :cond_0

    const/4 v0, -0x1

    .line 1258
    :goto_0
    return v0

    .line 1254
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1255
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setupInCallPopupMenu(I)V
    .locals 2
    .param p1, "menuRes"    # I

    .prologue
    .line 938
    const-string v0, "CallCardFragment"

    const-string v1, "setupInCallPopupMenu()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 941
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuBtnView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 944
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuBtnView:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lcom/android/incallui/InCallActivity;->setupInCallMenu(ILandroid/view/View;)V

    .line 945
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->setInCallMenuInstance(Lcom/android/incallui/InCallMenu;)V

    .line 949
    :goto_0
    return-void

    .line 947
    :cond_1
    const-string v0, "CallCardFragment"

    const-string v1, "activity is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showMoreOptionLabelToast()V
    .locals 17

    .prologue
    .line 687
    const-string v15, "CallCardFragment"

    const-string v16, "showMoreOptionLabelToast"

    invoke-static/range {v15 .. v16}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-nez v15, :cond_0

    .line 732
    :goto_0
    return-void

    .line 690
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageButton;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v3

    .line 691
    .local v3, "mHoverPopupWindow":Lcom/samsung/android/widget/SemHoverPopupWindow;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    .line 693
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "layout_inflater"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 694
    .local v4, "mInflater":Landroid/view/LayoutInflater;
    const v15, 0x7f040183

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 695
    .local v12, "toastView":Landroid/view/View;
    const v15, 0x7f100430

    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 696
    .local v11, "toastText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v15}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0f00bf

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 699
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v15}, Landroid/widget/ImageButton;->getWidth()I

    move-result v15

    div-int/lit8 v13, v15, 0x2

    .line 700
    .local v13, "xOffset":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v15}, Landroid/widget/ImageButton;->getHeight()I

    move-result v14

    .line 702
    .local v14, "yOffset":I
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 703
    const/4 v15, 0x2

    new-array v9, v15, [I

    .line 704
    .local v9, "screenPos":[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v15, v9}, Landroid/widget/ImageButton;->getLocationOnScreen([I)V

    .line 705
    if-eqz v9, :cond_2

    array-length v15, v9

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 706
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

    .line 707
    .local v2, "display":Landroid/view/Display;
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 709
    .local v6, "realDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v2, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v1, v15, Landroid/util/DisplayMetrics;->density:F

    .line 712
    .local v1, "density":F
    iget v5, v6, Landroid/util/DisplayMetrics;->density:F

    .line 714
    .local v5, "realDensity":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v15}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v5

    mul-float/2addr v15, v1

    float-to-int v8, v15

    .line 715
    .local v8, "realWidth":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v15}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v5

    mul-float/2addr v15, v1

    float-to-int v7, v15

    .line 717
    .local v7, "realHeight":I
    cmpl-float v15, v1, v5

    if-eqz v15, :cond_3

    .line 718
    iget v15, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v16, 0x0

    aget v16, v9, v16

    sub-int v15, v15, v16

    div-int/lit8 v16, v8, 0x2

    sub-int v13, v15, v16

    .line 719
    const/4 v15, 0x1

    aget v14, v9, v15

    .line 727
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

    .line 728
    .local v10, "toast":Landroid/widget/Toast;
    invoke-virtual {v10, v12}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 729
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/widget/Toast;->setDuration(I)V

    .line 730
    const v15, 0x800035

    invoke-virtual {v10, v15, v13, v14}, Landroid/widget/Toast;->setGravity(III)V

    .line 731
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 721
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
    .line 783
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    if-nez v0, :cond_0

    .line 786
    :goto_0
    return-void

    .line 785
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

    .line 1465
    const-string v1, "CallCardFragment"

    const-string v2, "stopCallEndTimeBlink"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->removeMessageForBlinkTime()V

    .line 1468
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

    .line 1469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1470
    .local v0, "cfText":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1473
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1474
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1475
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1477
    .end local v0    # "cfText":Ljava/lang/StringBuilder;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsBlinkForEndCall:Z

    .line 1478
    iput-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    .line 1479
    iput-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    .line 1480
    return-void
.end method

.method private updateAnswerMemoRecordTime()V
    .locals 8

    .prologue
    .line 1573
    const-string v1, "CallCardFragment"

    const-string v6, "updateAnswerMemoRecordTime"

    invoke-static {v1, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    .line 1575
    .local v0, "ansMemoRecorderMgr":Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1576
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    .line 1577
    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->getRecordTime()J

    move-result-wide v4

    .line 1579
    .local v4, "duration":J
    const-wide/16 v2, -0x1

    .line 1580
    .local v2, "baseTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v4

    .line 1581
    const-wide/16 v6, -0x1

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 1582
    const-string v1, "CallCardFragment"

    const-string v6, "start record time"

    invoke-static {v1, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 1584
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->start()V

    .line 1591
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {p0, v4, v5, v1}, Lcom/android/incallui/fragment/CallCardFragment;->setTTS(JLandroid/view/View;)V

    .line 1596
    .end local v2    # "baseTime":J
    .end local v4    # "duration":J
    :cond_0
    :goto_1
    return-void

    .line 1587
    .restart local v2    # "baseTime":J
    .restart local v4    # "duration":J
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    invoke-static {v6, v7}, Lcom/android/incallui/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    .line 1588
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0

    .line 1594
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
    .line 1109
    return-void
.end method

.method public animateForHideManager(Z)V
    .locals 0
    .param p1, "showPhoto"    # Z

    .prologue
    .line 1092
    return-void
.end method

.method public animateForMoveDialpad(Z)V
    .locals 0
    .param p1, "showDialpad"    # Z

    .prologue
    .line 1113
    return-void
.end method

.method public animateForNewOutgoingCall()V
    .locals 0

    .prologue
    .line 525
    return-void
.end method

.method public animateForNewOutgoingCall(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "touchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 1058
    return-void
.end method

.method public animateRevealForNewOutgoingCall()V
    .locals 0

    .prologue
    .line 1061
    return-void
.end method

.method public changeCallCardForAM(I)V
    .locals 0
    .param p1, "callState"    # I

    .prologue
    .line 1527
    return-void
.end method

.method public changeViewForMoveDialpad(Z)V
    .locals 0
    .param p1, "showDialpad"    # Z

    .prologue
    .line 1121
    return-void
.end method

.method public clearAMView()V
    .locals 0

    .prologue
    .line 1533
    return-void
.end method

.method public createPresenter()Lcom/android/incallui/CallCardPresenter;
    .locals 1

    .prologue
    .line 268
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
    .line 1276
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    .line 1277
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 554
    const/4 v0, 0x0

    return v0
.end method

.method public enableMenu(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 821
    :cond_0
    return-void
.end method

.method public getCallInfoContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallInfoContainer:Landroid/view/View;

    return-object v0
.end method

.method public getCallNumberAndLabel()Landroid/view/View;
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    return-object v0
.end method

.method public getCallStateContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateContainer:Landroid/view/View;

    return-object v0
.end method

.method public getCallStateLabel()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCallerInfoCardView()Lcom/android/incallui/callerinfocard/CallerInfoCardView;
    .locals 1

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    return-object v0
.end method

.method public getCallerInfoView()Lcom/android/incallui/fragment/view/CallCardCallerInfoView;
    .locals 1

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    return-object v0
.end method

.method public getChnFeatureView()Lcom/android/incallui/fragment/view/CallCardChnFeatureView;
    .locals 1

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    return-object v0
.end method

.method public getCurrentSecondaryCallName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1735
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayHeight()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mDisplayHeight:I

    return v0
.end method

.method public getDisplayWidth()I
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mDisplayWidth:I

    return v0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    .line 914
    new-instance v0, Lcom/android/incallui/InCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getIncomingPhoto()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1682
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenuRes()I
    .locals 1

    .prologue
    .line 920
    const v0, 0x7f120001

    return v0
.end method

.method public getMultiSimView()Lcom/android/incallui/fragment/view/CallCardMultiSimView;
    .locals 1

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    return-object v0
.end method

.method public getNumberLabel()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOnScreenMenuIcon()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getPhoneNumber()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhoto()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPhotoContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPhotoContainer:Landroid/view/View;

    return-object v0
.end method

.method public getPrimaryCallCardContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    return-object v0
.end method

.method public getPrimaryName()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPrimaryPhotoView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSpaceBesideCallCard()F
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public getUi()Lcom/android/incallui/CallCardUi;
    .locals 0

    .prologue
    .line 273
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

    .line 257
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v0

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected inflateRecordInfo()V
    .locals 0

    .prologue
    .line 1265
    return-void
.end method

.method protected initVolumePanelLayout()V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButtonStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 790
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100275

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButtonStub:Landroid/view/ViewStub;

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 794
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10041a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    .line 795
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 798
    :cond_1
    new-instance v0, Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/VolumeSeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    .line 799
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 800
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 801
    return-void
.end method

.method public isActivityCreated()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsActivityCreated:Z

    return v0
.end method

.method public isAnimationRunning()Z
    .locals 3

    .prologue
    .line 1053
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

    .line 1054
    iget-boolean v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsOutgoingAnimationRunning:Z

    return v0
.end method

.method public isAnswerProcessing()Z
    .locals 1

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsAnswerProcessing:Z

    return v0
.end method

.method public isAvailableFullScreenMode()Z
    .locals 1

    .prologue
    .line 1638
    const/4 v0, 0x1

    return v0
.end method

.method protected isBlinkForEndCall(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1403
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
    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public isInExceptionArea(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1085
    const/4 v0, 0x0

    return v0
.end method

.method public isManageConferenceVisible()Z
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method public isMenuShowing()Z
    .locals 2

    .prologue
    .line 824
    const/4 v0, 0x0

    .line 825
    .local v0, "bIsMenuShown":Z
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 826
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 828
    :cond_0
    :goto_0
    return v0

    .line 826
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isMergeProcessing()Z
    .locals 1

    .prologue
    .line 1077
    const/4 v0, 0x0

    return v0
.end method

.method public isPrimaryVisible()Z
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x1

    return v0
.end method

.method public isShowingIncomingPhoto()Z
    .locals 1

    .prologue
    .line 1518
    const/4 v0, 0x0

    return v0
.end method

.method public isSwapProcessing()Z
    .locals 1

    .prologue
    .line 1081
    const/4 v0, 0x0

    return v0
.end method

.method public manageAnswerMemoRecord(Z)V
    .locals 4
    .param p1, "isActiveCall"    # Z

    .prologue
    .line 1546
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

    .line 1547
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    .line 1548
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

    .line 1549
    if-eqz v0, :cond_1

    .line 1550
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

    .line 1551
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1552
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1553
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->inflateRecordInfo()V

    .line 1554
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1556
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1557
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;->updateAnswerMemoRecordTime()V

    .line 1563
    :cond_1
    :goto_0
    return-void

    .line 1560
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

    .line 1407
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eq p1, v3, :cond_0

    if-ne p1, v2, :cond_1

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/fragment/CallCardFragment;->setTTS(Ljava/lang/String;Landroid/view/View;)V

    .line 1411
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-ne p1, v2, :cond_2

    .line 1412
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1413
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    if-ne p1, v3, :cond_4

    .line 1414
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

    .line 1415
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1416
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

    .line 1419
    :cond_3
    const-string v0, "CallCardFragment"

    const-string v1, "manageCallEndTimeBlink"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1421
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

    .line 1422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsBlinkForEndCall:Z

    .line 1423
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1424
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1425
    const-string v0, "dcm_end_call_time_blink_extension"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mEndCallRepeatCount:I

    .line 1427
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;->animateForBlinkCallTime()V

    .line 1430
    :cond_4
    return-void

    .line 1425
    :cond_5
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public manageMultiTouchStub(Z)V
    .locals 2
    .param p1, "isIncoming"    # Z

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyStub:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 1008
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/PhoneModeUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1009
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyStub:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1010
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1011
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    .line 1013
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1017
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1018
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mMultiTouchDummyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1019
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

    .line 1124
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

    .line 1125
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1126
    const-string v2, "CallCardFragment"

    const-string v3, "fragment is detached from activity, return"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1130
    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    .line 1131
    .local v0, "answerUi":Lcom/android/incallui/AnswerUi;
    if-eqz v0, :cond_2

    .line 1132
    const-string v2, "answer animation is running"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1133
    invoke-interface {v0}, Lcom/android/incallui/AnswerUi;->isAnswerAnimationRunning()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    and-int/2addr p1, v2

    .line 1136
    :cond_2
    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v1

    .line 1137
    .local v1, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v1, :cond_0

    .line 1138
    if-eqz p1, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1139
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->inflateRecordInfo()V

    .line 1140
    invoke-virtual {p0, p2}, Lcom/android/incallui/fragment/CallCardFragment;->updateRecordTime(Z)V

    .line 1141
    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    .line 1142
    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1143
    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 1144
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz p2, :cond_5

    move-object v2, v4

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1147
    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordIcon:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0203ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_3
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .end local v1    # "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    :cond_4
    move v2, v3

    .line 1133
    goto :goto_1

    .line 1145
    .restart local v1    # "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f02022c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    .line 1151
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1152
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

    .line 835
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 836
    .local v2, "currentActivity":Landroid/app/Activity;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->isAdded()Z

    move-result v5

    if-nez v5, :cond_1

    .line 837
    :cond_0
    const-string v5, "CallCardFragment"

    const-string v6, "needToShowMenu: fragment is detached from activity, return"

    invoke-static {v5, v6, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 891
    :goto_0
    return v0

    .line 841
    :cond_1
    const-string v5, "CallCardFragment"

    const-string v6, "needToShowMenu"

    invoke-static {v5, v6, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 843
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 844
    .local v1, "call":Lcom/android/incallui/Call;
    if-eqz v1, :cond_2

    .line 845
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    .line 846
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_2

    .line 847
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_2

    .line 848
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_2

    .line 849
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_2

    move v0, v4

    .line 852
    .local v0, "bShowMenu":Z
    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 853
    const/4 v0, 0x0

    .line 856
    :cond_3
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isLostPhoneLock()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 857
    const/4 v0, 0x0

    .line 859
    :cond_4
    if-eqz v0, :cond_5

    const-string v4, "true"

    const-string v5, "ril.domesticOtaStart"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 860
    const/4 v0, 0x0

    .line 862
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 863
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->isExistOptionsItem()Z

    move-result v0

    .line 866
    :cond_6
    const-string v4, "support_nsri_secure"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 867
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isNsriSecureCallMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 868
    const/4 v0, 0x0

    .line 873
    :cond_7
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 874
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

    .line 875
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 876
    const/4 v0, 0x0

    .line 879
    :cond_8
    const-string v4, "end_call_when_dial_e911"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 880
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v3

    .line 881
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

    .line 882
    const/4 v0, 0x0

    .line 885
    .end local v3    # "fgCall":Lcom/android/incallui/Call;
    :cond_9
    const-string v4, "china_cdma_call"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 886
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->showCdmaMultipartyBtn()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 887
    const/4 v0, 0x0

    .line 890
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

    .line 903
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 904
    .local v1, "call":Lcom/android/incallui/Call;
    if-eqz v1, :cond_0

    .line 905
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 906
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    .line 907
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 908
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

    .line 909
    return v0
.end method

.method protected needToStartEffect(I)Z
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1024
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->isAnimationRunning()Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    .line 1025
    .local v0, "needToStartEffect":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1026
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v3

    and-int/2addr v0, v3

    .line 1028
    :cond_0
    const/16 v3, 0xd

    if-ne p1, v3, :cond_1

    .line 1029
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

    .line 1035
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1036
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1037
    const/4 v0, 0x1

    .line 1041
    :cond_3
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1042
    const/4 v0, 0x1

    .line 1045
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

    .line 1046
    return v0

    .end local v0    # "needToStartEffect":Z
    :cond_5
    move v0, v2

    .line 1024
    goto :goto_0

    .restart local v0    # "needToStartEffect":Z
    :cond_6
    move v1, v2

    .line 1029
    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 287
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 288
    const-string v3, "CallCardFragment"

    const-string v4, "onActivityCreated"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsActivityCreated:Z

    .line 292
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    .line 293
    .local v2, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 294
    .local v1, "call":Lcom/android/incallui/Call;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/incallui/CallCardPresenter;->init(Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 298
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->needToAnimateForNewOutgoingCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->animateRevealForNewOutgoingCall()V

    .line 301
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/incallui/InCallActivity;->setNeedToAnimateForNewOutgoingCall(Z)V

    .line 304
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 640
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 641
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

    .line 642
    sparse-switch v0, :sswitch_data_0

    .line 651
    const-string v1, "CallCardFragment"

    const-string v2, "onClick: unexpected"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :goto_0
    return-void

    .line 644
    :sswitch_0
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->fullScreen_moreOption()V

    .line 645
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;->menuButtonClicked()V

    goto :goto_0

    .line 648
    :sswitch_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;->showVolumeSeekBar()V

    goto :goto_0

    .line 642
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100273 -> :sswitch_0
        0x7f10041a -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 280
    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V

    .line 283
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 332
    const-string v1, "CallCardFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "parent":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 308
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroy()V

    .line 309
    const-string v0, "CallCardFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iput-boolean v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsOutgoingAnimationRunning:Z

    .line 312
    iput-boolean v2, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsActivityCreated:Z

    .line 314
    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V

    .line 318
    :cond_0
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 323
    :cond_1
    return-void
.end method

.method public onDialpadVisiblityChange(Z)V
    .locals 0
    .param p1, "isShown"    # Z

    .prologue
    .line 549
    iput-boolean p1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIsDialpadShowing:Z

    .line 550
    return-void
.end method

.method public onEmergencyModeChange(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 1523
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->needToShowMenu()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/CallCardFragment;->showMenu(Z)V

    .line 1524
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1706
    packed-switch p2, :pswitch_data_0

    .line 1716
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1709
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/fragment/CallCardFragment;->onVolumeKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1710
    const/4 v0, 0x1

    goto :goto_0

    .line 1706
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

    .line 673
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 674
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

    .line 675
    packed-switch v0, :pswitch_data_0

    .line 680
    const-string v1, "CallCardFragment"

    const-string v2, "onClick: unexpected"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :goto_0
    return v4

    .line 677
    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;->showMoreOptionLabelToast()V

    goto :goto_0

    .line 675
    :pswitch_data_0
    .packed-switch 0x7f100273
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 543
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    .line 544
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->updateNavigationBar()V

    .line 545
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 340
    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 341
    const-string v0, "CallCardFragment"

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->setupInCallMenu(Landroid/view/View;)V

    .line 344
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->initVolumePanelLayout()V

    .line 347
    :cond_0
    return-void
.end method

.method public onVolumeKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 1691
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1701
    :cond_0
    :goto_0
    return v0

    .line 1692
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

    .line 1693
    const/16 v0, 0x18

    if-ne p1, v0, :cond_3

    .line 1694
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->increaseVolume()V

    .line 1698
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/VolumeSeekBar;->showBelow(Landroid/view/View;Landroid/view/View;)V

    .line 1699
    const/4 v0, 0x1

    goto :goto_0

    .line 1695
    :cond_3
    const/16 v0, 0x19

    if-ne p1, v0, :cond_2

    .line 1696
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->decreaseVolume()V

    goto :goto_1
.end method

.method protected removeMessageForBlinkTime()V
    .locals 2

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1484
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mEndCallRepeatCount:I

    if-lez v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mLastestCallTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1486
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mEndCallRepeatCount:I

    .line 1487
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1489
    :cond_1
    return-void
.end method

.method public resetAnswerCallAnimator()V
    .locals 0

    .prologue
    .line 1105
    return-void
.end method

.method protected resetMergeAnimation()V
    .locals 0

    .prologue
    .line 1074
    return-void
.end method

.method public resetRevealAnimator()V
    .locals 0

    .prologue
    .line 1064
    return-void
.end method

.method protected resetSplitAnimation()V
    .locals 0

    .prologue
    .line 1089
    return-void
.end method

.method protected resetSwapAnimation()V
    .locals 0

    .prologue
    .line 1071
    return-void
.end method

.method public sendAccessibilityAnnouncement()V
    .locals 0

    .prologue
    .line 530
    return-void
.end method

.method public setAMView(Z)V
    .locals 0
    .param p1, "isRecording"    # Z

    .prologue
    .line 1530
    return-void
.end method

.method public setCallCardVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 407
    const-string v0, "CallCardFragment"

    const-string v1, "setVisible - - getView() == null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :goto_0
    return-void

    .line 411
    :cond_0
    if-eqz p1, :cond_1

    .line 412
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 414
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

    .line 1492
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

    .line 1493
    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOldCallState:I

    invoke-static {v0}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOldCallState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    :cond_0
    if-ne p1, v3, :cond_2

    .line 1494
    invoke-static {}, Lcom/android/incallui/service/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/service/SecModifyCallProcessor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecModifyCallProcessor;->setCallCharge(Z)V

    .line 1498
    :cond_1
    :goto_0
    return-void

    .line 1495
    :cond_2
    iget v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOldCallState:I

    invoke-static {v0}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p1, v3, :cond_1

    .line 1496
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
    .line 470
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
    .line 440
    return-void
.end method

.method public setCallSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "callSubject"    # Ljava/lang/String;

    .prologue
    .line 479
    return-void
.end method

.method public setCallbackNumber(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "callbackNumber"    # Ljava/lang/String;
    .param p2, "isEmergencyCall"    # Z

    .prologue
    .line 474
    return-void
.end method

.method public setContactContextContent(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "listAdapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 371
    return-void
.end method

.method public setContactContextTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "listHeaderView"    # Landroid/view/View;

    .prologue
    .line 366
    return-void
.end method

.method public setDisplaySize()V
    .locals 4

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 631
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 637
    :goto_0
    return-void

    .line 632
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 633
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 634
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 635
    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mDisplayWidth:I

    .line 636
    iget v3, v2, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mDisplayHeight:I

    goto :goto_0
.end method

.method public setEndCallButtonEnabled(ZZ)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 501
    return-void
.end method

.method public setMenuText(Ljava/lang/String;)V
    .locals 3
    .param p1, "uniqueMenuItem"    # Ljava/lang/String;

    .prologue
    .line 895
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

    .line 896
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 899
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
    .line 422
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
    .line 571
    return-void
.end method

.method public setPrimaryCallElapsedTime(ZJ)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "duration"    # J

    .prologue
    .line 483
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/fragment/CallCardFragment;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    .line 484
    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 493
    return-void
.end method

.method public setPrimaryCityId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cityId"    # Ljava/lang/String;

    .prologue
    .line 444
    return-void
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isPersonalPhotoAvailable"    # Z

    .prologue
    .line 587
    return-void
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 456
    return-void
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z

    .prologue
    .line 448
    return-void
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 452
    return-void
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumberLocator"    # Ljava/lang/String;

    .prologue
    .line 1068
    return-void
.end method

.method public setPrimaryVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 591
    return-void
.end method

.method public setPrimaryVisibleByDialpad(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 606
    return-void
.end method

.method public setProfileContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1280
    return-void
.end method

.method public setProfileForwardingContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1284
    return-void
.end method

.method protected setProfileIcon(J)V
    .locals 5
    .param p1, "userType"    # J

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 952
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 953
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100209

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileStub:Landroid/view/ViewStub;

    .line 954
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 956
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 960
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_5

    .line 961
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 962
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020369

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 968
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 969
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 975
    :cond_2
    :goto_1
    return-void

    .line 963
    :cond_3
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 964
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020363

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 965
    :cond_4
    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 966
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020367

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 971
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 972
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setProgressSpinnerVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 385
    return-void
.end method

.method public setRecordTimeUpdate(J)V
    .locals 0
    .param p1, "recDuration"    # J

    .prologue
    .line 595
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
    .line 583
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
    .line 428
    return-void
.end method

.method public setSecondaryCallElapsedTime(ZJ)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "duration"    # J

    .prologue
    .line 488
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/fragment/CallCardFragment;->setSecondaryCallElapsedTime(ZLjava/lang/String;)V

    .line 489
    return-void
.end method

.method public setSecondaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 497
    return-void
.end method

.method public setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isPersonalPhotoAvailable"    # Z

    .prologue
    .line 460
    return-void
.end method

.method public setSecondaryInfoVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 433
    return-void
.end method

.method protected setSecondaryProfileIcon(J)V
    .locals 5
    .param p1, "userType"    # J

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 978
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 979
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileStub:Landroid/view/ViewStub;

    .line 980
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 982
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileIcon:Landroid/widget/ImageView;

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 986
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_5

    .line 987
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 988
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020369

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 994
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 995
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1001
    :cond_2
    :goto_1
    return-void

    .line 989
    :cond_3
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 990
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020363

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 991
    :cond_4
    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 992
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020367

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 997
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mSecondaryProfileStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 998
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

    .line 1215
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gtz v3, :cond_0

    .line 1221
    :goto_0
    return-void

    .line 1216
    :cond_0
    div-long v4, p1, v8

    long-to-int v0, v4

    .line 1217
    .local v0, "hours":I
    rem-long v4, p1, v8

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 1218
    .local v1, "minutes":I
    rem-long v4, p1, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 1220
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

    .line 1224
    if-nez p1, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1227
    :cond_1
    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1228
    .local v6, "tokens":[Ljava/lang/String;
    array-length v7, v6

    if-lt v7, v10, :cond_0

    array-length v7, v6

    if-gt v7, v11, :cond_0

    .line 1231
    const/4 v0, 0x0

    .line 1232
    .local v0, "hour":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1233
    .local v4, "minute":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1235
    .local v5, "second":Ljava/lang/String;
    array-length v7, v6

    if-ne v7, v11, :cond_2

    .line 1236
    aget-object v0, v6, v8

    .line 1237
    aget-object v4, v6, v9

    .line 1238
    aget-object v5, v6, v10

    .line 1244
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/CallCardFragment;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1245
    .local v1, "iHour":I
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/CallCardFragment;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1246
    .local v2, "iMinute":I
    invoke-direct {p0, v5}, Lcom/android/incallui/fragment/CallCardFragment;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1248
    .local v3, "iSecond":I
    invoke-direct {p0, v1, v2, v3}, Lcom/android/incallui/fragment/CallCardFragment;->getStringForElapsedTime(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1240
    .end local v1    # "iHour":I
    .end local v2    # "iMinute":I
    .end local v3    # "iSecond":I
    :cond_2
    aget-object v4, v6, v8

    .line 1241
    aget-object v5, v6, v9

    goto :goto_1
.end method

.method public setViewStatePostSplit()V
    .locals 4

    .prologue
    const/16 v1, 0x68

    .line 1095
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1097
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1098
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    .line 1102
    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 352
    const-string v0, "CallCardFragment"

    const-string v1, "setVisible - - getView() == null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :goto_0
    return-void

    .line 356
    :cond_0
    if-eqz p1, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 359
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
    .line 924
    const-string v0, "CallCardFragment"

    const-string v1, "setupInCallMenu()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 926
    if-nez p1, :cond_0

    .line 927
    const-string v0, "CallCardFragment"

    const-string v1, "setupInCallMenu() view is null !!"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    :goto_0
    return-void

    .line 931
    :cond_0
    const v0, 0x7f100273

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    .line 932
    const v0, 0x7f100274

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuBtnView:Landroid/view/View;

    .line 934
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getMenuRes()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/CallCardFragment;->setupInCallPopupMenu(I)V

    goto :goto_0
.end method

.method public showCallCardIndicatorArea(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1502
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1504
    :cond_0
    return-void

    .line 1502
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showCdmaMultipartyBtn()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 765
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 766
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 779
    :cond_0
    :goto_0
    return v3

    .line 770
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 774
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    .line 775
    .local v2, "showSwap":Z
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    .line 776
    .local v1, "showMerge":Z
    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    move v3, v4

    .line 777
    goto :goto_0
.end method

.method public showConferenceStateInfoBanner(ZLjava/lang/String;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 602
    return-void
.end method

.method public showContactContext(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 376
    return-void
.end method

.method public showForwardIndicator(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 395
    return-void
.end method

.method public showHdAudioIndicator(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 390
    return-void
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 510
    return-void
.end method

.method public showMenu(Z)V
    .locals 9
    .param p1, "show"    # Z

    .prologue
    const v8, 0x7f0f013f

    const/4 v4, 0x0

    .line 736
    iget-object v5, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-nez v5, :cond_0

    .line 737
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/CallCardFragment;->setupInCallMenu(Landroid/view/View;)V

    .line 739
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

    .line 741
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 743
    .local v1, "call":Lcom/android/incallui/Call;
    iget-object v5, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v5, :cond_1

    .line 744
    iget-object v5, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 745
    :cond_1
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 746
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 747
    .local v3, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 748
    const v4, 0x7f0f01ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 749
    .local v0, "activeColor":Landroid/content/res/ColorStateList;
    const-string v4, "QCIF"

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 750
    const v4, 0x7f0f01ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 751
    const v4, 0x7f0f01ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 752
    .local v2, "incomingColor":Landroid/content/res/ColorStateList;
    iget-object v4, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v4, :cond_2

    .line 753
    iget-object v4, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .end local v2    # "incomingColor":Landroid/content/res/ColorStateList;
    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 762
    .end local v0    # "activeColor":Landroid/content/res/ColorStateList;
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_2
    :goto_2
    return-void

    .line 744
    :cond_3
    const/16 v4, 0x8

    goto :goto_0

    .restart local v0    # "activeColor":Landroid/content/res/ColorStateList;
    .restart local v2    # "incomingColor":Landroid/content/res/ColorStateList;
    .restart local v3    # "res":Landroid/content/res/Resources;
    :cond_4
    move-object v2, v0

    .line 753
    goto :goto_1

    .line 756
    .end local v0    # "activeColor":Landroid/content/res/ColorStateList;
    .end local v2    # "incomingColor":Landroid/content/res/ColorStateList;
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v4, :cond_6

    .line 757
    iget-object v4, p0, Lcom/android/incallui/fragment/CallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 758
    :cond_6
    iget-object v4, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    if-eqz v4, :cond_2

    .line 759
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
    .line 598
    return-void
.end method

.method public showModifySwitchButtonAM()V
    .locals 0

    .prologue
    .line 1536
    return-void
.end method

.method public showNoteSentToast()V
    .locals 0

    .prologue
    .line 535
    return-void
.end method

.method public showRecordingInfo(ZZ)V
    .locals 0
    .param p1, "near"    # Z
    .param p2, "show"    # Z

    .prologue
    .line 1117
    return-void
.end method

.method public showVideoStateMessageUi(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1629
    return-void
.end method

.method public showVolumeButton(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 806
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

    .line 807
    iget-object v1, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 809
    :cond_0
    if-nez p1, :cond_1

    .line 810
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 811
    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment;->mVolumeSeekBarLayout:Lcom/android/incallui/VolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/VolumeSeekBar;->dismiss()V

    .line 814
    :cond_1
    return-void

    .line 807
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateCallCard(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1621
    return-void
.end method

.method public updateCallCardIndicatorArea()V
    .locals 2

    .prologue
    .line 1507
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1508
    const-string v0, "CallCardFragment"

    const-string v1, "fragment is detached from activity, return"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    :goto_0
    return-void

    .line 1511
    :cond_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1512
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/CallCardFragment;->showCallCardIndicatorArea(Z)V

    goto :goto_0

    .line 1514
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/CallCardFragment;->showCallCardIndicatorArea(Z)V

    goto :goto_0
.end method

.method public updateCallCardPriority()V
    .locals 0

    .prologue
    .line 1751
    return-void
.end method

.method public updateCallerInfoOrgView(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1634
    return-void
.end method

.method public updateDisplayChildCallChanged()V
    .locals 0

    .prologue
    .line 539
    return-void
.end method

.method public updateEri()V
    .locals 0

    .prologue
    .line 1604
    return-void
.end method

.method public updateFullscreenMode(Z)V
    .locals 0
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 1625
    return-void
.end method

.method public updateIncomingHideButton()V
    .locals 0

    .prologue
    .line 1262
    return-void
.end method

.method public updateJanskyInfo()V
    .locals 0

    .prologue
    .line 615
    return-void
.end method

.method public updateNavigationBar()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1739
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mNavigationBarArea:Landroid/view/View;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1740
    const/4 v0, 0x0

    .line 1741
    .local v0, "isLandscape":Z
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v1

    .line 1742
    .local v1, "isMultiWindow":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1743
    invoke-virtual {p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    const/4 v0, 0x1

    .line 1745
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/fragment/CallCardFragment;->mNavigationBarArea:Landroid/view/View;

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/16 v2, 0x8

    :cond_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1747
    .end local v0    # "isLandscape":Z
    .end local v1    # "isMultiWindow":Z
    :cond_3
    return-void

    .restart local v0    # "isLandscape":Z
    .restart local v1    # "isMultiWindow":Z
    :cond_4
    move v0, v2

    .line 1743
    goto :goto_0
.end method

.method public updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V
    .locals 0
    .param p1, "state"    # Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;
    .param p2, "block"    # I

    .prologue
    .line 1269
    return-void
.end method

.method public updateRecordTime(Z)V
    .locals 8
    .param p1, "isPaused"    # Z

    .prologue
    .line 1159
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

    .line 1160
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v4

    .line 1161
    .local v4, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1162
    iget-object v5, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v5, :cond_0

    .line 1163
    invoke-virtual {v4}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v2

    .line 1164
    .local v2, "duration":J
    if-nez p1, :cond_1

    .line 1165
    const-string v5, "CallCardFragment"

    const-string v6, "start record time"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v6, v2

    .line 1169
    .local v0, "baseTime":J
    iget-object v5, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    .line 1170
    iget-object v5, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->start()V

    .line 1181
    .end local v0    # "baseTime":J
    .end local v2    # "duration":J
    :cond_0
    :goto_0
    return-void

    .line 1172
    .restart local v2    # "duration":J
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-static {v6, v7}, Lcom/android/incallui/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    iget-object v5, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0

    .line 1177
    .end local v2    # "duration":J
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/fragment/CallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->stop()V

    .line 1178
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1179
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
    .line 1610
    return-void
.end method

.method public updateSmartCallInfo(Lcom/android/incallui/Call;Z)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isTimeout"    # Z

    .prologue
    .line 1607
    return-void
.end method

.method public updateSmartCallProviderImageInfo()V
    .locals 0

    .prologue
    .line 1613
    return-void
.end method

.method protected updateTextColor(I)V
    .locals 21
    .param p1, "state"    # I

    .prologue
    .line 1287
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

    .line 1400
    :cond_0
    :goto_0
    return-void

    .line 1288
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallActivity;

    .line 1289
    .local v2, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->isBackgroundShowing()Z

    move-result v16

    if-eqz v16, :cond_11

    const/4 v12, 0x1

    .line 1290
    .local v12, "isBackgroundShowing":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0f0133

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 1291
    .local v9, "bannerTextColor":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0f0132

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 1293
    .local v8, "bannerSubTextColor":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0f011c

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 1294
    .local v11, "endCallLabelColor":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0f012f

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 1295
    .local v7, "bannerNameTextColor":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0f012e

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 1296
    .local v6, "bannerDefaultTextColor":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0f012d

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 1298
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

    .line 1299
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

    .line 1300
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

    .line 1301
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

    .line 1303
    :cond_4
    if-eqz v12, :cond_13

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v16

    if-nez v16, :cond_5

    const/16 v16, 0x9

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_13

    .line 1304
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

    .line 1305
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

    .line 1306
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

    .line 1307
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

    .line 1308
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

    .line 1310
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

    .line 1311
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

    .line 1312
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

    .line 1375
    :cond_d
    :goto_3
    const/16 v16, 0x8

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_20

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const v17, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1377
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

    .line 1378
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

    .line 1379
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

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const v17, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 1289
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

    .line 1298
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

    .line 1314
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

    .line 1315
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v16

    if-nez v16, :cond_14

    .line 1316
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0d002b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 1318
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

    .line 1319
    .local v13, "labelColorAnimator":Landroid/animation/ValueAnimator;
    int-to-long v0, v10

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1320
    new-instance v16, Lcom/android/incallui/fragment/CallCardFragment$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/incallui/fragment/CallCardFragment$2;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1329
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->start()V

    .line 1331
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

    .line 1332
    .local v14, "nameColorAnimator":Landroid/animation/ValueAnimator;
    int-to-long v0, v10

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1333
    new-instance v16, Lcom/android/incallui/fragment/CallCardFragment$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/incallui/fragment/CallCardFragment$3;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1340
    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->start()V

    .line 1342
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

    .line 1343
    .local v15, "numberAndLabelColorAnimator":Landroid/animation/ValueAnimator;
    int-to-long v0, v10

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1344
    new-instance v16, Lcom/android/incallui/fragment/CallCardFragment$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/incallui/fragment/CallCardFragment$4;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    invoke-virtual/range {v15 .. v16}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1351
    invoke-virtual {v15}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_3

    .line 1353
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

    .line 1356
    const/16 v16, 0xa

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_1c

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1358
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

    .line 1359
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

    .line 1360
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

    .line 1367
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

    .line 1368
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

    .line 1369
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

    .line 1370
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

    .line 1362
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

    .line 1363
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

    .line 1364
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

    .line 1365
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

    .line 1381
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

    .line 1382
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1383
    .local v4, "animatorSet":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_21

    .line 1384
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

    .line 1385
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_22

    .line 1386
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

    .line 1387
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_23

    .line 1388
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

    .line 1389
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

    .line 1390
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

    .line 1391
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

    .line 1392
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1394
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

    .line 1395
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

    .line 1396
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

    .line 1397
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

    .line 1398
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
    .line 1617
    return-void
.end method
