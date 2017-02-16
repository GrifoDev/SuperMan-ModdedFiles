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

    .line 2070
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDummyPrimaryCallBanner:Landroid/view/View;

    if-nez v2, :cond_0

    .line 2071
    const-string v2, "VoiceCallCardFragment"

    const-string v3, "animateBannerForAnswer: mDummyPrimaryCallBanner is null"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    :goto_0
    return-void

    .line 2074
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDummyPrimaryCallBanner:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 2075
    .local v0, "endHeight":I
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2076
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0289

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 2078
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

    .line 2079
    .local v1, "shrinkAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/incallui/fragment/VoiceCallCardFragment$10;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$10;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2089
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2090
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v5, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2091
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private animateForEndCall()V
    .locals 10

    .prologue
    .line 2000
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2001
    const-string v5, "VoiceCallCardFragment"

    const-string v6, "animateForEndCall: running"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    :cond_0
    :goto_0
    return-void

    .line 2004
    :cond_1
    const-string v5, "VoiceCallCardFragment"

    const-string v6, "animateForEndCall..."

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/SystemServiceUtils;->boostCPU(Landroid/content/Context;)V

    .line 2006
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2007
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d002a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2008
    .local v2, "alphaDuration":I
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 2009
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 2010
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2011
    .local v1, "alphaAnimator":Landroid/animation/ObjectAnimator;
    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2012
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2014
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

    .line 2015
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-gtz v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    .line 2016
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-lez v5, :cond_5

    .line 2017
    :cond_4
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2018
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a01fb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0083

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    add-float/2addr v5, v6

    .line 2019
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0091

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v4, v5, v6

    .line 2020
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

    .line 2021
    .local v3, "moveAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d002c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2022
    new-instance v5, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v5}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2023
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2025
    .end local v3    # "moveAnimator":Landroid/animation/ObjectAnimator;
    .end local v4    # "translationY":F
    :cond_5
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 2026
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 2027
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 2028
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->animateForHideBackground()V

    goto/16 :goto_0

    .line 2010
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

    .line 1946
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 1947
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

    .line 1997
    :cond_1
    :goto_0
    return-void

    .line 1950
    :cond_2
    if-ne p1, v4, :cond_9

    .line 1951
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1953
    :cond_3
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1954
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->end()V

    .line 1956
    :cond_4
    const-string v6, "VoiceCallCardFragment"

    const-string v7, "animateForHoldCall"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1958
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1959
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1960
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1961
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1962
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v10, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1963
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d002a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1964
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    .line 1965
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-gtz v6, :cond_6

    :cond_5
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    .line 1966
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-lez v6, :cond_8

    .line 1967
    :cond_6
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1968
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01fb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0083

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    add-float/2addr v6, v7

    .line 1969
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0091

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v3, v6, v7

    .line 1970
    .local v3, "translationY":F
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v4, [F

    neg-float v9, v3

    aput v9, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1971
    .local v2, "moveAnimator":Landroid/animation/ObjectAnimator;
    new-instance v6, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1972
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1973
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v0, v7, v5

    aput-object v2, v7, v4

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1977
    .end local v2    # "moveAnimator":Landroid/animation/ObjectAnimator;
    .end local v3    # "translationY":F
    :goto_1
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 1996
    .end local v0    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    :cond_7
    :goto_2
    if-ne p1, v4, :cond_c

    :goto_3
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButtonMargin(Z)V

    goto/16 :goto_0

    .line 1975
    .restart local v0    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    :cond_8
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 1978
    .end local v0    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    :cond_9
    if-ne p1, v10, :cond_7

    .line 1979
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1981
    :cond_a
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1982
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->end()V

    .line 1984
    :cond_b
    const-string v6, "VoiceCallCardFragment"

    const-string v7, "animateForActiveCall"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1986
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v4, [F

    aput v9, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1987
    .restart local v2    # "moveAnimator":Landroid/animation/ObjectAnimator;
    new-instance v6, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1989
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v10, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1990
    .restart local v0    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1991
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v0, v7, v5

    aput-object v2, v7, v4

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1992
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1993
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 1994
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    .end local v0    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    .end local v2    # "moveAnimator":Landroid/animation/ObjectAnimator;
    :cond_c
    move v4, v5

    .line 1996
    goto/16 :goto_3

    .line 1962
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1989
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

    .line 556
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

    .line 557
    :cond_1
    if-eqz p1, :cond_3

    .line 558
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 559
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 585
    :cond_2
    :goto_0
    return-void

    .line 560
    :cond_3
    const/4 v1, 0x3

    if-ne p3, v1, :cond_4

    iget v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 561
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 563
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    .line 564
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 561
    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 565
    .local v0, "colorAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 566
    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$4;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 577
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 579
    .end local v0    # "colorAnimator":Landroid/animation/ValueAnimator;
    :cond_4
    invoke-static {p2}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 580
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 581
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private animateForMoveInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 1136
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsMoveInfoAnimationRunning:Z

    if-eqz v2, :cond_0

    .line 1137
    const-string v2, "VoiceCallCardFragment"

    const-string v3, "animateForMoveInfo: already running"

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1169
    :goto_0
    return-void

    .line 1140
    :cond_0
    iput-boolean v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsMoveInfoAnimationRunning:Z

    .line 1141
    const-string v2, "VoiceCallCardFragment"

    const-string v3, "animateForMoveInfo"

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1142
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 1143
    .local v1, "startHeight":I
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoBannerContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1144
    .local v0, "endHeight":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    aput v0, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    .line 1145
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/incallui/fragment/VoiceCallCardFragment$5;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$5;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1154
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/incallui/fragment/VoiceCallCardFragment$6;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$6;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1166
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1167
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v6, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1168
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private animateInfoCardForAnswer()V
    .locals 6

    .prologue
    .line 2095
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v1, :cond_0

    .line 2096
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2097
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2098
    new-instance v1, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2099
    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$11;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$11;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2106
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2108
    .end local v0    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method private arrangeBelowButtonLayout(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x3

    .line 1567
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

    .line 1568
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isVideoState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1569
    if-ne p1, v3, :cond_0

    .line 1570
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showEndCallContactBtn()V

    .line 1571
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForEndCall()V

    .line 1589
    :cond_0
    :goto_0
    return-void

    .line 1574
    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1575
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForHoldCall(I)V

    goto :goto_0

    .line 1576
    :cond_3
    if-ne p1, v3, :cond_6

    .line 1577
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1578
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1582
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showEndCallContactBtn()V

    .line 1583
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForEndCall()V

    goto :goto_0

    .line 1579
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1580
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_1

    .line 1586
    :cond_6
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButton()V

    goto :goto_0
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1380
    if-nez p2, :cond_1

    .line 1389
    :cond_0
    :goto_0
    return-void

    .line 1381
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1382
    .local v0, "eventText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1383
    .local v1, "size":I
    invoke-virtual {p2, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1384
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1386
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1387
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

    .line 1251
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1252
    :cond_0
    const-string v4, "VoiceCallCardFragment"

    const-string v5, "getCallStateLabelFromState getView() or context is empty: "

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    const/4 v0, 0x0

    .line 1348
    :cond_1
    :goto_0
    :pswitch_0
    return-object v0

    .line 1255
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1256
    .local v1, "context":Landroid/content/Context;
    const/4 v0, 0x0

    .line 1258
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    if-eqz p5, :cond_4

    move v3, v4

    .line 1259
    .local v3, "isSpecialCall":Z
    :goto_1
    if-eqz v3, :cond_5

    if-nez p6, :cond_5

    move v2, v4

    .line 1260
    .local v2, "isAccount":Z
    :goto_2
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1261
    const/4 p1, 0x4

    .line 1264
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 1346
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

    .line 1258
    goto :goto_1

    .restart local v3    # "isSpecialCall":Z
    :cond_5
    move v2, v5

    .line 1259
    goto :goto_2

    .line 1271
    .restart local v2    # "isAccount":Z
    :pswitch_2
    if-eqz v2, :cond_6

    .line 1272
    move-object v0, p5

    goto :goto_0

    .line 1273
    :cond_6
    const/4 v6, 0x2

    if-ne p3, v6, :cond_7

    .line 1275
    const v4, 0x7f090024

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1276
    :cond_7
    if-ne p3, v4, :cond_8

    .line 1278
    const v4, 0x7f090025

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1280
    :cond_8
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1281
    const v6, 0x7f090452

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1291
    :pswitch_3
    if-eqz v3, :cond_9

    .line 1292
    const v6, 0x7f090017

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p5, v7, v5

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1295
    :cond_9
    const-string v6, "spr_display_hd_icon"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1296
    const-string v0, ""

    goto/16 :goto_0

    .line 1297
    :cond_a
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1298
    const v6, 0x7f090453

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1301
    :cond_b
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v0

    .line 1302
    const-string v4, "assisted_dialing_enable"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1303
    invoke-static {v1, v0}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getDialingLabelFromAssistedDialing(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 1307
    :pswitch_4
    const-string v4, "spr_display_hd_icon"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1308
    const-string v0, ""

    goto/16 :goto_0

    .line 1310
    :cond_c
    const v4, 0x7f090022

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1312
    goto/16 :goto_0

    .line 1315
    :pswitch_5
    if-eqz v2, :cond_d

    .line 1316
    const v6, 0x7f090038

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1320
    :cond_d
    const v4, 0x7f09001f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1322
    goto/16 :goto_0

    .line 1333
    :pswitch_6
    invoke-virtual {p4}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1335
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1336
    const v6, 0x7f0900cb

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1338
    :cond_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1339
    const v4, 0x7f090018

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1343
    :pswitch_7
    const v4, 0x7f09001b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1344
    goto/16 :goto_0

    .line 1264
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
    .line 1234
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

    .line 1235
    if-eqz p1, :cond_0

    const v0, 0x7f020128

    .line 1236
    .local v0, "resId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1235
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x7f02012c

    goto :goto_0
.end method

.method private getConferenceString(Z)Ljava/lang/String;
    .locals 4
    .param p1, "canManageConference"    # Z

    .prologue
    .line 1220
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

    .line 1222
    const-string v1, "ims_voice_conference_vzw"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1223
    const-string v1, "VoiceCallCardFragment"

    const-string v2, "getConferenceString return null"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const/4 v1, 0x0

    .line 1230
    :goto_0
    return-object v1

    .line 1229
    :cond_0
    const v0, 0x7f09001b

    .line 1230
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
    .line 1900
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1901
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    .line 1906
    .local v6, "view":Landroid/view/View;
    iget v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayWidth:I

    div-int/lit8 v3, v7, 0x2

    .line 1907
    .local v3, "startX":I
    iget v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    div-int/lit8 v4, v7, 0x2

    .line 1908
    .local v4, "startY":I
    if-eqz p1, :cond_0

    .line 1909
    iget v3, p1, Landroid/graphics/Point;->x:I

    .line 1910
    iget v4, p1, Landroid/graphics/Point;->y:I

    .line 1912
    :cond_0
    iget v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayWidth:I

    iget v8, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1913
    .local v2, "radius":I
    const/4 v7, 0x0

    int-to-float v8, v2

    invoke-static {v6, v3, v4, v7, v8}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v5

    .line 1917
    .local v5, "valueAnimator":Landroid/animation/Animator;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0054

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1918
    .local v1, "duration":I
    int-to-long v8, v1

    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1919
    new-instance v7, Lcom/android/incallui/fragment/VoiceCallCardFragment$9;

    invoke-direct {v7, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$9;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v5, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1925
    return-object v5
.end method

.method private getRevealViewsAnimator()Landroid/animation/Animator;
    .locals 7

    .prologue
    .line 1881
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 1896
    :goto_0
    return-object v0

    .line 1882
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

    .line 1883
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1884
    .local v1, "duration":I
    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1885
    new-instance v2, Lcom/android/incallui/fragment/VoiceCallCardFragment$8;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$8;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private isEnabledEndCallContactButton()Z
    .locals 2

    .prologue
    .line 1717
    const/4 v0, 0x1

    .line 1718
    .local v0, "enabled":Z
    const-string v1, "support_twophone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1719
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isTwoPhoneUser(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1720
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isTwoPhoneUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1721
    :cond_1
    const/4 v0, 0x0

    .line 1724
    :cond_2
    return v0
.end method

.method private isLowQualityImage(Landroid/graphics/drawable/Drawable;)Z
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2141
    if-nez p1, :cond_1

    .line 2154
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return v3

    .line 2143
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2144
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2145
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2146
    .local v2, "imageMinLength":I
    const/16 v5, 0x140

    if-ge v2, v5, :cond_0

    .line 2147
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

    .line 2148
    goto :goto_0

    .line 2151
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "imageMinLength":I
    :catch_0
    move-exception v1

    .line 2152
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
    .line 2234
    const/4 v1, 0x0

    .line 2235
    .local v1, "hasVideoState":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2236
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 2237
    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    .line 2239
    :cond_0
    return v1
.end method

.method private manageCallStateFocusable(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1023
    :goto_0
    return-void

    .line 1018
    :cond_0
    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 1019
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_0

    .line 1021
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

    .line 653
    iget-boolean v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    if-eqz v4, :cond_1

    .line 682
    :cond_0
    :goto_0
    return v3

    .line 654
    :cond_1
    const-string v4, "feature_dcm"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 655
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 656
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->getSugudenAnswerSetting(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 657
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SugudenGuideShowNeverAgain"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 660
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCallerInfoCardMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 662
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    .line 663
    invoke-virtual {v4}, Lcom/android/incallui/fragment/view/CallCardVolteView;->isShowEpdgNotifyBanner()Z

    move-result v4

    if-nez v4, :cond_0

    .line 665
    :cond_3
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 666
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 667
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_4

    .line 668
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

    .line 669
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_4

    iget v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 673
    .end local v1    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00e7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 674
    .local v2, "minHeightForCallerInfoCard":I
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 675
    iget v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    if-ge v4, v2, :cond_5

    iget v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    iget v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayWidth:I

    if-lt v4, v5, :cond_0

    .line 679
    :cond_5
    const/4 v4, 0x4

    if-eq p1, v4, :cond_6

    const/4 v4, 0x5

    if-ne p1, v4, :cond_0

    .line 680
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

    .line 1424
    const/4 v1, 0x0

    .line 1425
    .local v1, "infoMarginBottom":I
    const/4 v2, 0x0

    .line 1427
    .local v2, "infoMarginTop":I
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    .line 1428
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1429
    .local v0, "infoLP":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1430
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1431
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1433
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 1434
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    :cond_0
    const/4 v3, 0x1

    .line 1435
    .local v3, "isLayoutForRinging":Z
    :goto_0
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v5

    or-int/2addr v3, v5

    .line 1436
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    .line 1438
    .local v4, "isMobileKeyboardCovered":Z
    if-eqz v3, :cond_5

    .line 1439
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/view/CallCardMcidView;->isPhotoringShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1440
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0507

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 1441
    invoke-virtual {v0, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1454
    :goto_1
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mTwoPhoneView:Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mTwoPhoneView:Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->isTwoPhoneTextVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1455
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02d7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v2, v5

    .line 1457
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    if-eqz v4, :cond_2

    .line 1459
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0092

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v2, v5

    .line 1461
    :cond_2
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1462
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1463
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1464
    return-void

    .line 1434
    .end local v3    # "isLayoutForRinging":Z
    .end local v4    # "isMobileKeyboardCovered":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 1443
    .restart local v3    # "isLayoutForRinging":Z
    .restart local v4    # "isMobileKeyboardCovered":Z
    :cond_4
    invoke-virtual {v0, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 1446
    :cond_5
    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->isEriInfoTextVisible()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1447
    invoke-virtual {v0, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1448
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a028e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    goto :goto_1

    .line 1450
    :cond_6
    invoke-virtual {v0, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1
.end method

.method private relayoutNameNumberTextView(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 15
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 1467
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-nez v11, :cond_1

    .line 1528
    :cond_0
    :goto_0
    return-void

    .line 1469
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    .line 1470
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

    .line 1471
    .local v4, "isRinging":Z
    :goto_1
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_a

    const/4 v3, 0x1

    .line 1472
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

    .line 1473
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

    .line 1475
    .local v1, "isPhotoGone":Z
    :goto_4
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a00b8

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1477
    const/4 v10, 0x0

    .line 1478
    .local v10, "nameTextSize":F
    const/4 v8, 0x0

    .line 1480
    .local v8, "nameSpamTextSize":F
    const/4 v7, 0x0

    .line 1481
    .local v7, "nameMarginTop":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0086

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    .line 1482
    .local v6, "nameMarginSide":I
    const/4 v9, 0x0

    .line 1484
    .local v9, "nameTextLength":I
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    .line 1486
    const-string v11, "feature_multisim"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1487
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a011b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    .line 1489
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1490
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a011d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-virtual {p0, v11, v12}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryNameSize(Ljava/lang/String;F)F

    move-result v10

    .line 1506
    :cond_5
    :goto_5
    if-eqz v0, :cond_7

    .line 1507
    const/4 v7, 0x0

    .line 1508
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0294

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-virtual {p0, v11, v12}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryNameSize(Ljava/lang/String;F)F

    move-result v10

    .line 1509
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getVisibility()I

    move-result v11

    if-nez v11, :cond_7

    .line 1510
    :cond_6
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a028b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1511
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a028b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1512
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0333

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 1515
    :cond_7
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1516
    .local v5, "nameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    if-eqz v11, :cond_8

    .line 1517
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .end local v5    # "nameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1519
    .restart local v5    # "nameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_8
    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1520
    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1521
    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1522
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    if-eqz v11, :cond_11

    .line 1523
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v11, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1527
    :goto_6
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    .line 1470
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

    .line 1471
    .restart local v4    # "isRinging":Z
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1472
    .restart local v3    # "isPhotoVisible":Z
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1473
    .restart local v2    # "isPhotoInvisible":Z
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 1491
    .restart local v1    # "isPhotoGone":Z
    .restart local v6    # "nameMarginSide":I
    .restart local v7    # "nameMarginTop":I
    .restart local v8    # "nameSpamTextSize":F
    .restart local v9    # "nameTextLength":I
    .restart local v10    # "nameTextSize":F
    :cond_d
    if-nez v3, :cond_e

    if-eqz v2, :cond_f

    .line 1492
    :cond_e
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a008d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    goto/16 :goto_5

    .line 1493
    :cond_f
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_10

    .line 1494
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a011d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-virtual {p0, v11, v12}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryNameSize(Ljava/lang/String;F)F

    move-result v10

    .line 1495
    if-eqz v1, :cond_5

    .line 1496
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v11}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isRichScreen()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1497
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v12, 0x1

    .line 1498
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0558

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    .line 1499
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v14

    div-float/2addr v13, v14

    .line 1500
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v14

    mul-float/2addr v13, v14

    .line 1497
    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_5

    .line 1504
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

    .line 1525
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

    .line 587
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizOutgoing:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 588
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizIncoming:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 590
    return-void

    :cond_0
    move v0, v2

    .line 587
    goto :goto_0

    :cond_1
    move v0, v2

    .line 588
    goto :goto_1

    :cond_2
    move v1, v2

    .line 589
    goto :goto_2
.end method

.method private setCallCardPriority(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 2382
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

    .line 2383
    :cond_1
    const-string v1, "animation is running, return setCallCardPriority"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2472
    :cond_2
    :goto_0
    return-void

    .line 2387
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

    .line 2391
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2392
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

    .line 694
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 695
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->needToShowCallerInfoCardView(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 697
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

    .line 698
    .local v4, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v4, :cond_0

    iget-boolean v6, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryCompleted:Z

    if-eqz v6, :cond_0

    .line 699
    const-string v6, "VoiceCallCardFragment"

    const-string v7, "- queryCompleted"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->inflateCallerInfoCardView()V

    .line 701
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v6, :cond_0

    .line 702
    const-string v6, "VoiceCallCardFragment"

    const-string v7, "setCallerInfoCardView: update"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v8, v4, v8}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->update(Landroid/content/Context;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 705
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 706
    .local v5, "number":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v3

    .line 707
    .local v3, "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    if-eqz v3, :cond_2

    .line 708
    iget-object v6, v3, Lcom/android/incallui/coreapps/CoreAppsContact;->status:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 709
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iget-object v7, v3, Lcom/android/incallui/coreapps/CoreAppsContact;->status:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setProfileContent(Ljava/lang/String;)V

    .line 712
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0078

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 713
    .local v2, "callerInfoCardMarginTop":I
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 714
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a028c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 716
    :cond_3
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    .line 717
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8, v8}, Landroid/view/ViewGroup;->measure(II)V

    .line 718
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    .line 720
    :cond_4
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 721
    .local v1, "callerInfoCardLP":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 722
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v6, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v6, v8}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    goto/16 :goto_0

    .line 727
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

    .line 1069
    if-nez p1, :cond_0

    .line 1075
    :goto_0
    return v0

    .line 1072
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1073
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1074
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

    .line 1075
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

    .line 494
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizIncoming:Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizOutgoing:Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    if-nez v7, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 496
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

    .line 498
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

    .line 499
    invoke-static {p2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {p2}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 500
    :cond_3
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 501
    :cond_4
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 502
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0391

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 503
    .local v2, "arcSize":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v6, v7, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getRoundRectDrawableForBizRing(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 504
    invoke-static {p2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 505
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizOutgoing:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v6, v7}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    .line 506
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizIncoming:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    .end local v2    # "arcSize":I
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 551
    :goto_2
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 507
    .restart local v2    # "arcSize":I
    :cond_6
    invoke-static {p2}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 508
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizIncoming:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v6, v7}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    .line 509
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizOutgoing:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 514
    .end local v2    # "arcSize":I
    :cond_7
    const/4 v7, 0x3

    if-ne p2, v7, :cond_8

    iget v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_8

    .line 515
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 516
    .local v1, "aniSet":Landroid/animation/AnimatorSet;
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizIncoming:Landroid/widget/ImageView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 517
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 518
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 519
    new-instance v7, Lcom/android/incallui/fragment/VoiceCallCardFragment$3;

    invoke-direct {v7, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$3;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 525
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 527
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

    .line 528
    :cond_9
    iget-boolean v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsDefaultBizRingIcon:Z

    if-eqz v7, :cond_d

    .line 529
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    const v8, 0x106000d

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 530
    const/16 v7, 0xa

    if-ne p2, v7, :cond_c

    .line 531
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 539
    :goto_3
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 540
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a034a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    .line 541
    .local v4, "diameter":I
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v7, v8, v4}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 542
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v7, v8}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    .line 543
    if-ne p2, v10, :cond_e

    const/4 v5, 0x1

    .line 544
    .local v5, "isHold":Z
    :goto_4
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v5, 0x0

    .line 545
    :cond_a
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-static {v7, v11, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    .line 546
    .local v3, "call":Lcom/android/incallui/Call;
    invoke-direct {p0, v5, v3, p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForHoldPhoto(ZLcom/android/incallui/Call;I)V

    .line 548
    .end local v3    # "call":Lcom/android/incallui/Call;
    .end local v4    # "diameter":I
    .end local v5    # "isHold":Z
    :cond_b
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizIncoming:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 549
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizOutgoing:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 533
    :cond_c
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0150

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_3

    .line 536
    :cond_d
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0201dd

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 537
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    .restart local v4    # "diameter":I
    :cond_e
    move v5, v6

    .line 543
    goto :goto_4

    .line 516
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
    .line 1061
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->needToShowMenu()Z

    move-result v0

    .line 1062
    .local v0, "needToShowMenu":Z
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showMenu(Z)V

    .line 1063
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1064
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallActivity;->setPrimaryCallMenuForDialpad(Z)V

    .line 1066
    :cond_0
    return-void
.end method

.method private setViewStateBeforeOutgoingAnimation()V
    .locals 3

    .prologue
    .line 1871
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1872
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1873
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 1874
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1875
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/CallButtonUi;->setViewStateBeforeOutgoingAnimation()V

    .line 1878
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_1
    return-void
.end method

.method private showEndCallContactBtn()V
    .locals 9

    .prologue
    const v8, 0x7f090292

    const v7, 0x7f090246

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 1666
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-nez v3, :cond_1

    .line 1714
    :cond_0
    :goto_0
    return-void

    .line 1669
    :cond_1
    const/16 v3, 0x40

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1670
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1671
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1676
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1677
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1679
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

    .line 1680
    .local v2, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v2, :cond_0

    .line 1681
    iget-boolean v1, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    .line 1682
    .local v1, "contactExists":Z
    const-string v3, "support_twophone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1683
    iget-boolean v1, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->canViewContactDetails:Z

    .line 1685
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/incallui/util/InCallUtils;->isShowContactMenu(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1686
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1687
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1691
    :cond_4
    if-nez v1, :cond_6

    .line 1692
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    .line 1693
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1692
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1694
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    .line 1695
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1694
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1702
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v3, :cond_5

    .line 1703
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1705
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1706
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableIMSConferenceInfo()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1707
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 1697
    :cond_6
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    .line 1698
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1697
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1699
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    .line 1700
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1699
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1709
    :cond_7
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1710
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

    .line 1002
    if-eqz p1, :cond_0

    .line 1003
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1004
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1005
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05001f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1006
    .local v0, "startAnimation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1012
    .end local v0    # "startAnimation":Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 1008
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1009
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1010
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private switchToVideoCallClicked()V
    .locals 1

    .prologue
    .line 2133
    invoke-static {}, Lcom/android/incallui/util/BatteryUtils;->isLowBatt()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/BatteryUtils;->isCriticalLowBatt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2134
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/BatteryUtils;->isCriticalLowBatt()Z

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/BatteryUtils;->showLowBattToast(Z)V

    .line 2138
    :goto_0
    return-void

    .line 2136
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

    .line 1592
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1593
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 1650
    :cond_0
    :goto_0
    return-void

    .line 1595
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 1596
    .local v1, "state":I
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1599
    :cond_3
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

    .line 1600
    invoke-static {v1}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1601
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1602
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->end()V

    .line 1604
    :cond_4
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1605
    :cond_5
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1606
    :cond_7
    const-string v5, "VoiceCallCardFragment"

    const-string v6, "updateBelowButton: hold animation is running"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    :cond_8
    :goto_1
    if-ne v1, v8, :cond_e

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButtonMargin(Z)V

    goto :goto_0

    .line 1608
    :cond_9
    if-ne v1, v8, :cond_d

    const-string v5, "no_receiver_in_call"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1609
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    .line 1610
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-gtz v5, :cond_b

    :cond_a
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    .line 1611
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-lez v5, :cond_c

    .line 1612
    :cond_b
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v5

    if-nez v5, :cond_c

    .line 1613
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a01fb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    add-float/2addr v5, v6

    .line 1614
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0091

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v5, v6

    div-float v2, v5, v9

    .line 1615
    .local v2, "translationY":F
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    neg-float v6, v2

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1617
    .end local v2    # "translationY":F
    :cond_c
    if-eqz v0, :cond_8

    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1618
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_8

    .line 1619
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1620
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1621
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1625
    :cond_d
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1626
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    .line 1627
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getVisibility()I

    move-result v5

    if-nez v5, :cond_8

    .line 1628
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1629
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    :cond_e
    move v3, v4

    .line 1633
    goto/16 :goto_2

    .line 1634
    :cond_f
    const/4 v3, 0x2

    if-ne v1, v3, :cond_12

    .line 1635
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1636
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 1638
    :cond_10
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1639
    :cond_11
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButtonMargin(Z)V

    goto/16 :goto_0

    .line 1640
    :cond_12
    const/16 v3, 0xa

    if-ne v1, v3, :cond_0

    .line 1641
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    .line 1642
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-gtz v3, :cond_14

    :cond_13
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    .line 1643
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    .line 1644
    :cond_14
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1645
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v3, v4

    .line 1646
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0091

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    div-float v2, v3, v9

    .line 1647
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

    .line 1653
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1654
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1655
    .local v0, "buttonLP":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1656
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1661
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1663
    .end local v0    # "buttonLP":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    return-void

    .line 1659
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

    .line 2173
    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    .line 2174
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2226
    :goto_0
    return-void

    .line 2178
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isVideoState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2179
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2180
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallElapsedTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    .line 2184
    :cond_1
    iput-object p2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    .line 2185
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->manageCallEndTimeBlink(I)V

    .line 2186
    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    .line 2187
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->removeMessageForBlinkTime()V

    .line 2189
    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    .line 2190
    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 2191
    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    .line 2196
    :cond_3
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2197
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2198
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "not update stateLabel for blink call time"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    :goto_2
    if-eqz p3, :cond_4

    const-string v0, "feature_multisim"

    .line 2205
    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2206
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2193
    :cond_5
    iget-object p2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    goto :goto_1

    .line 2200
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2201
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2202
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 2208
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2211
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2212
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2215
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2216
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "not update stateLabel for blink call time"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    :goto_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2224
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2218
    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2219
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

    .line 1079
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1080
    const-string v4, "VoiceCallCardFragment"

    const-string v5, "activity is null"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1084
    const-string v4, "VoiceCallCardFragment"

    const-string v5, "fragment is detached from activity, return"

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1087
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1088
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

    .line 1092
    :cond_3
    iget-boolean v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsMoveInfoAnimationRunning:Z

    if-eqz v4, :cond_4

    .line 1093
    const-string v4, "VoiceCallCardFragment"

    const-string v5, "updatePanelForCallState: animation is running"

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1096
    :cond_4
    const/4 v2, -0x1

    .line 1097
    .local v2, "height":I
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1098
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1099
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0289

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 1102
    :cond_5
    const/4 v4, 0x4

    if-eq p1, v4, :cond_6

    const/4 v4, 0x5

    if-eq p1, v4, :cond_6

    .line 1103
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1104
    :cond_6
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1105
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a028a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 1109
    :goto_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1110
    iget v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    div-int/lit8 v2, v4, 0x2

    .line 1126
    :cond_7
    :goto_2
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1127
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1128
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 1131
    :cond_8
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1132
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1107
    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0085

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto :goto_1

    .line 1112
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

    .line 1114
    :cond_c
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForMoveInfo()V

    goto/16 :goto_0

    .line 1116
    :cond_d
    if-eq p1, v8, :cond_e

    if-ne p1, v7, :cond_7

    .line 1117
    :cond_e
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1118
    iget v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    int-to-double v4, v4

    const-wide v6, 0x3fdccccccccccccdL    # 0.45

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 1119
    .local v1, "dial_height":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 1120
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 1121
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/incallui/CallButtonUi;->getUpperViewMarginTop()I

    move-result v4

    add-int/2addr v1, v4

    .line 1123
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

    .line 1172
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1173
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 1217
    :cond_0
    :goto_0
    return-void

    .line 1174
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1175
    :cond_2
    const-string v2, "VoiceCallCardFragment"

    const-string v3, "updatePhotoViewForCallState getView() or context is empty: "

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1179
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

    .line 1180
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_0

    .line 1182
    iget v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    if-eq v2, p1, :cond_0

    .line 1184
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1191
    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 1192
    const/16 v2, 0xa

    if-ne p1, v2, :cond_b

    .line 1193
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f014f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1198
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 1199
    iget-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-direct {p0, v2, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryBizImage(ZI)V

    .line 1201
    :cond_6
    iget v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_7

    .line 1203
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1204
    :cond_7
    iget-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-eqz v2, :cond_0

    .line 1205
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1206
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

    .line 1207
    :cond_8
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v5}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 1208
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1209
    invoke-direct {p0, v5}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setBizRingVisibility(Z)V

    goto/16 :goto_0

    .line 1186
    :cond_9
    iget v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    if-eq v2, v4, :cond_a

    if-ne p1, v4, :cond_4

    .line 1187
    :cond_a
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    .line 1188
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1

    .line 1195
    :cond_b
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_2

    .line 1212
    :cond_c
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 3

    .prologue
    .line 2055
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 2067
    :cond_0
    :goto_0
    return-void

    .line 2056
    :cond_1
    iget-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2057
    :cond_2
    const-string v1, "VoiceCallCardFragment"

    const-string v2, "animateForAnswerCall...already running"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2060
    :cond_3
    const-string v1, "VoiceCallCardFragment"

    const-string v2, "animateForAnswerCall"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    .line 2062
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateBannerForAnswer()V

    .line 2063
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateInfoCardForAnswer()V

    .line 2064
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

    .line 2065
    .local v0, "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    invoke-interface {v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->animateForAnswerCall()V

    goto :goto_1
.end method

.method public animateForMoveDialpad(Z)V
    .locals 0
    .param p1, "showDialpad"    # Z

    .prologue
    .line 2123
    return-void
.end method

.method public animateForNewOutgoingCall(Landroid/graphics/Point;)V
    .locals 4
    .param p1, "touchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 1824
    const-string v2, "VoiceCallCardFragment"

    const-string v3, "animateForNewOutgoingCall..."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsOutgoingAnimationRunning:Z

    .line 1826
    move-object v1, p1

    .line 1828
    .local v1, "startPoint":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1864
    :goto_0
    return-void

    .line 1830
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1831
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;

    invoke-direct {v2, p0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/graphics/Point;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public animateRevealForNewOutgoingCall()V
    .locals 0

    .prologue
    .line 1868
    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 6

    .prologue
    .line 1531
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 1532
    .local v1, "call":Lcom/android/incallui/Call;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1564
    :cond_0
    :goto_0
    return-void

    .line 1533
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

    .line 1534
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1535
    const-string v3, "VoiceCallCardFragment"

    const-string v4, "activity is null"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1539
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isVideoState()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1540
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 1541
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateTextColor(I)V

    .line 1548
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

    .line 1549
    .local v2, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-nez v2, :cond_5

    .line 1550
    const-string v3, "VoiceCallCardFragment"

    const-string v4, "entry is null"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1544
    .end local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_4
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateTextColor(I)V

    goto :goto_1

    .line 1553
    .restart local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_5
    iget-boolean v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    if-eqz v3, :cond_6

    .line 1554
    const-string v3, "VoiceCallCardFragment"

    const-string v4, "arrangePrimaryLayout: mIsAnswerProcessing"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1558
    :cond_6
    invoke-direct {p0, v1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->relayoutCallInfoContainer(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 1559
    invoke-direct {p0, v1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->relayoutNameNumberTextView(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 1561
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

    .line 1562
    .local v0, "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    invoke-interface {v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->arrangePrimaryLayout()V

    goto :goto_2
.end method

.method public changeCallCardForAM(I)V
    .locals 0
    .param p1, "callState"    # I

    .prologue
    .line 2229
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    .line 2230
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    .line 2231
    return-void
.end method

.method public changeViewForMoveDialpad(Z)V
    .locals 2
    .param p1, "showDialpad"    # Z

    .prologue
    .line 2127
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2130
    :goto_0
    return-void

    .line 2128
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2129
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2128
    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1

    .line 2129
    :cond_2
    const/16 v0, 0x8

    goto :goto_2
.end method

.method public clearAMView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2274
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2275
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2276
    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v5, 0x1

    .line 1352
    const-string v2, "VoiceCallCardFragment"

    const-string v3, "dispatchPopulateAccessibilityEvent"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1353
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_4

    .line 1354
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

    .line 1355
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    .line 1356
    .local v1, "mState":Landroid/widget/TextView;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1357
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

    .line 1358
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1359
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090453

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1364
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1368
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "mState":Landroid/widget/TextView;
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1369
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1376
    :goto_2
    return v5

    .line 1361
    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v1    # "mState":Landroid/widget/TextView;
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1366
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "mState":Landroid/widget/TextView;
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_1

    .line 1372
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1373
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1374
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_2
.end method

.method public getCallerInfoView()Lcom/android/incallui/fragment/view/CallCardCallerInfoView;
    .locals 1

    .prologue
    .line 2378
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    return-object v0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    .line 1781
    new-instance v0, Lcom/android/incallui/InCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    .line 1783
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getMenuRes()I
    .locals 1

    .prologue
    .line 1788
    const-string v0, "support_folder_single_lcd"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1789
    const v0, 0x7f120002

    .line 1790
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f120001

    goto :goto_0
.end method

.method public inflateCallerInfoCardView()V
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10034b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardStub:Landroid/view/ViewStub;

    .line 688
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 689
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    .line 691
    :cond_0
    return-void
.end method

.method protected inflateRecordInfo()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    .line 339
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 341
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100253

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordIcon:Landroid/widget/ImageView;

    .line 342
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100254

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordText:Landroid/widget/TextView;

    .line 343
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100217

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    .line 344
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100255

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    .line 345
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$2;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    .line 354
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isElapsedTimeCTCVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    :cond_0
    return-void
.end method

.method public needToShowMenu()Z
    .locals 3

    .prologue
    .line 1803
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->needToShowMenu()Z

    move-result v0

    .line 1804
    .local v0, "bShowMenu":Z
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1805
    const-string v1, "VoiceCallCardFragment"

    const-string v2, "Bike mode call is showing, needToShowMenu : false"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    const/4 v1, 0x0

    .line 1812
    :goto_0
    return v1

    .line 1808
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isCdmaMultipartyBtnVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1809
    const/4 v0, 0x0

    .line 1810
    const-string v1, "VoiceCallCardFragment"

    const-string v2, "mCdmaMultipartyBtn is showing, needToShowMenu : false"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v1, v0

    .line 1812
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v6, 0x7f090092

    const/4 v5, 0x0

    .line 1729
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1730
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

    .line 1731
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1732
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 1776
    :cond_0
    :goto_0
    return-void

    .line 1733
    :cond_1
    sparse-switch v1, :sswitch_data_0

    .line 1772
    const-string v2, "VoiceCallCardFragment"

    const-string v3, "onClick: call super onClick"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 1735
    :sswitch_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090292

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1736
    invoke-static {v0}, Lcom/android/incallui/util/CommonAppLogging;->endCall_viewContact(Lcom/android/incallui/Call;)V

    .line 1737
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isContactsApplicationEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1738
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 1739
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1741
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->viewContactClicked()V

    goto :goto_0

    .line 1744
    :cond_3
    invoke-static {v0}, Lcom/android/incallui/util/CommonAppLogging;->endCall_addToContact(Lcom/android/incallui/Call;)V

    .line 1745
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isContactsApplicationEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1746
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 1747
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1749
    :cond_4
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->addToContactClicked()V

    goto :goto_0

    .line 1754
    :sswitch_1
    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_resumeCall(Lcom/android/incallui/Call;)V

    .line 1755
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 1756
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto :goto_0

    .line 1761
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.incallui"

    const-string v4, "VOCB"

    const-string v5, "VOCS"

    invoke-static {v2, v3, v4, v5}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    const-string v2, "VoiceCallCardFragment"

    const-string v3, "onClick switch video Button was clicked"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->switchToVideoCallClicked()V

    .line 1767
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1768
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    goto/16 :goto_0

    .line 1733
    :sswitch_data_0
    .sparse-switch
        0x7f1002f7 -> :sswitch_1
        0x7f100324 -> :sswitch_0
        0x7f10032a -> :sswitch_2
        0x7f100419 -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 2341
    const-string v3, "VoiceCallCardFragment"

    const-string v4, "onConfigurationChanged"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2342
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2344
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2345
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    .line 2347
    .local v1, "isHold":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDisplaySize()V

    .line 2348
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 2349
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    .line 2350
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallerInfoCardView()V

    .line 2356
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateEri()V

    .line 2357
    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButtonMargin(Z)V

    .line 2358
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    .line 2359
    return-void

    .end local v1    # "isHold":Z
    :cond_0
    move v1, v2

    .line 2345
    goto :goto_0

    .line 2351
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

    .line 2352
    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    goto :goto_1

    .line 2354
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
    .line 373
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "onDestroy..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 375
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onDestroy()V

    .line 376
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 380
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "onDestroyView..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 384
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->clear()V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->onDestroyView()V

    .line 394
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->onDestroyView()V

    .line 395
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->onDestroyView()V

    .line 397
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onDestroyView()V

    .line 398
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1418
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onPause()V

    .line 1420
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0, p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->onPause(Lcom/android/incallui/fragment/CallCardFragment;)V

    .line 1421
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1393
    const-string v1, "VoiceCallCardFragment"

    const-string v2, "onResume "

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1394
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onResume()V

    .line 1397
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1398
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1399
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1400
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x96

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1407
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

    .line 1408
    .local v0, "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    invoke-interface {v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->onResume()V

    goto :goto_1

    .line 1402
    .end local v0    # "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setAMView(Z)V

    goto :goto_0

    .line 1410
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateCallCardIndicatorArea()V

    .line 1411
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    .line 1412
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDisplaySize()V

    .line 1413
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallCardPriority(I)V

    .line 1414
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 368
    :cond_0
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onStop()V

    .line 369
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f0a01fe

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
    const v4, 0x7f100199

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    .line 258
    const v4, 0x7f10025f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    .line 259
    const v4, 0x7f1002db

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    .line 261
    const v4, 0x7f1000a2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    .line 262
    const v4, 0x7f100413

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoBannerContainer:Landroid/view/View;

    .line 263
    const v4, 0x7f100414

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoDummy:Landroid/view/View;

    .line 264
    const v4, 0x7f10018c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 270
    const v4, 0x7f1001d7

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateContainer:Landroid/view/View;

    .line 271
    const v4, 0x7f100248

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    .line 273
    const v4, 0x7f1002f6

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    .line 274
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 275
    const v4, 0x7f100324

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    .line 276
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v4, :cond_2

    .line 277
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    .line 279
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    .line 280
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 281
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v6

    div-float/2addr v5, v6

    .line 282
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v6

    mul-float/2addr v5, v6

    .line 279
    invoke-virtual {v4, v7, v5}, Landroid/widget/Button;->setTextSize(IF)V

    .line 284
    :cond_2
    const-string v4, "no_receiver_in_call"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 285
    const v4, 0x7f1002f7

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    .line 286
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v4, :cond_3

    .line 287
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    .line 289
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    .line 290
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 291
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v6

    div-float/2addr v5, v6

    .line 292
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v6

    mul-float/2addr v5, v6

    .line 289
    invoke-virtual {v4, v7, v5}, Landroid/widget/Button;->setTextSize(IF)V

    .line 296
    :cond_3
    const v4, 0x7f10031a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    .line 297
    const v4, 0x7f100321

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    .line 298
    const v4, 0x7f100322

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    .line 300
    const-string v4, "voice_call_recording"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 301
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v3

    .line 302
    .local v3, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v3, :cond_4

    .line 303
    invoke-virtual {v3}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    .line 306
    :cond_4
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 307
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 308
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v1

    .line 309
    .local v1, "ansMemoRecorderMgr":Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    if-eqz v1, :cond_5

    .line 310
    invoke-virtual {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->onAMRecorderStateChanged()V

    .line 318
    .end local v1    # "ansMemoRecorderMgr":Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    .end local v3    # "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    :cond_5
    const v4, 0x7f100304

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMultiTouchDummyStub:Landroid/view/ViewStub;

    .line 320
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 321
    const v4, 0x7f100415

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDummyPrimaryCallBannerStub:Landroid/view/ViewStub;

    .line 322
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDummyPrimaryCallBannerStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 323
    const v4, 0x7f100112

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDummyPrimaryCallBanner:Landroid/view/View;

    .line 324
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 325
    const v4, 0x7f100113

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 326
    .local v2, "navigationBar":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 330
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

    .line 331
    .local v0, "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    invoke-interface {v0, p1}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->onViewCreated(Landroid/view/View;)V

    goto :goto_0

    .line 333
    .end local v0    # "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    .line 334
    return-void
.end method

.method public resetAnswerCallAnimator()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2034
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2035
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2051
    :cond_0
    :goto_0
    return-void

    .line 2036
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

    .line 2037
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2038
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->end()V

    .line 2040
    :cond_2
    iput-boolean v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    .line 2041
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    .line 2043
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

    .line 2044
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_3

    .line 2045
    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v5, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v4, v5}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 2047
    :cond_3
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v4, :cond_0

    .line 2048
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->needToShowCallerInfoCardView(I)Z

    move-result v2

    .line 2049
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

    .line 1930
    sget-boolean v4, Lcom/android/incallui/fragment/VoiceCallCardFragment;->sIsWindowRevealed:Z

    if-nez v4, :cond_1

    .line 1943
    :cond_0
    :goto_0
    return-void

    .line 1931
    :cond_1
    const-string v4, "VoiceCallCardFragment"

    const-string v5, "resetRevealAnimator"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1933
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1934
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 1935
    .local v3, "view":Landroid/view/View;
    iget v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayWidth:I

    iget v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1936
    .local v1, "radius":I
    int-to-float v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v6, v6, v4, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    .line 1940
    .local v2, "valueAnimator":Landroid/animation/Animator;
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1941
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 1942
    sput-boolean v6, Lcom/android/incallui/fragment/VoiceCallCardFragment;->sIsWindowRevealed:Z

    goto :goto_0
.end method

.method public setAMView(Z)V
    .locals 5
    .param p1, "isRecording"    # Z

    .prologue
    .line 2243
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2244
    .local v2, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    if-nez v3, :cond_0

    .line 2245
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f10034c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    .line 2246
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_0

    .line 2247
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 2250
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f1001f5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2252
    .local v0, "amStatusImage":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f1001f6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2254
    .local v1, "amStatusText":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 2255
    if-eqz p1, :cond_3

    .line 2256
    const v3, 0x7f020050

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2261
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 2262
    if-eqz p1, :cond_4

    .line 2263
    const v3, 0x7f090090

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2264
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2265
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->updateKeepScreenOnFlag()V

    .line 2271
    :cond_2
    :goto_1
    return-void

    .line 2258
    :cond_3
    const v3, 0x7f02004f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2268
    :cond_4
    const v3, 0x7f09008f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
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
    .line 863
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

    .line 864
    invoke-direct/range {v3 .. v10}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;ZZ)Ljava/lang/CharSequence;

    move-result-object v15

    .line 867
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

    .line 868
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

    .line 869
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

    .line 871
    const/4 v3, 0x4

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    .line 872
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    .line 875
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 876
    const-string v3, "VoiceCallCardFragment"

    const-string v4, "setCallState: current state is multi-party call"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 878
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->displayCtcSubscriberName()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 879
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v3, :cond_2

    .line 880
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->manageCardName(I)V

    .line 999
    :cond_2
    :goto_1
    return-void

    .line 863
    .end local v9    # "isGatewayCall":Z
    .end local v15    # "callStateLabel":Ljava/lang/CharSequence;
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 886
    .restart local v9    # "isGatewayCall":Z
    .restart local v15    # "callStateLabel":Ljava/lang/CharSequence;
    :cond_4
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isIncomingVideoCall()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 887
    const-string v3, "VoiceCallCardFragment"

    const-string v4, "setCallState: isIncomingVideoCall "

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 891
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

    .line 896
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 897
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isVideoState()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 898
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 902
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

    .line 904
    :cond_8
    const-string v3, "VoiceCallCardFragment"

    const-string v4, "not update callend in hold status"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 907
    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v17

    .line 908
    .local v17, "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v3, v0, :cond_a

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    if-ne v0, v3, :cond_b

    .line 909
    :cond_a
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v3

    if-nez v3, :cond_b

    .line 910
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v3

    if-nez v3, :cond_b

    .line 911
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isIncomingAcceptOrRejectByOtherDevice(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 912
    :cond_b
    const-string v3, "VoiceCallCardFragment"

    const-string v4, "skip setCallState : not update callend in current state"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isInLockTaskMode()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v3, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v3, :cond_2

    .line 914
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 920
    :cond_c
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v14

    .line 921
    .local v14, "answerUi":Lcom/android/incallui/AnswerUi;
    if-eqz v14, :cond_d

    invoke-interface {v14}, Lcom/android/incallui/AnswerUi;->isAnswerAnimationRunning()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 922
    const-string v3, "VoiceCallCardFragment"

    const-string v4, "perf - Skip setCallState when answer animation is running"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 925
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    check-cast v11, Lcom/android/incallui/InCallActivity;

    .line 926
    .local v11, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v11, :cond_f

    .line 927
    invoke-virtual {v11}, Lcom/android/incallui/InCallActivity;->isShrinkBackgroundRunning()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 928
    const-string v3, "perf - Skip onCallListChange when scale animation is running"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 931
    :cond_e
    invoke-virtual {v11}, Lcom/android/incallui/InCallActivity;->dismissInCallMenu()V

    .line 932
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/incallui/InCallActivity;->updateStatusBarColor(I)V

    .line 933
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    .line 934
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    .line 937
    :cond_f
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 938
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 950
    :cond_10
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    if-eqz v3, :cond_11

    .line 951
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 954
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v15, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateCallStateLabelForCallState(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 955
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    .line 956
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePhotoViewForCallState(I)V

    .line 957
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryCallMoreMenu()V

    .line 958
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->manageCallStateFocusable(I)V

    .line 959
    const/16 v3, 0x8

    move/from16 v0, p1

    if-ne v0, v3, :cond_16

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showOnHoldText(Z)V

    .line 960
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateJanskyInfo()V

    .line 962
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    const/16 v3, 0xa

    move/from16 v0, p1

    if-ne v0, v3, :cond_12

    .line 963
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_12

    .line 964
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 968
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

    .line 970
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v3, :cond_13

    .line 971
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->needToShowCallerInfoCardView(I)Z

    move-result v18

    .line 972
    .local v18, "needToShow":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v18, :cond_18

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v4, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->clear()V

    .line 976
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

    .line 977
    .local v12, "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    move/from16 v0, p1

    invoke-interface {v12, v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->setCallState(I)V

    goto :goto_6

    .line 939
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

    .line 941
    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    .line 942
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 943
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getCallCardPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v16

    .line 944
    .local v16, "cardPresenter":Lcom/android/incallui/CallCardPresenter;
    if-eqz v16, :cond_15

    .line 945
    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    .line 947
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 959
    .end local v16    # "cardPresenter":Lcom/android/incallui/CallCardPresenter;
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 968
    :cond_17
    const/4 v3, 0x0

    goto :goto_4

    .line 972
    .restart local v18    # "needToShow":Z
    :cond_18
    const/16 v3, 0x8

    goto :goto_5

    .line 980
    .end local v18    # "needToShow":Z
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    .line 981
    const/4 v13, 0x0

    .line 982
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

    .line 984
    :cond_1b
    const/4 v13, 0x1

    .line 992
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

    .line 993
    :cond_1d
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallCardPriority(I)V

    .line 998
    :goto_8
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    goto/16 :goto_1

    .line 985
    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1f

    const/4 v3, 0x3

    move/from16 v0, p1

    if-ne v0, v3, :cond_1f

    .line 986
    const/4 v13, 0x2

    goto :goto_7

    .line 987
    :cond_1f
    const/16 v3, 0xa

    move/from16 v0, p1

    if-ne v0, v3, :cond_1c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1c

    .line 989
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 990
    const/4 v13, 0x3

    goto :goto_7

    .line 995
    :cond_20
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangeBelowButtonLayout(I)V

    goto :goto_8
.end method

.method public setLastestCallTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 2374
    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    .line 2375
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
    .line 733
    const-string v15, "VoiceCallCardFragment"

    const-string v18, "Setting primary call"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v15

    check-cast v15, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v15}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v13

    .line 736
    .local v13, "primaryCall":Lcom/android/incallui/Call;
    if-nez v13, :cond_0

    .line 849
    :goto_0
    return-void

    .line 738
    :cond_0
    invoke-virtual {v13}, Lcom/android/incallui/Call;->getState()I

    move-result v14

    .line 739
    .local v14, "state":I
    const/4 v10, 0x0

    .line 741
    .local v10, "isSrvccConferenceCall":Z
    invoke-virtual {v13}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/incallui/util/CallTypeUtils;->isSrvccConference(Ljava/lang/String;)Z

    move-result v10

    .line 744
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 745
    const-string v15, "VoiceCallCardFragment"

    const-string v18, "setPrimary: current state is multi-party call"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 749
    :cond_1
    const/4 v11, 0x0

    .line 750
    .local v11, "label":Ljava/lang/String;
    const/4 v12, 0x0

    .line 751
    .local v12, "photo":Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 752
    .local v9, "isSipCall":Z
    const/4 v8, 0x0

    .line 753
    .local v8, "isPersonalPhotoAvailable":Z
    const-wide/16 v16, 0x0

    .line 755
    .local v16, "userType":J
    if-eqz p6, :cond_2

    .line 756
    move-object/from16 v0, p6

    iget-object v11, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 757
    move-object/from16 v0, p6

    iget-object v12, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 758
    move-object/from16 v0, p6

    iget-boolean v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    .line 759
    move-object/from16 v0, p6

    iget-boolean v8, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    .line 760
    move-object/from16 v0, p6

    iget-wide v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    move-wide/from16 v16, v0

    .line 763
    :cond_2
    if-nez p4, :cond_3

    if-eqz v10, :cond_4

    .line 764
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getConferenceString(Z)Ljava/lang/String;

    move-result-object p2

    .line 765
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 766
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 767
    const/16 p3, 0x0

    .line 768
    if-eqz v10, :cond_4

    .line 769
    const-string p1, ""

    .line 773
    :cond_4
    const/4 v5, 0x0

    .line 774
    .local v5, "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    if-eqz v13, :cond_5

    .line 775
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v15

    invoke-virtual {v13}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v5

    .line 777
    :cond_5
    if-eqz v5, :cond_a

    .line 778
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v13}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/incallui/util/ContactAgentUtils;->isBizringByMsisdn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 779
    .local v6, "isBizRing":Z
    if-eqz p6, :cond_e

    move-object/from16 v0, p6

    iget-boolean v15, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v15, :cond_e

    const/4 v7, 0x1

    .line 781
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

    .line 782
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 783
    iget-object v0, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    move-object/from16 p2, v0

    .line 784
    const/16 p3, 0x0

    .line 786
    :cond_7
    if-nez v6, :cond_8

    if-nez v7, :cond_9

    .line 787
    :cond_8
    iget-object v15, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->bizImage:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_10

    .line 788
    iget-object v15, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v15, :cond_f

    .line 789
    const-string v15, "VoiceCallCardFragment"

    const-string v18, "coreContact.drawable == null"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v18, 0x7f02031b

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 791
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsDefaultBizRingIcon:Z

    .line 803
    :cond_9
    :goto_2
    iget-object v15, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->bizImage:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_a

    .line 804
    iget-object v15, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->bizImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 809
    .end local v6    # "isBizRing":Z
    .end local v7    # "isContactExists":Z
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 811
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 812
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 821
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 822
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryPhoneNumberTTS(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 824
    if-nez v10, :cond_b

    .line 825
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 828
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryCallMoreMenu()V

    .line 830
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_13

    .line 831
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryBizImage(ZI)V

    .line 835
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallerInfoCardView()V

    .line 836
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setProfileIcon(J)V

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDisplaySize()V

    .line 839
    const-string v15, "tablet_device"

    invoke-static {v15}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 840
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->needToShowVolumeButton()Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showVolumeButton(Z)V

    .line 842
    :cond_c
    const/16 v15, 0xa

    if-ne v14, v15, :cond_d

    .line 843
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showEndCallContactBtn()V

    .line 845
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

    .line 846
    .local v4, "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    move-object/from16 v0, p6

    invoke-interface {v4, v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_5

    .line 779
    .end local v4    # "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    .restart local v6    # "isBizRing":Z
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 793
    .restart local v7    # "isContactExists":Z
    :cond_f
    iget-object v15, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 794
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsDefaultBizRingIcon:Z

    goto/16 :goto_2

    .line 797
    :cond_10
    iget-object v15, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_9

    .line 798
    iget-object v12, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    .line 799
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 814
    .end local v6    # "isBizRing":Z
    .end local v7    # "isContactExists":Z
    :cond_11
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 815
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 817
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 833
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_4

    .line 848
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

    .line 1027
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    .line 1028
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setPrimaryCallElapsedTime(Lcom/android/incallui/fragment/VoiceCallCardFragment;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 1032
    :cond_1
    if-eqz p1, :cond_6

    .line 1033
    iput-object p2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    .line 1034
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1036
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1037
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->sendBroadcastContactCallState(Landroid/content/Context;)V

    .line 1039
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1040
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1041
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1044
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1046
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1048
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getCallTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setTTS(JLandroid/view/View;)V

    .line 1055
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1056
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    goto :goto_0

    .line 1052
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1053
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
    .line 594
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-virtual {v0, p0, p1}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimaryCityId(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    .line 597
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

    .line 441
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    invoke-static {v10, v6, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 442
    .local v1, "call":Lcom/android/incallui/Call;
    if-nez v1, :cond_0

    .line 491
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 444
    const-string v6, "VoiceCallCardFragment"

    const-string v7, "setPrimaryImage: current state is multi-party call"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 449
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_3

    .line 450
    if-eqz p2, :cond_2

    move-object v6, p1

    :cond_2
    invoke-virtual {v0, v6}, Lcom/android/incallui/InCallActivity;->updateGradientColor(Landroid/graphics/drawable/Drawable;)V

    .line 453
    :cond_3
    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 454
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f020398

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 455
    const/4 p2, 0x1

    .line 458
    :cond_4
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 459
    :cond_5
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    invoke-static {v6}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v6

    if-nez v6, :cond_6

    .line 460
    const/4 p2, 0x0

    .line 462
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

    .line 464
    move v5, p2

    .line 465
    .local v5, "showPhotoContainer":Z
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 466
    :cond_7
    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 467
    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_c

    if-eqz p1, :cond_c

    .line 468
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v6, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    .line 469
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const v10, 0x106000d

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 479
    :cond_8
    :goto_1
    if-eqz v5, :cond_e

    .line 480
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

    .line 481
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

    .line 482
    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v4, :cond_f

    move v6, v8

    :goto_3
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    .line 483
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 484
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 487
    :cond_a
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    if-ne v6, v9, :cond_10

    move v3, v7

    .line 488
    .local v3, "isHold":Z
    :goto_4
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v3, 0x0

    .line 489
    :cond_b
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    invoke-direct {p0, v3, v1, v6}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForHoldPhoto(ZLcom/android/incallui/Call;I)V

    .line 490
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    goto/16 :goto_0

    .line 470
    .end local v3    # "isHold":Z
    .end local v4    # "needToShowPhoto":Z
    :cond_c
    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    .line 471
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f0a034a

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 472
    .local v2, "diameter":I
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-static {v6, p1, v2}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 473
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v6, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    goto/16 :goto_1

    .line 476
    .end local v2    # "diameter":I
    :cond_d
    const-string v6, "VoiceCallCardFragment"

    const-string v10, "setPrimaryImage: duplicated image"

    invoke-static {v6, v10, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_e
    move v4, v8

    .line 480
    goto :goto_2

    .restart local v4    # "needToShowPhoto":Z
    :cond_f
    move v6, v9

    .line 482
    goto :goto_3

    :cond_10
    move v3, v8

    .line 487
    goto :goto_4
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 643
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 649
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    .line 650
    return-void

    .line 647
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
    .line 415
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "nameDirection":I
    if-eqz p2, :cond_4

    .line 426
    const/4 v0, 0x3

    .line 427
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

    .line 428
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0

    .line 432
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setPrimaryNameSize(Ljava/lang/String;F)F
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "textSize"    # F

    .prologue
    .line 2279
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 2280
    .local v1, "mPaint":Landroid/graphics/Paint;
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2282
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v4, v5

    .line 2283
    .local v4, "mTextWidth":I
    move v2, p2

    .line 2284
    .local v2, "mTextSize":F
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a008d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2286
    .local v0, "mMinTextSize":F
    :cond_0
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 2287
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2288
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v4, v5

    .line 2289
    const/high16 v5, 0x40000000    # 2.0f

    sub-float/2addr v2, v5

    .line 2290
    cmpg-float v5, v2, v0

    if-gez v5, :cond_0

    move v3, v2

    .line 2294
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
    .line 602
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 616
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 610
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
    .locals 1
    .param p1, "phoneNumberLocator"    # Ljava/lang/String;

    .prologue
    .line 2327
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v0, :cond_0

    .line 2328
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v0, p0, p1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setPrimaryPhoneNumberLocator(Lcom/android/incallui/fragment/VoiceCallCardFragment;Ljava/lang/String;)V

    .line 2330
    :cond_0
    return-void
.end method

.method public setPrimaryPhoneNumberTTS(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 620
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 621
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 626
    if-eqz p2, :cond_3

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 627
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    .line 628
    .local v0, "ttsString":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->time:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 629
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

    .line 631
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 633
    .end local v0    # "ttsString":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 636
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setProfileContent(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2159
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

    .line 2160
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v0, :cond_0

    .line 2161
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setProfileContent(Ljava/lang/String;)V

    .line 2163
    :cond_0
    return-void
.end method

.method public setProfileForwardingContent(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2167
    const v1, 0x7f020360

    .line 2168
    .local v1, "iconRes":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09009d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2169
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v2, v1, v0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setProfileForwardingContent(ILjava/lang/String;Ljava/lang/String;)V

    .line 2170
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 403
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "getView is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :goto_0
    return-void

    .line 406
    :cond_0
    if-eqz p1, :cond_1

    .line 407
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 409
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
    .line 1795
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->showMenu(Z)V

    .line 1796
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v0, :cond_0

    .line 1797
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0, p0, p1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showMenu(Lcom/android/incallui/fragment/CallCardFragment;Z)V

    .line 1799
    :cond_0
    return-void
.end method

.method public showModifyStateInfoBanner(ZLjava/lang/String;)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v0, :cond_0

    .line 2321
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showModifyStateInfoBanner(ZLjava/lang/String;)V

    .line 2323
    :cond_0
    return-void
.end method

.method public updateCallCardPriority()V
    .locals 1

    .prologue
    .line 2476
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

    .line 2477
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallCardPriority(I)V

    .line 2479
    :cond_1
    return-void
.end method

.method public updateCallerInfoOrgView(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    if-eqz v0, :cond_0

    .line 2335
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-virtual {v0, p0, p1}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateCallerInfoOrgView(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    .line 2337
    :cond_0
    return-void
.end method

.method public updateEri()V
    .locals 1

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    if-eqz v0, :cond_0

    .line 2307
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateEri()V

    .line 2309
    :cond_0
    return-void
.end method

.method public updateJanskyInfo()V
    .locals 1

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mJanskyView:Lcom/android/incallui/fragment/view/CallCardJanskyView;

    if-eqz v0, :cond_0

    .line 2314
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mJanskyView:Lcom/android/incallui/fragment/view/CallCardJanskyView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardJanskyView;->updateJanskyInfo()V

    .line 2316
    :cond_0
    return-void
.end method

.method public updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V
    .locals 1
    .param p1, "state"    # Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;
    .param p2, "block"    # I

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    if-eqz v0, :cond_0

    .line 1818
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardMcidView;->updatePhotoringState(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V

    .line 1820
    :cond_0
    return-void
.end method

.method public updateSmartCallInfo(Lcom/android/incallui/Call;Z)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isTimeout"    # Z

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSmartCallView:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    if-eqz v0, :cond_0

    .line 2363
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSmartCallView:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->updateSmartCallInfo(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;Z)V

    .line 2366
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v0, :cond_2

    .line 2367
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 2368
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setSmartCallContent()V

    .line 2371
    :cond_2
    return-void
.end method

.method public updateVolteView(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v0, :cond_0

    .line 2300
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->setCallState(I)V

    .line 2302
    :cond_0
    return-void
.end method
