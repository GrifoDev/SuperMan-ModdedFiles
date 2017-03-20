.class public Lcom/android/incallui/fragment/VoiceCallCardFragment;
.super Lcom/android/incallui/fragment/CallCardFragment;
.source "VoiceCallCardFragment.java"

# interfaces
.implements Lcom/android/incallui/CallCardUi;


# static fields
.field private static final ANI_ACTIVE:I = 0x2

.field private static final ANI_END:I = 0x3

.field private static final ANI_HOLD:I = 0x1

.field private static final ANI_NONE:I = 0x0

.field private static final MAX_DIAMETER_FOR_INCOMING_PHOTO:I = 0x140

.field private static final SHOW_AM_VIEW:I = 0x96

.field private static final SHOW_AM_VIEW_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "VoiceCallCardFragment"


# instance fields
.field private mAMStub:Landroid/view/ViewStub;

.field private mActiveAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mCallerInfoCardStub:Landroid/view/ViewStub;

.field private mDimPanel:Landroid/view/View;

.field private mDummyPrimaryCallBanner:Landroid/view/View;

.field private mDummyPrimaryCallBannerStub:Landroid/view/ViewStub;

.field private mEndAnimatorSet:Landroid/animation/AnimatorSet;

.field private mHandler:Landroid/os/Handler;

.field private mHoldAnimatorSet:Landroid/animation/AnimatorSet;

.field private mIsMoveInfoAnimationRunning:Z

.field private mMoveInfoAnimator:Landroid/animation/ValueAnimator;

.field private mPrimaryCallInfoBannerContainer:Landroid/view/View;

.field private mPrimaryCallInfoDummy:Landroid/view/View;

.field private mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;-><init>()V

    .line 155
    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    .line 158
    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 167
    new-instance v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$1;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/fragment/VoiceCallCardFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsMoveInfoAnimationRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p1, "x1"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setViewStateBeforeOutgoingAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p1, "x1"    # Landroid/graphics/Point;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getRevealAnimator(Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/fragment/VoiceCallCardFragment;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getRevealViewsAnimator()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p1, "x1"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangeBelowButtonLayout(I)V

    return-void
.end method

.method private animateBannerForAnswer()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2078
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDummyPrimaryCallBanner:Landroid/view/View;

    if-nez v2, :cond_0

    .line 2079
    const-string v2, "VoiceCallCardFragment"

    const-string v3, "animateBannerForAnswer: mDummyPrimaryCallBanner is null"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2100
    :goto_0
    return-void

    .line 2082
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDummyPrimaryCallBanner:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 2083
    .local v0, "endHeight":I
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2084
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0285

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 2086
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2087
    .local v1, "shrinkAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/incallui/fragment/VoiceCallCardFragment$10;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$10;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2097
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2098
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v5, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2099
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private animateForEndCall()V
    .locals 10

    .prologue
    .line 2008
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2009
    const-string v5, "VoiceCallCardFragment"

    const-string v6, "animateForEndCall: running"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    :cond_0
    :goto_0
    return-void

    .line 2012
    :cond_1
    const-string v5, "VoiceCallCardFragment"

    const-string v6, "animateForEndCall..."

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/SystemServiceUtils;->boostCPU(Landroid/content/Context;)V

    .line 2014
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2015
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d002a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2016
    .local v2, "alphaDuration":I
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 2017
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 2018
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2019
    .local v1, "alphaAnimator":Landroid/animation/ObjectAnimator;
    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2020
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2022
    .end local v1    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    .line 2023
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-gtz v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    .line 2024
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-lez v5, :cond_5

    .line 2025
    :cond_4
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2026
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a01f7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0083

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    add-float/2addr v5, v6

    .line 2027
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0092

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v4, v5, v6

    .line 2028
    .local v4, "translationY":F
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    neg-float v9, v4

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2029
    .local v3, "moveAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d002c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2030
    new-instance v5, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v5}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2031
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2033
    .end local v3    # "moveAnimator":Landroid/animation/ObjectAnimator;
    .end local v4    # "translationY":F
    :cond_5
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 2034
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 2035
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 2036
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->animateForHideBackground()V

    goto/16 :goto_0

    .line 2018
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateForHoldCall(I)V
    .locals 12
    .param p1, "type"    # I

    .prologue
    const/16 v11, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1954
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 1955
    .local v1, "call":Lcom/android/incallui/Call;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string v6, "no_receiver_in_call"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2005
    :cond_1
    :goto_0
    return-void

    .line 1958
    :cond_2
    if-ne p1, v4, :cond_9

    .line 1959
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1961
    :cond_3
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1962
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->end()V

    .line 1964
    :cond_4
    const-string v6, "VoiceCallCardFragment"

    const-string v7, "animateForHoldCall"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1966
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1967
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1968
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1969
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1970
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v10, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1971
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d002a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1972
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    .line 1973
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-gtz v6, :cond_6

    :cond_5
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    .line 1974
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-lez v6, :cond_8

    .line 1975
    :cond_6
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1976
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01f7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0083

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    add-float/2addr v6, v7

    .line 1977
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0092

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v3, v6, v7

    .line 1978
    .local v3, "translationY":F
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v4, [F

    neg-float v9, v3

    aput v9, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1979
    .local v2, "moveAnimator":Landroid/animation/ObjectAnimator;
    new-instance v6, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1980
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1981
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v0, v7, v5

    aput-object v2, v7, v4

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1985
    .end local v2    # "moveAnimator":Landroid/animation/ObjectAnimator;
    .end local v3    # "translationY":F
    :goto_1
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 2004
    .end local v0    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    :cond_7
    :goto_2
    if-ne p1, v4, :cond_c

    :goto_3
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButtonMargin(Z)V

    goto/16 :goto_0

    .line 1983
    .restart local v0    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    :cond_8
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 1986
    .end local v0    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    :cond_9
    if-ne p1, v10, :cond_7

    .line 1987
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1989
    :cond_a
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1990
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->end()V

    .line 1992
    :cond_b
    const-string v6, "VoiceCallCardFragment"

    const-string v7, "animateForActiveCall"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1994
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v4, [F

    aput v9, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1995
    .restart local v2    # "moveAnimator":Landroid/animation/ObjectAnimator;
    new-instance v6, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1997
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v10, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1998
    .restart local v0    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1999
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v0, v7, v5

    aput-object v2, v7, v4

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2000
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2001
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 2002
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    .end local v0    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    .end local v2    # "moveAnimator":Landroid/animation/ObjectAnimator;
    :cond_c
    move v4, v5

    .line 2004
    goto/16 :goto_3

    .line 1970
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1997
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private animateForHoldPhoto(ZLcom/android/incallui/Call;I)V
    .locals 6
    .param p1, "isHold"    # Z
    .param p2, "call"    # Lcom/android/incallui/Call;
    .param p3, "state"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const v4, 0x7f0f007f

    .line 557
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsDefaultBizRingIcon:Z

    if-nez v1, :cond_2

    .line 558
    :cond_1
    if-eqz p1, :cond_3

    .line 559
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 560
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 586
    :cond_2
    :goto_0
    return-void

    .line 561
    :cond_3
    const/4 v1, 0x3

    if-ne p3, v1, :cond_4

    iget v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 562
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 564
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    .line 565
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 562
    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 566
    .local v0, "colorAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 567
    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$4;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 578
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 580
    .end local v0    # "colorAnimator":Landroid/animation/ValueAnimator;
    :cond_4
    invoke-static {p2}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 581
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 582
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private animateForMoveInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 1137
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsMoveInfoAnimationRunning:Z

    if-eqz v2, :cond_0

    .line 1138
    const-string v2, "VoiceCallCardFragment"

    const-string v3, "animateForMoveInfo: already running"

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1170
    :goto_0
    return-void

    .line 1141
    :cond_0
    iput-boolean v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsMoveInfoAnimationRunning:Z

    .line 1142
    const-string v2, "VoiceCallCardFragment"

    const-string v3, "animateForMoveInfo"

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1143
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 1144
    .local v1, "startHeight":I
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoBannerContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1145
    .local v0, "endHeight":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    aput v0, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    .line 1146
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/incallui/fragment/VoiceCallCardFragment$5;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$5;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1155
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/incallui/fragment/VoiceCallCardFragment$6;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$6;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1167
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1168
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v6, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1169
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private animateInfoCardForAnswer()V
    .locals 6

    .prologue
    .line 2103
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v1, :cond_0

    .line 2104
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2105
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2106
    new-instance v1, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2107
    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$11;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$11;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2114
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2116
    .end local v0    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method private arrangeBelowButtonLayout(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x3

    .line 1568
    const-string v0, "VoiceCallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arrangeBelowButtonLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isVideoState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1570
    if-ne p1, v3, :cond_0

    .line 1571
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showEndCallContactBtn()V

    .line 1572
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForEndCall()V

    .line 1590
    :cond_0
    :goto_0
    return-void

    .line 1575
    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1576
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForHoldCall(I)V

    goto :goto_0

    .line 1577
    :cond_3
    if-ne p1, v3, :cond_6

    .line 1578
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1579
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1583
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showEndCallContactBtn()V

    .line 1584
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForEndCall()V

    goto :goto_0

    .line 1580
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1581
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_1

    .line 1587
    :cond_6
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButton()V

    goto :goto_0
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1381
    if-nez p2, :cond_1

    .line 1390
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1383
    .local v0, "eventText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1384
    .local v1, "size":I
    invoke-virtual {p2, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1385
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1387
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1388
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;ZZ)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "state"    # I
    .param p2, "videoState"    # I
    .param p3, "sessionModificationState"    # I
    .param p4, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "isGatewayCall"    # Z
    .param p7, "isWorkCall"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1252
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1253
    :cond_0
    const-string v4, "VoiceCallCardFragment"

    const-string v5, "getCallStateLabelFromState getView() or context is empty: "

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const/4 v0, 0x0

    .line 1349
    :cond_1
    :goto_0
    :pswitch_0
    return-object v0

    .line 1256
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1257
    .local v1, "context":Landroid/content/Context;
    const/4 v0, 0x0

    .line 1259
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    if-eqz p5, :cond_4

    move v3, v4

    .line 1260
    .local v3, "isSpecialCall":Z
    :goto_1
    if-eqz v3, :cond_5

    if-nez p6, :cond_5

    move v2, v4

    .line 1261
    .local v2, "isAccount":Z
    :goto_2
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1262
    const/4 p1, 0x4

    .line 1265
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 1347
    :pswitch_1
    const-string v4, "VoiceCallCardFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCallStateWidgets: unexpected call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "isAccount":Z
    .end local v3    # "isSpecialCall":Z
    :cond_4
    move v3, v5

    .line 1259
    goto :goto_1

    .restart local v3    # "isSpecialCall":Z
    :cond_5
    move v2, v5

    .line 1260
    goto :goto_2

    .line 1272
    .restart local v2    # "isAccount":Z
    :pswitch_2
    if-eqz v2, :cond_6

    .line 1273
    move-object v0, p5

    goto :goto_0

    .line 1274
    :cond_6
    const/4 v6, 0x2

    if-ne p3, v6, :cond_7

    .line 1276
    const v4, 0x7f090024

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1277
    :cond_7
    if-ne p3, v4, :cond_8

    .line 1279
    const v4, 0x7f090025

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1281
    :cond_8
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1282
    const v6, 0x7f09045c

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1292
    :pswitch_3
    if-eqz v3, :cond_9

    .line 1293
    const v6, 0x7f090017

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p5, v7, v5

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1296
    :cond_9
    const-string v6, "spr_display_hd_icon"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1297
    const-string v0, ""

    goto/16 :goto_0

    .line 1298
    :cond_a
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1299
    const v6, 0x7f09045d

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1302
    :cond_b
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v0

    .line 1303
    const-string v4, "assisted_dialing_enable"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1304
    invoke-static {v1, v0}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getDialingLabelFromAssistedDialing(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 1308
    :pswitch_4
    const-string v4, "spr_display_hd_icon"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1309
    const-string v0, ""

    goto/16 :goto_0

    .line 1311
    :cond_c
    const v4, 0x7f090022

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1313
    goto/16 :goto_0

    .line 1316
    :pswitch_5
    if-eqz v2, :cond_d

    .line 1317
    const v6, 0x7f090038

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1321
    :cond_d
    const v4, 0x7f09001f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1323
    goto/16 :goto_0

    .line 1334
    :pswitch_6
    invoke-virtual {p4}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1336
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1337
    const v6, 0x7f0900cd

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1339
    :cond_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1340
    const v4, 0x7f090018

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1344
    :pswitch_7
    const v4, 0x7f09001b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1345
    goto/16 :goto_0

    .line 1265
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "canManageConference"    # Z

    .prologue
    .line 1235
    const-string v1, "VoiceCallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canManageConferencePhoto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    if-eqz p1, :cond_0

    const v0, 0x7f020128

    .line 1237
    .local v0, "resId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1236
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x7f02012c

    goto :goto_0
.end method

.method private getConferenceString(Z)Ljava/lang/String;
    .locals 4
    .param p1, "canManageConference"    # Z

    .prologue
    .line 1221
    const-string v1, "VoiceCallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canManageConferenceString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    const-string v1, "ims_voice_conference_vzw"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1224
    const-string v1, "VoiceCallCardFragment"

    const-string v2, "getConferenceString return null"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    const/4 v1, 0x0

    .line 1231
    :goto_0
    return-object v1

    .line 1230
    :cond_0
    const v0, 0x7f09001b

    .line 1231
    .local v0, "resId":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getRevealAnimator(Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 10
    .param p1, "touchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 1908
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1909
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    .line 1914
    .local v6, "view":Landroid/view/View;
    iget v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayWidth:I

    div-int/lit8 v3, v7, 0x2

    .line 1915
    .local v3, "startX":I
    iget v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    div-int/lit8 v4, v7, 0x2

    .line 1916
    .local v4, "startY":I
    if-eqz p1, :cond_0

    .line 1917
    iget v3, p1, Landroid/graphics/Point;->x:I

    .line 1918
    iget v4, p1, Landroid/graphics/Point;->y:I

    .line 1920
    :cond_0
    iget v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayWidth:I

    iget v8, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1921
    .local v2, "radius":I
    const/4 v7, 0x0

    int-to-float v8, v2

    invoke-static {v6, v3, v4, v7, v8}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v5

    .line 1925
    .local v5, "valueAnimator":Landroid/animation/Animator;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0054

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1926
    .local v1, "duration":I
    int-to-long v8, v1

    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1927
    new-instance v7, Lcom/android/incallui/fragment/VoiceCallCardFragment$9;

    invoke-direct {v7, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$9;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v5, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1933
    return-object v5
.end method

.method private getRevealViewsAnimator()Landroid/animation/Animator;
    .locals 7

    .prologue
    .line 1889
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 1904
    :goto_0
    return-object v0

    .line 1890
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1891
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1892
    .local v1, "duration":I
    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1893
    new-instance v2, Lcom/android/incallui/fragment/VoiceCallCardFragment$8;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$8;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private isEnabledEndCallContactButton()Z
    .locals 2

    .prologue
    .line 1719
    const/4 v0, 0x1

    .line 1720
    .local v0, "enabled":Z
    const-string v1, "support_twophone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1721
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isTwoPhoneUser(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1722
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isTwoPhoneUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1723
    :cond_1
    const/4 v0, 0x0

    .line 1726
    :cond_2
    return v0
.end method

.method private isLowQualityImage(Landroid/graphics/drawable/Drawable;)Z
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2149
    if-nez p1, :cond_1

    .line 2162
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return v3

    .line 2151
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2152
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2153
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2154
    .local v2, "imageMinLength":I
    const/16 v5, 0x140

    if-ge v2, v5, :cond_0

    .line 2155
    const-string v5, "VoiceCallCardFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isLowQualityImage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 2156
    goto :goto_0

    .line 2159
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "imageMinLength":I
    :catch_0
    move-exception v1

    .line 2160
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "VoiceCallCardFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLowQualityImage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isVideoState()Z
    .locals 5

    .prologue
    .line 2242
    const/4 v1, 0x0

    .line 2243
    .local v1, "hasVideoState":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2244
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 2245
    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    .line 2247
    :cond_0
    return v1
.end method

.method private manageCallStateFocusable(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1024
    :goto_0
    return-void

    .line 1019
    :cond_0
    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 1020
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_0

    .line 1022
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_0
.end method

.method private needToShowCallerInfoCardView(I)Z
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    .line 654
    iget-boolean v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    if-eqz v4, :cond_1

    .line 683
    :cond_0
    :goto_0
    return v3

    .line 655
    :cond_1
    const-string v4, "feature_dcm"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 656
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 657
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->getSugudenAnswerSetting(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 658
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SugudenGuideShowNeverAgain"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 661
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCallerInfoCardMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 663
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    .line 664
    invoke-virtual {v4}, Lcom/android/incallui/fragment/view/CallCardVolteView;->isShowEpdgNotifyBanner()Z

    move-result v4

    if-nez v4, :cond_0

    .line 666
    :cond_3
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 667
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 668
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_4

    .line 669
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 670
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_4

    iget v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 674
    .end local v1    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00e6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 675
    .local v2, "minHeightForCallerInfoCard":I
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 676
    iget v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    if-ge v4, v2, :cond_5

    iget v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    iget v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayWidth:I

    if-lt v4, v5, :cond_0

    .line 680
    :cond_5
    const/4 v4, 0x4

    if-eq p1, v4, :cond_6

    const/4 v4, 0x5

    if-ne p1, v4, :cond_0

    .line 681
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method private relayoutCallInfoContainer(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 11
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0xa

    const/16 v8, 0xd

    const/4 v7, -0x1

    .line 1425
    const/4 v1, 0x0

    .line 1426
    .local v1, "infoMarginBottom":I
    const/4 v2, 0x0

    .line 1428
    .local v2, "infoMarginTop":I
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    .line 1429
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1430
    .local v0, "infoLP":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1431
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1432
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1434
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 1435
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    :cond_0
    const/4 v3, 0x1

    .line 1436
    .local v3, "isLayoutForRinging":Z
    :goto_0
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v5

    or-int/2addr v3, v5

    .line 1437
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    .line 1439
    .local v4, "isMobileKeyboardCovered":Z
    if-eqz v3, :cond_5

    .line 1440
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/view/CallCardMcidView;->isPhotoringShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1441
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0509

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 1442
    invoke-virtual {v0, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1455
    :goto_1
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mTwoPhoneView:Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mTwoPhoneView:Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->isTwoPhoneTextVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1456
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02d3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v2, v5

    .line 1458
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    if-eqz v4, :cond_2

    .line 1460
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0093

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v2, v5

    .line 1462
    :cond_2
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1463
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1464
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1465
    return-void

    .line 1435
    .end local v3    # "isLayoutForRinging":Z
    .end local v4    # "isMobileKeyboardCovered":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 1444
    .restart local v3    # "isLayoutForRinging":Z
    .restart local v4    # "isMobileKeyboardCovered":Z
    :cond_4
    invoke-virtual {v0, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 1447
    :cond_5
    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->isEriInfoTextVisible()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1448
    invoke-virtual {v0, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1449
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a028a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    goto :goto_1

    .line 1451
    :cond_6
    invoke-virtual {v0, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1
.end method

.method private relayoutNameNumberTextView(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 15
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 1468
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-nez v11, :cond_1

    .line 1529
    :cond_0
    :goto_0
    return-void

    .line 1470
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    .line 1471
    .local v0, "isMobileKeyboardCovered":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    const/4 v12, 0x4

    if-eq v11, v12, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_9

    :cond_2
    const/4 v4, 0x1

    .line 1472
    .local v4, "isRinging":Z
    :goto_1
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_a

    const/4 v3, 0x1

    .line 1473
    .local v3, "isPhotoVisible":Z
    :goto_2
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_b

    const/4 v2, 0x1

    .line 1474
    .local v2, "isPhotoInvisible":Z
    :goto_3
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_c

    :cond_3
    const/4 v1, 0x1

    .line 1476
    .local v1, "isPhotoGone":Z
    :goto_4
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a00b7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1478
    const/4 v10, 0x0

    .line 1479
    .local v10, "nameTextSize":F
    const/4 v8, 0x0

    .line 1481
    .local v8, "nameSpamTextSize":F
    const/4 v7, 0x0

    .line 1482
    .local v7, "nameMarginTop":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0086

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    .line 1483
    .local v6, "nameMarginSide":I
    const/4 v9, 0x0

    .line 1485
    .local v9, "nameTextLength":I
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    .line 1487
    const-string v11, "feature_multisim"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1488
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a011a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    .line 1490
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1491
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a011c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-virtual {p0, v11, v12}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryNameSize(Ljava/lang/String;F)F

    move-result v10

    .line 1507
    :cond_5
    :goto_5
    if-eqz v0, :cond_7

    .line 1508
    const/4 v7, 0x0

    .line 1509
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0290

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-virtual {p0, v11, v12}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryNameSize(Ljava/lang/String;F)F

    move-result v10

    .line 1510
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getVisibility()I

    move-result v11

    if-nez v11, :cond_7

    .line 1511
    :cond_6
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0287

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1512
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0287

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1513
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a032f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 1516
    :cond_7
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1517
    .local v5, "nameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    if-eqz v11, :cond_8

    .line 1518
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .end local v5    # "nameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1520
    .restart local v5    # "nameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_8
    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1521
    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1522
    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1523
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    if-eqz v11, :cond_11

    .line 1524
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v11, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1528
    :goto_6
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    .line 1471
    .end local v1    # "isPhotoGone":Z
    .end local v2    # "isPhotoInvisible":Z
    .end local v3    # "isPhotoVisible":Z
    .end local v4    # "isRinging":Z
    .end local v5    # "nameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "nameMarginSide":I
    .end local v7    # "nameMarginTop":I
    .end local v8    # "nameSpamTextSize":F
    .end local v9    # "nameTextLength":I
    .end local v10    # "nameTextSize":F
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1472
    .restart local v4    # "isRinging":Z
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1473
    .restart local v3    # "isPhotoVisible":Z
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1474
    .restart local v2    # "isPhotoInvisible":Z
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 1492
    .restart local v1    # "isPhotoGone":Z
    .restart local v6    # "nameMarginSide":I
    .restart local v7    # "nameMarginTop":I
    .restart local v8    # "nameSpamTextSize":F
    .restart local v9    # "nameTextLength":I
    .restart local v10    # "nameTextSize":F
    :cond_d
    if-nez v3, :cond_e

    if-eqz v2, :cond_f

    .line 1493
    :cond_e
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a008d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    goto/16 :goto_5

    .line 1494
    :cond_f
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_10

    .line 1495
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a011c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-virtual {p0, v11, v12}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryNameSize(Ljava/lang/String;F)F

    move-result v10

    .line 1496
    if-eqz v1, :cond_5

    .line 1497
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v11}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isRichScreen()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1498
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v12, 0x1

    .line 1499
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a055a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    .line 1500
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v14

    div-float/2addr v13, v14

    .line 1501
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v14

    mul-float/2addr v13, v14

    .line 1498
    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_5

    .line 1505
    :cond_10
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0088

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-virtual {p0, v11, v12}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryNameSize(Ljava/lang/String;F)F

    move-result v10

    goto/16 :goto_5

    .line 1526
    .restart local v5    # "nameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_11
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6
.end method

.method private setBizRingVisibility(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 588
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizOutgoing:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 589
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizIncoming:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 591
    return-void

    :cond_0
    move v0, v2

    .line 588
    goto :goto_0

    :cond_1
    move v0, v2

    .line 589
    goto :goto_1

    :cond_2
    move v1, v2

    .line 590
    goto :goto_2
.end method

.method private setCallCardPriority(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 2395
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2396
    :cond_1
    const-string v1, "animation is running, return setCallCardPriority"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2492
    :cond_2
    :goto_0
    return-void

    .line 2400
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 2404
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2405
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/ViewTreeObserver;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private setCallerInfoCardView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 695
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 696
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->needToShowCallerInfoCardView(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 698
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    .line 699
    .local v4, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v4, :cond_0

    iget-boolean v6, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryCompleted:Z

    if-eqz v6, :cond_0

    .line 700
    const-string v6, "VoiceCallCardFragment"

    const-string v7, "- queryCompleted"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->inflateCallerInfoCardView()V

    .line 702
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v6, :cond_0

    .line 703
    const-string v6, "VoiceCallCardFragment"

    const-string v7, "setCallerInfoCardView: update"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v8, v4, v8}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->update(Landroid/content/Context;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 706
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 707
    .local v5, "number":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v3

    .line 708
    .local v3, "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    if-eqz v3, :cond_2

    .line 709
    iget-object v6, v3, Lcom/android/incallui/coreapps/CoreAppsContact;->status:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 710
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iget-object v7, v3, Lcom/android/incallui/coreapps/CoreAppsContact;->status:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setProfileContent(Ljava/lang/String;)V

    .line 713
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0078

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 714
    .local v2, "callerInfoCardMarginTop":I
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 715
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0288

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 717
    :cond_3
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    .line 718
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8, v8}, Landroid/view/ViewGroup;->measure(II)V

    .line 719
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    .line 721
    :cond_4
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 722
    .local v1, "callerInfoCardLP":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 723
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v6, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 724
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v6, v8}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    goto/16 :goto_0

    .line 728
    .end local v1    # "callerInfoCardLP":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "callerInfoCardMarginTop":I
    .end local v3    # "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    .end local v4    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v5    # "number":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z
    .locals 4
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1070
    if-nez p1, :cond_0

    .line 1076
    :goto_0
    return v0

    .line 1073
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1074
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1075
    const-string v0, "VoiceCallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDrawableToImageView "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    .line 1076
    goto :goto_0
.end method

.method private setPrimaryBizImage(ZI)V
    .locals 12
    .param p1, "isPersonalPhotoAvailable"    # Z
    .param p2, "state"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 495
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizIncoming:Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizOutgoing:Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    if-nez v7, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-virtual {v7}, Lcom/android/incallui/fragment/view/CallCardMcidView;->isPhotoringShowing()Z

    move-result v7

    if-nez v7, :cond_0

    .line 499
    :cond_2
    const-string v7, "VoiceCallCardFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setPrimaryBizImage: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-static {p2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {p2}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 501
    :cond_3
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 502
    :cond_4
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 503
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a038c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 504
    .local v2, "arcSize":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v6, v7, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getRoundRectDrawableForBizRing(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 505
    invoke-static {p2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 506
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizOutgoing:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v6, v7}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    .line 507
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizIncoming:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 513
    .end local v2    # "arcSize":I
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    :goto_2
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 553
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 508
    .restart local v2    # "arcSize":I
    :cond_6
    invoke-static {p2}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 509
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizIncoming:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v6, v7}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    .line 510
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizOutgoing:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 515
    .end local v2    # "arcSize":I
    :cond_7
    const/4 v7, 0x3

    if-ne p2, v7, :cond_8

    iget v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_8

    .line 516
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 517
    .local v1, "aniSet":Landroid/animation/AnimatorSet;
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizIncoming:Landroid/widget/ImageView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 518
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 519
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 520
    new-instance v7, Lcom/android/incallui/fragment/VoiceCallCardFragment$3;

    invoke-direct {v7, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$3;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 526
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 528
    .end local v0    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    .end local v1    # "aniSet":Landroid/animation/AnimatorSet;
    :cond_8
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 529
    :cond_9
    iget-boolean v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsDefaultBizRingIcon:Z

    if-eqz v7, :cond_d

    .line 530
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    const v8, 0x106000d

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 531
    const/16 v7, 0xa

    if-ne p2, v7, :cond_c

    .line 532
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 540
    :goto_3
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 541
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0346

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    .line 542
    .local v4, "diameter":I
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v7, v8, v4}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 543
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v7, v8}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    .line 544
    if-ne p2, v10, :cond_e

    const/4 v5, 0x1

    .line 545
    .local v5, "isHold":Z
    :goto_4
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v5, 0x0

    .line 546
    :cond_a
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-static {v7, v11, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    .line 547
    .local v3, "call":Lcom/android/incallui/Call;
    invoke-direct {p0, v5, v3, p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForHoldPhoto(ZLcom/android/incallui/Call;I)V

    .line 549
    .end local v3    # "call":Lcom/android/incallui/Call;
    .end local v4    # "diameter":I
    .end local v5    # "isHold":Z
    :cond_b
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizIncoming:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 550
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizOutgoing:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 534
    :cond_c
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0150

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_3

    .line 537
    :cond_d
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0201dc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 538
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    .restart local v4    # "diameter":I
    :cond_e
    move v5, v6

    .line 544
    goto :goto_4

    .line 517
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setPrimaryCallMoreMenu()V
    .locals 2

    .prologue
    .line 1062
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->needToShowMenu()Z

    move-result v0

    .line 1063
    .local v0, "needToShowMenu":Z
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showMenu(Z)V

    .line 1064
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1065
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallActivity;->setPrimaryCallMenuForDialpad(Z)V

    .line 1067
    :cond_0
    return-void
.end method

.method private setViewStateBeforeOutgoingAnimation()V
    .locals 3

    .prologue
    .line 1879
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1880
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1881
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 1882
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1883
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/CallButtonUi;->setViewStateBeforeOutgoingAnimation()V

    .line 1886
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_1
    return-void
.end method

.method private showEndCallContactBtn()V
    .locals 9

    .prologue
    const v8, 0x7f09029d

    const v7, 0x7f090251

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 1668
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-nez v3, :cond_1

    .line 1716
    :cond_0
    :goto_0
    return-void

    .line 1671
    :cond_1
    const/16 v3, 0x40

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1672
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1673
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1678
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1679
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1681
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    .line 1682
    .local v2, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v2, :cond_0

    .line 1683
    iget-boolean v1, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    .line 1684
    .local v1, "contactExists":Z
    const-string v3, "support_twophone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1685
    iget-boolean v1, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->canViewContactDetails:Z

    .line 1687
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/incallui/util/InCallUtils;->isShowContactMenu(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1688
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1689
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1693
    :cond_4
    if-nez v1, :cond_6

    .line 1694
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    .line 1695
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1694
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1696
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    .line 1697
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1696
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1704
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v3, :cond_5

    .line 1705
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1707
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1708
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableIMSConferenceInfo()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1709
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 1699
    :cond_6
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    .line 1700
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1699
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1701
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    .line 1702
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1701
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1711
    :cond_7
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1712
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isEnabledEndCallContactButton()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private showOnHoldText(Z)V
    .locals 4
    .param p1, "isHold"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1003
    if-eqz p1, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1005
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1006
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05001f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1007
    .local v0, "startAnimation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1013
    .end local v0    # "startAnimation":Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 1009
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1010
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1011
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private switchToVideoCallClicked()V
    .locals 1

    .prologue
    .line 2141
    invoke-static {}, Lcom/android/incallui/util/BatteryUtils;->isLowBatt()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/BatteryUtils;->isCriticalLowBatt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2142
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/BatteryUtils;->isCriticalLowBatt()Z

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/BatteryUtils;->showLowBattToast(Z)V

    .line 2146
    :goto_0
    return-void

    .line 2144
    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto :goto_0
.end method

.method private updateBelowButton()V
    .locals 11

    .prologue
    const v10, 0x7f0a0083

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v8, 0x8

    .line 1593
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1594
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 1652
    :cond_0
    :goto_0
    return-void

    .line 1596
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 1597
    .local v1, "state":I
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1598
    :cond_3
    const/4 v5, 0x4

    if-ne v1, v5, :cond_0

    .line 1599
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->end()V

    .line 1600
    :cond_4
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->end()V

    .line 1605
    :cond_5
    const-string v5, "VoiceCallCardFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateBelowButton: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    invoke-static {v1}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1607
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1608
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->end()V

    .line 1610
    :cond_6
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1611
    :cond_7
    if-ne v1, v8, :cond_c

    const-string v5, "no_receiver_in_call"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1612
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    .line 1613
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-gtz v5, :cond_9

    :cond_8
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    .line 1614
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-lez v5, :cond_a

    .line 1615
    :cond_9
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v5

    if-nez v5, :cond_a

    .line 1616
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a01f7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    add-float/2addr v5, v6

    .line 1617
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0092

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v5, v6

    div-float v2, v5, v9

    .line 1618
    .local v2, "translationY":F
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    neg-float v6, v2

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1620
    .end local v2    # "translationY":F
    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1621
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_b

    .line 1622
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1623
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1624
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1635
    :cond_b
    :goto_1
    if-ne v1, v8, :cond_d

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButtonMargin(Z)V

    goto/16 :goto_0

    .line 1628
    :cond_c
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1629
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    .line 1630
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getVisibility()I

    move-result v5

    if-nez v5, :cond_b

    .line 1631
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1632
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_d
    move v3, v4

    .line 1635
    goto :goto_2

    .line 1636
    :cond_e
    const/4 v3, 0x2

    if-ne v1, v3, :cond_11

    .line 1637
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1638
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 1640
    :cond_f
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1641
    :cond_10
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButtonMargin(Z)V

    goto/16 :goto_0

    .line 1642
    :cond_11
    const/16 v3, 0xa

    if-ne v1, v3, :cond_0

    .line 1643
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    .line 1644
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-gtz v3, :cond_13

    :cond_12
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    .line 1645
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    .line 1646
    :cond_13
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1647
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v3, v4

    .line 1648
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0092

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    div-float v2, v3, v9

    .line 1649
    .restart local v2    # "translationY":F
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    neg-float v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_0
.end method

.method private updateBelowButtonMargin(Z)V
    .locals 3
    .param p1, "isHold"    # Z

    .prologue
    const v2, 0x7f0a0083

    .line 1655
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1656
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1657
    .local v0, "buttonLP":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1658
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1663
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1665
    .end local v0    # "buttonLP":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    return-void

    .line 1661
    .restart local v0    # "buttonLP":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method private updateCallStateLabelForCallState(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "callStateLabel"    # Ljava/lang/CharSequence;
    .param p3, "connectionIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 2181
    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    .line 2182
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2234
    :goto_0
    return-void

    .line 2186
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isVideoState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2187
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2188
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallElapsedTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    .line 2192
    :cond_1
    iput-object p2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    .line 2193
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->manageCallEndTimeBlink(I)V

    .line 2194
    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    .line 2195
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->removeMessageForBlinkTime()V

    .line 2197
    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    .line 2198
    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 2199
    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    .line 2204
    :cond_3
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2205
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2206
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "not update stateLabel for blink call time"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    :goto_2
    if-eqz p3, :cond_4

    const-string v0, "feature_multisim"

    .line 2213
    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2214
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2201
    :cond_5
    iget-object p2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    goto :goto_1

    .line 2208
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2209
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2210
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 2216
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2219
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2220
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2223
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2224
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "not update stateLabel for blink call time"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    :goto_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2232
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2226
    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2227
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private updatePanelForCallState(I)V
    .locals 9
    .param p1, "state"    # I

    .prologue
    const/16 v8, 0xd

    const/4 v7, 0x6

    const/4 v6, 0x1

    .line 1080
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1081
    const-string v4, "VoiceCallCardFragment"

    const-string v5, "activity is null"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1084
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1085
    const-string v4, "VoiceCallCardFragment"

    const-string v5, "fragment is detached from activity, return"

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1088
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1089
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1093
    :cond_3
    iget-boolean v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsMoveInfoAnimationRunning:Z

    if-eqz v4, :cond_4

    .line 1094
    const-string v4, "VoiceCallCardFragment"

    const-string v5, "updatePanelForCallState: animation is running"

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1097
    :cond_4
    const/4 v2, -0x1

    .line 1098
    .local v2, "height":I
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1099
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1100
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0285

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 1103
    :cond_5
    const/4 v4, 0x4

    if-eq p1, v4, :cond_6

    const/4 v4, 0x5

    if-eq p1, v4, :cond_6

    .line 1104
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1105
    :cond_6
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1106
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0286

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 1110
    :goto_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1111
    iget v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    div-int/lit8 v2, v4, 0x2

    .line 1127
    :cond_7
    :goto_2
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1128
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1129
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 1132
    :cond_8
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1133
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1108
    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0085

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto :goto_1

    .line 1113
    :cond_a
    iget v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    if-eq v4, v8, :cond_b

    iget v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    if-ne v4, v7, :cond_d

    :cond_b
    const/4 v4, 0x3

    if-eq p1, v4, :cond_c

    const/16 v4, 0x9

    if-eq p1, v4, :cond_c

    const/16 v4, 0xa

    if-ne p1, v4, :cond_d

    .line 1115
    :cond_c
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForMoveInfo()V

    goto/16 :goto_0

    .line 1117
    :cond_d
    if-eq p1, v8, :cond_e

    if-ne p1, v7, :cond_7

    .line 1118
    :cond_e
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1119
    iget v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    int-to-double v4, v4

    const-wide v6, 0x3fdccccccccccccdL    # 0.45

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 1120
    .local v1, "dial_height":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 1121
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 1122
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/incallui/CallButtonUi;->getUpperViewMarginTop()I

    move-result v4

    add-int/2addr v1, v4

    .line 1124
    :cond_f
    move v2, v1

    goto :goto_2
.end method

.method private updatePhotoViewForCallState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 1173
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1174
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 1218
    :cond_0
    :goto_0
    return-void

    .line 1175
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1176
    :cond_2
    const-string v2, "VoiceCallCardFragment"

    const-string v3, "updatePhotoViewForCallState getView() or context is empty: "

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1180
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 1181
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_0

    .line 1183
    iget v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    if-eq v2, p1, :cond_0

    .line 1185
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1192
    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 1193
    const/16 v2, 0xa

    if-ne p1, v2, :cond_b

    .line 1194
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f014f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1199
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 1200
    iget-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-direct {p0, v2, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryBizImage(ZI)V

    .line 1202
    :cond_6
    iget v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_7

    .line 1204
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1205
    :cond_7
    iget-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-eqz v2, :cond_0

    .line 1206
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1207
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v0}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1208
    :cond_8
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v5}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 1209
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1210
    invoke-direct {p0, v5}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setBizRingVisibility(Z)V

    goto/16 :goto_0

    .line 1187
    :cond_9
    iget v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    if-eq v2, v4, :cond_a

    if-ne p1, v4, :cond_4

    .line 1188
    :cond_a
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    .line 1189
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1

    .line 1196
    :cond_b
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_2

    .line 1213
    :cond_c
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 3

    .prologue
    .line 2063
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 2075
    :cond_0
    :goto_0
    return-void

    .line 2064
    :cond_1
    iget-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2065
    :cond_2
    const-string v1, "VoiceCallCardFragment"

    const-string v2, "animateForAnswerCall...already running"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2068
    :cond_3
    const-string v1, "VoiceCallCardFragment"

    const-string v2, "animateForAnswerCall"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    .line 2070
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateBannerForAnswer()V

    .line 2071
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateInfoCardForAnswer()V

    .line 2072
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;

    .line 2073
    .local v0, "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    invoke-interface {v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->animateForAnswerCall()V

    goto :goto_1
.end method

.method public animateForMoveDialpad(Z)V
    .locals 0
    .param p1, "showDialpad"    # Z

    .prologue
    .line 2131
    return-void
.end method

.method public animateForNewOutgoingCall(Landroid/graphics/Point;)V
    .locals 4
    .param p1, "touchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 1832
    const-string v2, "VoiceCallCardFragment"

    const-string v3, "animateForNewOutgoingCall..."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsOutgoingAnimationRunning:Z

    .line 1834
    move-object v1, p1

    .line 1836
    .local v1, "startPoint":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1872
    :goto_0
    return-void

    .line 1838
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1839
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;

    invoke-direct {v2, p0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/graphics/Point;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public animateRevealForNewOutgoingCall()V
    .locals 0

    .prologue
    .line 1876
    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 6

    .prologue
    .line 1532
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 1533
    .local v1, "call":Lcom/android/incallui/Call;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1565
    :cond_0
    :goto_0
    return-void

    .line 1534
    :cond_1
    const-string v3, "VoiceCallCardFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrangePrimaryLayout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    invoke-static {v5}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1536
    const-string v3, "VoiceCallCardFragment"

    const-string v4, "activity is null"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1540
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isVideoState()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1541
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 1542
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateTextColor(I)V

    .line 1549
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    .line 1550
    .local v2, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-nez v2, :cond_5

    .line 1551
    const-string v3, "VoiceCallCardFragment"

    const-string v4, "entry is null"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1545
    .end local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_4
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateTextColor(I)V

    goto :goto_1

    .line 1554
    .restart local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_5
    iget-boolean v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    if-eqz v3, :cond_6

    .line 1555
    const-string v3, "VoiceCallCardFragment"

    const-string v4, "arrangePrimaryLayout: mIsAnswerProcessing"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1559
    :cond_6
    invoke-direct {p0, v1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->relayoutCallInfoContainer(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 1560
    invoke-direct {p0, v1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->relayoutNameNumberTextView(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 1562
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;

    .line 1563
    .local v0, "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    invoke-interface {v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->arrangePrimaryLayout()V

    goto :goto_2
.end method

.method public changeCallCardForAM(I)V
    .locals 0
    .param p1, "callState"    # I

    .prologue
    .line 2237
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    .line 2238
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    .line 2239
    return-void
.end method

.method public changeViewForMoveDialpad(Z)V
    .locals 2
    .param p1, "showDialpad"    # Z

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2138
    :goto_0
    return-void

    .line 2136
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2137
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2136
    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1

    .line 2137
    :cond_2
    const/16 v0, 0x8

    goto :goto_2
.end method

.method public clearAMView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2286
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "clearAMView"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2288
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2289
    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v5, 0x1

    .line 1353
    const-string v2, "VoiceCallCardFragment"

    const-string v3, "dispatchPopulateAccessibilityEvent"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1354
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_4

    .line 1355
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1356
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    .line 1357
    .local v1, "mState":Landroid/widget/TextView;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1358
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 1359
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1360
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09045d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1365
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1369
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "mState":Landroid/widget/TextView;
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1370
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1377
    :goto_2
    return v5

    .line 1362
    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v1    # "mState":Landroid/widget/TextView;
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1367
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "mState":Landroid/widget/TextView;
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_1

    .line 1373
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1374
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1375
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_2
.end method

.method public getCallerInfoView()Lcom/android/incallui/fragment/view/CallCardCallerInfoView;
    .locals 1

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    return-object v0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    .line 1783
    new-instance v0, Lcom/android/incallui/InCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    .line 1785
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getMenuRes()I
    .locals 1

    .prologue
    .line 1790
    const-string v0, "support_folder_single_lcd"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1791
    const v0, 0x7f120002

    .line 1792
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f120001

    goto :goto_0
.end method

.method public inflateCallerInfoCardView()V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10034c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardStub:Landroid/view/ViewStub;

    .line 689
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 690
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    .line 692
    :cond_0
    return-void
.end method

.method protected inflateRecordInfo()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    .line 340
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 342
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100253

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordIcon:Landroid/widget/ImageView;

    .line 343
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100254

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordText:Landroid/widget/TextView;

    .line 344
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100217

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    .line 345
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100255

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    .line 346
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$2;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    .line 355
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isElapsedTimeCTCVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    :cond_0
    return-void
.end method

.method public needToShowMenu()Z
    .locals 3

    .prologue
    .line 1805
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->needToShowMenu()Z

    move-result v0

    .line 1806
    .local v0, "bShowMenu":Z
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1807
    const-string v1, "VoiceCallCardFragment"

    const-string v2, "Bike mode call is showing, needToShowMenu : false"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    const/4 v1, 0x0

    .line 1820
    :goto_0
    return v1

    .line 1810
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isCdmaMultipartyBtnVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1811
    const/4 v0, 0x0

    .line 1812
    const-string v1, "VoiceCallCardFragment"

    const-string v2, "mCdmaMultipartyBtn is showing, needToShowMenu : false"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSetupWizardComplete()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1816
    const/4 v0, 0x0

    .line 1817
    const-string v1, "VoiceCallCardFragment"

    const-string v2, "isSetupWizardComplete : false"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v1, v0

    .line 1820
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v6, 0x7f090094

    const/4 v5, 0x0

    .line 1731
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1732
    .local v1, "id":I
    const-string v2, "VoiceCallCardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick(View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1734
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 1778
    :cond_0
    :goto_0
    return-void

    .line 1735
    :cond_1
    sparse-switch v1, :sswitch_data_0

    .line 1774
    const-string v2, "VoiceCallCardFragment"

    const-string v3, "onClick: call super onClick"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 1737
    :sswitch_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09029d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1738
    invoke-static {v0}, Lcom/android/incallui/util/CommonAppLogging;->endCall_viewContact(Lcom/android/incallui/Call;)V

    .line 1739
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isContactsApplicationEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1740
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 1741
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1743
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->viewContactClicked()V

    goto :goto_0

    .line 1746
    :cond_3
    invoke-static {v0}, Lcom/android/incallui/util/CommonAppLogging;->endCall_addToContact(Lcom/android/incallui/Call;)V

    .line 1747
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isContactsApplicationEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1748
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 1749
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1751
    :cond_4
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->addToContactClicked()V

    goto :goto_0

    .line 1756
    :sswitch_1
    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_resumeCall(Lcom/android/incallui/Call;)V

    .line 1757
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 1758
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto :goto_0

    .line 1763
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.incallui"

    const-string v4, "VOCB"

    const-string v5, "VOCS"

    invoke-static {v2, v3, v4, v5}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    const-string v2, "VoiceCallCardFragment"

    const-string v3, "onClick switch video Button was clicked"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->switchToVideoCallClicked()V

    .line 1769
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1770
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    goto/16 :goto_0

    .line 1735
    :sswitch_data_0
    .sparse-switch
        0x7f1002f7 -> :sswitch_1
        0x7f100325 -> :sswitch_0
        0x7f10032b -> :sswitch_2
        0x7f10041b -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 2354
    const-string v3, "VoiceCallCardFragment"

    const-string v4, "onConfigurationChanged"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2355
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2357
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2358
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    .line 2360
    .local v1, "isHold":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDisplaySize()V

    .line 2361
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 2362
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    .line 2363
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallerInfoCardView()V

    .line 2369
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateEri()V

    .line 2370
    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButtonMargin(Z)V

    .line 2371
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    .line 2372
    return-void

    .end local v1    # "isHold":Z
    :cond_0
    move v1, v2

    .line 2358
    goto :goto_0

    .line 2364
    .restart local v1    # "isHold":Z
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_3

    .line 2365
    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    goto :goto_1

    .line 2367
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallCardPriority(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 188
    new-instance v0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    .line 189
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v0, Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    .line 191
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    .line 193
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    .line 195
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v0, Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardMcidView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    .line 197
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardCallPlusView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallPlusView:Lcom/android/incallui/fragment/view/CallCardCallPlusView;

    .line 199
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallPlusView:Lcom/android/incallui/fragment/view/CallCardCallPlusView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSmartCallView:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    .line 201
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSmartCallView:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mTwoPhoneView:Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    .line 203
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mTwoPhoneView:Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v0, Lcom/android/incallui/fragment/view/CallCardSugudenView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardSugudenView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSugudenView:Lcom/android/incallui/fragment/view/CallCardSugudenView;

    .line 205
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSugudenView:Lcom/android/incallui/fragment/view/CallCardSugudenView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v0, Lcom/android/incallui/fragment/view/CallCardJanskyView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardJanskyView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mJanskyView:Lcom/android/incallui/fragment/view/CallCardJanskyView;

    .line 207
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mJanskyView:Lcom/android/incallui/fragment/view/CallCardJanskyView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 213
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/CallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 214
    const v0, 0x7f04016a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 374
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "onDestroy..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 376
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onDestroy()V

    .line 377
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 381
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "onDestroyView..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 385
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->clear()V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->onDestroyView()V

    .line 395
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->onDestroyView()V

    .line 396
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->onDestroyView()V

    .line 398
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onDestroyView()V

    .line 399
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1419
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onPause()V

    .line 1421
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0, p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->onPause(Lcom/android/incallui/fragment/CallCardFragment;)V

    .line 1422
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1394
    const-string v1, "VoiceCallCardFragment"

    const-string v2, "onResume "

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1395
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onResume()V

    .line 1398
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1399
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1400
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1401
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x96

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1408
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;

    .line 1409
    .local v0, "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    invoke-interface {v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->onResume()V

    goto :goto_1

    .line 1403
    .end local v0    # "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setAMView(Z)V

    goto :goto_0

    .line 1411
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateCallCardIndicatorArea()V

    .line 1412
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    .line 1413
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDisplaySize()V

    .line 1414
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallCardPriority(I)V

    .line 1415
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 369
    :cond_0
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onStop()V

    .line 370
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f0a01fa

    const v10, 0x7f0a008c

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 219
    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/CallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 221
    const v4, 0x7f100246

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    .line 222
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateCallCardIndicatorArea()V

    .line 223
    const v4, 0x7f100289

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNavigationBarArea:Landroid/view/View;

    .line 224
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateNavigationBar()V

    .line 225
    const v4, 0x7f100306

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryContainer:Landroid/view/View;

    .line 226
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f1001dc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    .line 227
    const v4, 0x7f100198

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    .line 228
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 229
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    .line 230
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 231
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v6

    div-float/2addr v5, v6

    .line 232
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v6

    mul-float/2addr v5, v6

    .line 229
    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 233
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 235
    :cond_0
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    .line 236
    const v4, 0x7f1000e9

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    .line 237
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 238
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    .line 239
    const v4, 0x7f10010e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    .line 240
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 241
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    .line 242
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 243
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v6

    div-float/2addr v5, v6

    .line 244
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v6

    mul-float/2addr v5, v6

    .line 241
    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 246
    :cond_1
    const v4, 0x7f1001da

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    .line 247
    const v4, 0x7f1000a5

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    .line 248
    const v4, 0x7f100310

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizIncoming:Landroid/widget/ImageView;

    .line 249
    const v4, 0x7f100311

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizOutgoing:Landroid/widget/ImageView;

    .line 250
    const v4, 0x7f100312

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    .line 252
    const v4, 0x7f100191

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    .line 253
    const v4, 0x7f10019b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    .line 254
    const v4, 0x7f100193

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    .line 255
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 256
    const v4, 0x7f100197

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    .line 257
    const v4, 0x7f10031a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabelDummy:Landroid/view/View;

    .line 258
    const v4, 0x7f100199

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    .line 259
    const v4, 0x7f10025f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    .line 260
    const v4, 0x7f1002db

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    .line 262
    const v4, 0x7f1000a2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    .line 263
    const v4, 0x7f100415

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoBannerContainer:Landroid/view/View;

    .line 264
    const v4, 0x7f100416

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoDummy:Landroid/view/View;

    .line 265
    const v4, 0x7f10018c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 271
    const v4, 0x7f1001d7

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateContainer:Landroid/view/View;

    .line 272
    const v4, 0x7f100248

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    .line 274
    const v4, 0x7f1002f6

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    .line 275
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 276
    const v4, 0x7f100325

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    .line 277
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v4, :cond_2

    .line 278
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    .line 280
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    .line 281
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 282
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v6

    div-float/2addr v5, v6

    .line 283
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v6

    mul-float/2addr v5, v6

    .line 280
    invoke-virtual {v4, v7, v5}, Landroid/widget/Button;->setTextSize(IF)V

    .line 285
    :cond_2
    const-string v4, "no_receiver_in_call"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 286
    const v4, 0x7f1002f7

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    .line 287
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v4, :cond_3

    .line 288
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    .line 290
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    .line 291
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 292
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v6

    div-float/2addr v5, v6

    .line 293
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v6

    mul-float/2addr v5, v6

    .line 290
    invoke-virtual {v4, v7, v5}, Landroid/widget/Button;->setTextSize(IF)V

    .line 297
    :cond_3
    const v4, 0x7f10031b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    .line 298
    const v4, 0x7f100322

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    .line 299
    const v4, 0x7f100323

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    .line 301
    const-string v4, "voice_call_recording"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 302
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v3

    .line 303
    .local v3, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v3, :cond_4

    .line 304
    invoke-virtual {v3}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    .line 307
    :cond_4
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 308
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 309
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v1

    .line 310
    .local v1, "ansMemoRecorderMgr":Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    if-eqz v1, :cond_5

    .line 311
    invoke-virtual {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->onAMRecorderStateChanged()V

    .line 319
    .end local v1    # "ansMemoRecorderMgr":Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    .end local v3    # "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    :cond_5
    const v4, 0x7f100304

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMultiTouchDummyStub:Landroid/view/ViewStub;

    .line 321
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 322
    const v4, 0x7f100417

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDummyPrimaryCallBannerStub:Landroid/view/ViewStub;

    .line 323
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDummyPrimaryCallBannerStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 324
    const v4, 0x7f100112

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDummyPrimaryCallBanner:Landroid/view/View;

    .line 325
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 326
    const v4, 0x7f100113

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 327
    .local v2, "navigationBar":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 331
    .end local v2    # "navigationBar":Landroid/view/View;
    :cond_6
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;

    .line 332
    .local v0, "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    invoke-interface {v0, p1}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->onViewCreated(Landroid/view/View;)V

    goto :goto_0

    .line 334
    .end local v0    # "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    .line 335
    return-void
.end method

.method public resetAnswerCallAnimator()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2042
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2043
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2059
    :cond_0
    :goto_0
    return-void

    .line 2044
    :cond_1
    const-string v4, "VoiceCallCardFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetAnswerCallAnimator: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2046
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->end()V

    .line 2048
    :cond_2
    iput-boolean v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    .line 2049
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    .line 2051
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 2052
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_3

    .line 2053
    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v5, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v4, v5}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 2055
    :cond_3
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v4, :cond_0

    .line 2056
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->needToShowCallerInfoCardView(I)Z

    move-result v2

    .line 2057
    .local v2, "needToShow":Z
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v2, :cond_4

    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/16 v3, 0x8

    goto :goto_1
.end method

.method public resetRevealAnimator()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1938
    sget-boolean v4, Lcom/android/incallui/fragment/VoiceCallCardFragment;->sIsWindowRevealed:Z

    if-nez v4, :cond_1

    .line 1951
    :cond_0
    :goto_0
    return-void

    .line 1939
    :cond_1
    const-string v4, "VoiceCallCardFragment"

    const-string v5, "resetRevealAnimator"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1941
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1942
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 1943
    .local v3, "view":Landroid/view/View;
    iget v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayWidth:I

    iget v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1944
    .local v1, "radius":I
    int-to-float v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v6, v6, v4, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    .line 1948
    .local v2, "valueAnimator":Landroid/animation/Animator;
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1949
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 1950
    sput-boolean v6, Lcom/android/incallui/fragment/VoiceCallCardFragment;->sIsWindowRevealed:Z

    goto :goto_0
.end method

.method public setAMView(Z)V
    .locals 6
    .param p1, "isRecording"    # Z

    .prologue
    .line 2251
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2252
    .local v2, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    if-nez v3, :cond_3

    .line 2253
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f10034d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    .line 2254
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_0

    .line 2255
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 2262
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f1001f5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2264
    .local v0, "amStatusImage":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f1001f6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2266
    .local v1, "amStatusText":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 2267
    if-eqz p1, :cond_4

    .line 2268
    const v3, 0x7f020050

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2273
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 2274
    if-eqz p1, :cond_5

    .line 2275
    const v3, 0x7f090092

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2276
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2277
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->updateKeepScreenOnFlag()V

    .line 2283
    :cond_2
    :goto_2
    return-void

    .line 2259
    .end local v0    # "amStatusImage":Landroid/widget/ImageView;
    .end local v1    # "amStatusText":Landroid/widget/TextView;
    :cond_3
    const-string v3, "VoiceCallCardFragment"

    const-string v4, "setAMView mAMStub set Visible"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2260
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 2270
    .restart local v0    # "amStatusImage":Landroid/widget/ImageView;
    .restart local v1    # "amStatusText":Landroid/widget/TextView;
    :cond_4
    const v3, 0x7f02004f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 2280
    :cond_5
    const v3, 0x7f090091

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
    .locals 19
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
    .line 864
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v9, 0x1

    .local v9, "isGatewayCall":Z
    :goto_0
    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v10, p10

    .line 865
    invoke-direct/range {v3 .. v10}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;ZZ)Ljava/lang/CharSequence;

    move-result-object v15

    .line 868
    .local v15, "callStateLabel":Ljava/lang/CharSequence;
    const-string v3, "VoiceCallCardFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCallState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const-string v3, "VoiceCallCardFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DisconnectCause "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Landroid/telecom/DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string v3, "VoiceCallCardFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gateway "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const/4 v3, 0x4

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    .line 873
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    .line 876
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 877
    const-string v3, "VoiceCallCardFragment"

    const-string v4, "setCallState: current state is multi-party call"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 879
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->displayCtcSubscriberName()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 880
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v3, :cond_2

    .line 881
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->manageCardName(I)V

    .line 1000
    :cond_2
    :goto_1
    return-void

    .line 864
    .end local v9    # "isGatewayCall":Z
    .end local v15    # "callStateLabel":Ljava/lang/CharSequence;
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 887
    .restart local v9    # "isGatewayCall":Z
    .restart local v15    # "callStateLabel":Ljava/lang/CharSequence;
    :cond_4
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isIncomingVideoCall()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 888
    const-string v3, "VoiceCallCardFragment"

    const-string v4, "setCallState: isIncomingVideoCall "

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 892
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    move/from16 v0, p1

    if-ne v3, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 897
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 898
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isVideoState()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 903
    :cond_7
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v3, :cond_9

    const/16 v3, 0xa

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    const/16 v3, 0x9

    move/from16 v0, p1

    if-ne v0, v3, :cond_9

    .line 905
    :cond_8
    const-string v3, "VoiceCallCardFragment"

    const-string v4, "not update callend in hold status"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 908
    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v17

    .line 909
    .local v17, "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v3, v0, :cond_a

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    if-ne v0, v3, :cond_b

    .line 910
    :cond_a
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v3

    if-nez v3, :cond_b

    .line 911
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v3

    if-nez v3, :cond_b

    .line 912
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isIncomingAcceptOrRejectByOtherDevice(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 913
    :cond_b
    const-string v3, "VoiceCallCardFragment"

    const-string v4, "skip setCallState : not update callend in current state"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isInLockTaskMode()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v3, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v3, :cond_2

    .line 915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 916
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 921
    :cond_c
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v14

    .line 922
    .local v14, "answerUi":Lcom/android/incallui/AnswerUi;
    if-eqz v14, :cond_d

    invoke-interface {v14}, Lcom/android/incallui/AnswerUi;->isAnswerAnimationRunning()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 923
    const-string v3, "VoiceCallCardFragment"

    const-string v4, "perf - Skip setCallState when answer animation is running"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 926
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    check-cast v11, Lcom/android/incallui/InCallActivity;

    .line 927
    .local v11, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v11, :cond_f

    .line 928
    invoke-virtual {v11}, Lcom/android/incallui/InCallActivity;->isShrinkBackgroundRunning()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 929
    const-string v3, "perf - Skip onCallListChange when scale animation is running"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 932
    :cond_e
    invoke-virtual {v11}, Lcom/android/incallui/InCallActivity;->dismissInCallMenu()V

    .line 933
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/incallui/InCallActivity;->updateStatusBarColor(I)V

    .line 934
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    .line 935
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    .line 938
    :cond_f
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 939
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 951
    :cond_10
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    if-eqz v3, :cond_11

    .line 952
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 955
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v15, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateCallStateLabelForCallState(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 956
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    .line 957
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePhotoViewForCallState(I)V

    .line 958
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryCallMoreMenu()V

    .line 959
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->manageCallStateFocusable(I)V

    .line 960
    const/16 v3, 0x8

    move/from16 v0, p1

    if-ne v0, v3, :cond_16

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showOnHoldText(Z)V

    .line 961
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateJanskyInfo()V

    .line 963
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    const/16 v3, 0xa

    move/from16 v0, p1

    if-ne v0, v3, :cond_12

    .line 964
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_12

    .line 965
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 969
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoDummy:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v3

    if-eqz v3, :cond_17

    const/16 v3, 0x8

    :goto_4
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v3, :cond_13

    .line 972
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->needToShowCallerInfoCardView(I)Z

    move-result v18

    .line 973
    .local v18, "needToShow":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v18, :cond_18

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v4, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    .line 974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->clear()V

    .line 977
    .end local v18    # "needToShow":Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;

    .line 978
    .local v12, "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    move/from16 v0, p1

    invoke-interface {v12, v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->setCallState(I)V

    goto :goto_6

    .line 940
    .end local v12    # "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    :cond_14
    const/4 v3, 0x4

    move/from16 v0, p1

    if-eq v0, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    .line 942
    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    .line 943
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 944
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getCallCardPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v16

    .line 945
    .local v16, "cardPresenter":Lcom/android/incallui/CallCardPresenter;
    if-eqz v16, :cond_15

    .line 946
    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    .line 948
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 960
    .end local v16    # "cardPresenter":Lcom/android/incallui/CallCardPresenter;
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 969
    :cond_17
    const/4 v3, 0x0

    goto :goto_4

    .line 973
    .restart local v18    # "needToShow":Z
    :cond_18
    const/16 v3, 0x8

    goto :goto_5

    .line 981
    .end local v18    # "needToShow":Z
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    .line 982
    const/4 v13, 0x0

    .line 983
    .local v13, "animationType":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1a

    const/16 v3, 0x8

    move/from16 v0, p1

    if-eq v0, v3, :cond_1b

    :cond_1a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1e

    const/16 v3, 0x8

    move/from16 v0, p1

    if-ne v0, v3, :cond_1e

    .line 985
    :cond_1b
    const/4 v13, 0x1

    .line 993
    :cond_1c
    :goto_7
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_20

    .line 994
    :cond_1d
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallCardPriority(I)V

    .line 999
    :goto_8
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    goto/16 :goto_1

    .line 986
    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1f

    const/4 v3, 0x3

    move/from16 v0, p1

    if-ne v0, v3, :cond_1f

    .line 987
    const/4 v13, 0x2

    goto :goto_7

    .line 988
    :cond_1f
    const/16 v3, 0xa

    move/from16 v0, p1

    if-ne v0, v3, :cond_1c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1c

    .line 990
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 991
    const/4 v13, 0x3

    goto :goto_7

    .line 996
    :cond_20
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangeBelowButtonLayout(I)V

    goto :goto_8
.end method

.method public setLastestCallTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 2387
    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    .line 2388
    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 19
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "isConference"    # Z
    .param p5, "canManageConference"    # Z
    .param p6, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p7, "isWorkCall"    # Z

    .prologue
    .line 734
    const-string v15, "VoiceCallCardFragment"

    const-string v18, "Setting primary call"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v15

    check-cast v15, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v15}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v13

    .line 737
    .local v13, "primaryCall":Lcom/android/incallui/Call;
    if-nez v13, :cond_0

    .line 850
    :goto_0
    return-void

    .line 739
    :cond_0
    invoke-virtual {v13}, Lcom/android/incallui/Call;->getState()I

    move-result v14

    .line 740
    .local v14, "state":I
    const/4 v10, 0x0

    .line 742
    .local v10, "isSrvccConferenceCall":Z
    invoke-virtual {v13}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/incallui/util/CallTypeUtils;->isSrvccConference(Ljava/lang/String;)Z

    move-result v10

    .line 745
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 746
    const-string v15, "VoiceCallCardFragment"

    const-string v18, "setPrimary: current state is multi-party call"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 750
    :cond_1
    const/4 v11, 0x0

    .line 751
    .local v11, "label":Ljava/lang/String;
    const/4 v12, 0x0

    .line 752
    .local v12, "photo":Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 753
    .local v9, "isSipCall":Z
    const/4 v8, 0x0

    .line 754
    .local v8, "isPersonalPhotoAvailable":Z
    const-wide/16 v16, 0x0

    .line 756
    .local v16, "userType":J
    if-eqz p6, :cond_2

    .line 757
    move-object/from16 v0, p6

    iget-object v11, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 758
    move-object/from16 v0, p6

    iget-object v12, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 759
    move-object/from16 v0, p6

    iget-boolean v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    .line 760
    move-object/from16 v0, p6

    iget-boolean v8, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    .line 761
    move-object/from16 v0, p6

    iget-wide v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    move-wide/from16 v16, v0

    .line 764
    :cond_2
    if-nez p4, :cond_3

    if-eqz v10, :cond_4

    .line 765
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getConferenceString(Z)Ljava/lang/String;

    move-result-object p2

    .line 766
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 767
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 768
    const/16 p3, 0x0

    .line 769
    if-eqz v10, :cond_4

    .line 770
    const-string p1, ""

    .line 774
    :cond_4
    const/4 v5, 0x0

    .line 775
    .local v5, "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    if-eqz v13, :cond_5

    .line 776
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v15

    invoke-virtual {v13}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v5

    .line 778
    :cond_5
    if-eqz v5, :cond_a

    .line 779
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v13}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/incallui/util/ContactAgentUtils;->isBizringByMsisdn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 780
    .local v6, "isBizRing":Z
    if-eqz p6, :cond_e

    move-object/from16 v0, p6

    iget-boolean v15, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v15, :cond_e

    const/4 v7, 0x1

    .line 782
    .local v7, "isContactExists":Z
    :goto_1
    if-nez v6, :cond_6

    if-nez v7, :cond_7

    :cond_6
    iget-object v15, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    if-eqz p6, :cond_7

    .line 783
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 784
    iget-object v0, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    move-object/from16 p2, v0

    .line 785
    const/16 p3, 0x0

    .line 787
    :cond_7
    if-nez v6, :cond_8

    if-nez v7, :cond_9

    .line 788
    :cond_8
    iget-object v15, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->bizImage:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_10

    .line 789
    iget-object v15, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v15, :cond_f

    .line 790
    const-string v15, "VoiceCallCardFragment"

    const-string v18, "coreContact.drawable == null"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v18, 0x7f02031a

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 792
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsDefaultBizRingIcon:Z

    .line 804
    :cond_9
    :goto_2
    iget-object v15, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->bizImage:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_a

    .line 805
    iget-object v15, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->bizImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 810
    .end local v6    # "isBizRing":Z
    .end local v7    # "isContactExists":Z
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 812
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 813
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 822
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 823
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryPhoneNumberTTS(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 825
    if-nez v10, :cond_b

    .line 826
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 829
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryCallMoreMenu()V

    .line 831
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_13

    .line 832
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryBizImage(ZI)V

    .line 836
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallerInfoCardView()V

    .line 837
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setProfileIcon(J)V

    .line 838
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDisplaySize()V

    .line 840
    const-string v15, "tablet_device"

    invoke-static {v15}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 841
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->needToShowVolumeButton()Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showVolumeButton(Z)V

    .line 843
    :cond_c
    const/16 v15, 0xa

    if-ne v14, v15, :cond_d

    .line 844
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showEndCallContactBtn()V

    .line 846
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_14

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;

    .line 847
    .local v4, "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    move-object/from16 v0, p6

    invoke-interface {v4, v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_5

    .line 780
    .end local v4    # "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    .restart local v6    # "isBizRing":Z
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 794
    .restart local v7    # "isContactExists":Z
    :cond_f
    iget-object v15, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 795
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsDefaultBizRingIcon:Z

    goto/16 :goto_2

    .line 798
    :cond_10
    iget-object v15, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_9

    .line 799
    iget-object v12, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    .line 800
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 815
    .end local v6    # "isBizRing":Z
    .end local v7    # "isContactExists":Z
    :cond_11
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 816
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 818
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 834
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_4

    .line 849
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    goto/16 :goto_0
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1028
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    .line 1029
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setPrimaryCallElapsedTime(Lcom/android/incallui/fragment/VoiceCallCardFragment;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1059
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    if-eqz p1, :cond_6

    .line 1034
    iput-object p2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    .line 1035
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1037
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1038
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->sendBroadcastContactCallState(Landroid/content/Context;)V

    .line 1040
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1041
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1042
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1045
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1047
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1049
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getCallTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setTTS(JLandroid/view/View;)V

    .line 1056
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1057
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    goto :goto_0

    .line 1053
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1054
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setPrimaryCityId(Ljava/lang/String;)V
    .locals 1
    .param p1, "cityId"    # Ljava/lang/String;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-virtual {v0, p0, p1}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimaryCityId(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    .line 598
    :cond_0
    return-void
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 12
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isPersonalPhotoAvailable"    # Z

    .prologue
    const/4 v6, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 442
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    invoke-static {v10, v6, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 443
    .local v1, "call":Lcom/android/incallui/Call;
    if-nez v1, :cond_0

    .line 492
    :goto_0
    return-void

    .line 444
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 445
    const-string v6, "VoiceCallCardFragment"

    const-string v7, "setPrimaryImage: current state is multi-party call"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 450
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_3

    .line 451
    if-eqz p2, :cond_2

    move-object v6, p1

    :cond_2
    invoke-virtual {v0, v6}, Lcom/android/incallui/InCallActivity;->updateGradientColor(Landroid/graphics/drawable/Drawable;)V

    .line 454
    :cond_3
    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 455
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f020397

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 456
    const/4 p2, 0x1

    .line 459
    :cond_4
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 460
    :cond_5
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    invoke-static {v6}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v6

    if-nez v6, :cond_6

    .line 461
    const/4 p2, 0x0

    .line 463
    :cond_6
    const-string v6, "VoiceCallCardFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setPrimaryImage: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", image: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 465
    move v5, p2

    .line 466
    .local v5, "showPhotoContainer":Z
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 467
    :cond_7
    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 468
    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_c

    if-eqz p1, :cond_c

    .line 469
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v6, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    .line 470
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const v10, 0x106000d

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 480
    :cond_8
    :goto_1
    if-eqz v5, :cond_e

    .line 481
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-virtual {v6}, Lcom/android/incallui/fragment/view/CallCardMcidView;->isPhotoringShowing()Z

    move-result v6

    if-nez v6, :cond_e

    :cond_9
    move v4, v7

    .line 482
    .local v4, "needToShowPhoto":Z
    :goto_2
    const-string v6, "VoiceCallCardFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setPrimaryImage: needToShowPhoto - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 483
    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v4, :cond_f

    move v6, v8

    :goto_3
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    .line 484
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 485
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 488
    :cond_a
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    if-ne v6, v9, :cond_10

    move v3, v7

    .line 489
    .local v3, "isHold":Z
    :goto_4
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v3, 0x0

    .line 490
    :cond_b
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    invoke-direct {p0, v3, v1, v6}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForHoldPhoto(ZLcom/android/incallui/Call;I)V

    .line 491
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    goto/16 :goto_0

    .line 471
    .end local v3    # "isHold":Z
    .end local v4    # "needToShowPhoto":Z
    :cond_c
    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    .line 472
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f0a0346

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 473
    .local v2, "diameter":I
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-static {v6, p1, v2}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 474
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v6, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    goto/16 :goto_1

    .line 477
    .end local v2    # "diameter":I
    :cond_d
    const-string v6, "VoiceCallCardFragment"

    const-string v10, "setPrimaryImage: duplicated image"

    invoke-static {v6, v10, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_e
    move v4, v8

    .line 481
    goto :goto_2

    .restart local v4    # "needToShowPhoto":Z
    :cond_f
    move v6, v9

    .line 483
    goto :goto_3

    :cond_10
    move v3, v8

    .line 488
    goto :goto_4
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 644
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 650
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    .line 651
    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z

    .prologue
    .line 416
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "nameDirection":I
    if-eqz p2, :cond_4

    .line 427
    const/4 v0, 0x3

    .line 428
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 429
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0

    .line 433
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setPrimaryNameSize(Ljava/lang/String;F)F
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "textSize"    # F

    .prologue
    .line 2292
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 2293
    .local v1, "mPaint":Landroid/graphics/Paint;
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2295
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v4, v5

    .line 2296
    .local v4, "mTextWidth":I
    move v2, p2

    .line 2297
    .local v2, "mTextSize":F
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a008d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2299
    .local v0, "mMinTextSize":F
    :cond_0
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 2300
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2301
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v4, v5

    .line 2302
    const/high16 v5, 0x40000000    # 2.0f

    sub-float/2addr v2, v5

    .line 2303
    cmpg-float v5, v2, v0

    if-gez v5, :cond_0

    move v3, v2

    .line 2307
    .end local v2    # "mTextSize":F
    .local v3, "mTextSize":F
    :goto_0
    return v3

    .end local v3    # "mTextSize":F
    .restart local v2    # "mTextSize":F
    :cond_1
    move v3, v2

    .end local v2    # "mTextSize":F
    .restart local v3    # "mTextSize":F
    goto :goto_0
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 603
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 617
    :goto_0
    return-void

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 611
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
    .locals 1
    .param p1, "phoneNumberLocator"    # Ljava/lang/String;

    .prologue
    .line 2340
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v0, :cond_0

    .line 2341
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v0, p0, p1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setPrimaryPhoneNumberLocator(Lcom/android/incallui/fragment/VoiceCallCardFragment;Ljava/lang/String;)V

    .line 2343
    :cond_0
    return-void
.end method

.method public setPrimaryPhoneNumberTTS(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 621
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 622
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 627
    if-eqz p2, :cond_3

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 628
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    .line 629
    .local v0, "ttsString":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->time:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 634
    .end local v0    # "ttsString":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 637
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setProfileContent(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2167
    const-string v0, "VoiceCallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProfileContent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v0, :cond_0

    .line 2169
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setProfileContent(Ljava/lang/String;)V

    .line 2171
    :cond_0
    return-void
.end method

.method public setProfileForwardingContent(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2175
    const v1, 0x7f02035f

    .line 2176
    .local v1, "iconRes":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2177
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v2, v1, v0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setProfileForwardingContent(ILjava/lang/String;Ljava/lang/String;)V

    .line 2178
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 404
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "getView is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :goto_0
    return-void

    .line 407
    :cond_0
    if-eqz p1, :cond_1

    .line 408
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 410
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showMenu(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1797
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->showMenu(Z)V

    .line 1798
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v0, :cond_0

    .line 1799
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0, p0, p1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showMenu(Lcom/android/incallui/fragment/CallCardFragment;Z)V

    .line 1801
    :cond_0
    return-void
.end method

.method public showModifyStateInfoBanner(ZLjava/lang/String;)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 2333
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v0, :cond_0

    .line 2334
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showModifyStateInfoBanner(ZLjava/lang/String;)V

    .line 2336
    :cond_0
    return-void
.end method

.method public updateCallCardPriority()V
    .locals 1

    .prologue
    .line 2496
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2497
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallCardPriority(I)V

    .line 2499
    :cond_1
    return-void
.end method

.method public updateCallerInfoOrgView(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 2347
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    if-eqz v0, :cond_0

    .line 2348
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-virtual {v0, p0, p1}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateCallerInfoOrgView(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    .line 2350
    :cond_0
    return-void
.end method

.method public updateEri()V
    .locals 1

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    if-eqz v0, :cond_0

    .line 2320
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateEri()V

    .line 2322
    :cond_0
    return-void
.end method

.method public updateJanskyInfo()V
    .locals 1

    .prologue
    .line 2326
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mJanskyView:Lcom/android/incallui/fragment/view/CallCardJanskyView;

    if-eqz v0, :cond_0

    .line 2327
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mJanskyView:Lcom/android/incallui/fragment/view/CallCardJanskyView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardJanskyView;->updateJanskyInfo()V

    .line 2329
    :cond_0
    return-void
.end method

.method public updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V
    .locals 1
    .param p1, "state"    # Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;
    .param p2, "block"    # I

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    if-eqz v0, :cond_0

    .line 1826
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardMcidView;->updatePhotoringState(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V

    .line 1828
    :cond_0
    return-void
.end method

.method public updateSmartCallInfo(Lcom/android/incallui/Call;Z)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isTimeout"    # Z

    .prologue
    .line 2375
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSmartCallView:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    if-eqz v0, :cond_0

    .line 2376
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSmartCallView:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->updateSmartCallInfo(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;Z)V

    .line 2379
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v0, :cond_2

    .line 2380
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 2381
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setSmartCallContent()V

    .line 2384
    :cond_2
    return-void
.end method

.method public updateVolteView(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v0, :cond_0

    .line 2313
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->setCallState(I)V

    .line 2315
    :cond_0
    return-void
.end method
