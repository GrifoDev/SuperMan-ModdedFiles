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

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$1;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/fragment/VoiceCallCardFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsMoveInfoAnimationRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setViewStateBeforeOutgoingAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getRevealAnimator(Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/fragment/VoiceCallCardFragment;)Landroid/animation/Animator;
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getRevealViewsAnimator()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangeBelowButtonLayout(I)V

    return-void
.end method

.method private animateBannerForAnswer()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDummyPrimaryCallBanner:Landroid/view/View;

    if-nez v2, :cond_0

    const-string v2, "VoiceCallCardFragment"

    const-string v3, "animateBannerForAnswer: mDummyPrimaryCallBanner is null"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDummyPrimaryCallBanner:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0285

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

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

    new-instance v2, Lcom/android/incallui/fragment/VoiceCallCardFragment$10;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$10;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v5, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private animateForEndCall()V
    .locals 10

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "VoiceCallCardFragment"

    const-string v6, "animateForEndCall: running"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "VoiceCallCardFragment"

    const-string v6, "animateForEndCall..."

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/SystemServiceUtils;->boostCPU(Landroid/content/Context;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d002a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

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

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-gtz v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-lez v5, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v5

    if-nez v5, :cond_5

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

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0092

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v4, v5, v6

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    neg-float v9, v4

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d002c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v5}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_5
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->animateForHideBackground()V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateForHoldCall(I)V
    .locals 12

    const/16 v11, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string v6, "no_receiver_in_call"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ne p1, v4, :cond_9

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_3
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->end()V

    :cond_4
    const-string v6, "VoiceCallCardFragment"

    const-string v7, "animateForHoldCall"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v10, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d002a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-gtz v6, :cond_6

    :cond_5
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-lez v6, :cond_8

    :cond_6
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v6

    if-nez v6, :cond_8

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

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0092

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v3, v6, v7

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v4, [F

    neg-float v9, v3

    aput v9, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v6, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v0, v7, v5

    aput-object v2, v7, v4

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_1
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    :cond_7
    :goto_2
    if-ne p1, v4, :cond_c

    :goto_3
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButtonMargin(Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    :cond_9
    if-ne p1, v10, :cond_7

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_a
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->end()V

    :cond_b
    const-string v6, "VoiceCallCardFragment"

    const-string v7, "animateForActiveCall"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v4, [F

    aput v9, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v6, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v10, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v0, v7, v5

    aput-object v2, v7, v4

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    :cond_c
    move v4, v5

    goto/16 :goto_3

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private animateForHoldPhoto(ZLcom/android/incallui/Call;I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v4, 0x7f0f007f

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

    :cond_1
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v1, 0x3

    if-ne p3, v1, :cond_4

    iget v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$4;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_4
    invoke-static {p2}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private animateForMoveInfo()V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsMoveInfoAnimationRunning:Z

    if-eqz v2, :cond_0

    const-string v2, "VoiceCallCardFragment"

    const-string v3, "animateForMoveInfo: already running"

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsMoveInfoAnimationRunning:Z

    const-string v2, "VoiceCallCardFragment"

    const-string v3, "animateForMoveInfo"

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoBannerContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    aput v0, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/incallui/fragment/VoiceCallCardFragment$5;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$5;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/incallui/fragment/VoiceCallCardFragment$6;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$6;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v6, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private animateInfoCardForAnswer()V
    .locals 6

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$11;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$11;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method private arrangeBelowButtonLayout(I)V
    .locals 4

    const/4 v3, 0x3

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

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isVideoState()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p1, v3, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showEndCallContactBtn()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForEndCall()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForHoldCall(I)V

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showEndCallContactBtn()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForEndCall()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButton()V

    goto :goto_0
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;ZZ)Ljava/lang/CharSequence;
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_0
    const-string v4, "VoiceCallCardFragment"

    const-string v5, "getCallStateLabelFromState getView() or context is empty: "

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    :goto_0
    :pswitch_0
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p5, :cond_5

    move v3, v4

    :goto_1
    if-eqz v3, :cond_6

    if-nez p6, :cond_6

    move v2, v4

    :goto_2
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const/4 p1, 0x4

    :cond_4
    packed-switch p1, :pswitch_data_0

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

    :cond_5
    move v3, v5

    goto :goto_1

    :cond_6
    move v2, v5

    goto :goto_2

    :pswitch_2
    if-eqz v2, :cond_7

    move-object v0, p5

    goto :goto_0

    :cond_7
    const/4 v6, 0x2

    if-ne p3, v6, :cond_8

    const v4, 0x7f090024

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    if-ne p3, v4, :cond_9

    const v4, 0x7f090025

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, 0x7f090463

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    if-eqz v3, :cond_a

    const v6, 0x7f090017

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p5, v7, v5

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    const-string v6, "spr_display_hd_icon"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v0, ""

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v6

    if-eqz v6, :cond_c

    const v6, 0x7f090464

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "assisted_dialing_enable"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1, v0}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getDialingLabelFromAssistedDialing(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    const-string v4, "spr_display_hd_icon"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v0, ""

    goto/16 :goto_0

    :cond_d
    const v4, 0x7f090022

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    if-eqz v2, :cond_e

    const v6, 0x7f090038

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    const v4, 0x7f09001f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p4}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v6

    if-eqz v6, :cond_f

    const v6, 0x7f0900cd

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f090018

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    const v4, 0x7f09001b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

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

    if-eqz p1, :cond_0

    const v0, 0x7f020132

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_0
    const v0, 0x7f020136

    goto :goto_0
.end method

.method private getConferenceString(Z)Ljava/lang/String;
    .locals 4

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

    const-string v1, "ims_voice_conference_vzw"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VoiceCallCardFragment"

    const-string v2, "getConferenceString return null"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const v0, 0x7f09001b

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

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    iget v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayWidth:I

    div-int/lit8 v3, v7, 0x2

    iget v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    div-int/lit8 v4, v7, 0x2

    if-eqz p1, :cond_0

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    :cond_0
    iget v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayWidth:I

    iget v8, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v7, 0x0

    int-to-float v8, v2

    invoke-static {v6, v3, v4, v7, v8}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0054

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v8, v1

    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v7, Lcom/android/incallui/fragment/VoiceCallCardFragment$9;

    invoke-direct {v7, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$9;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v5, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v5
.end method

.method private getRevealViewsAnimator()Landroid/animation/Animator;
    .locals 7

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

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

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/incallui/fragment/VoiceCallCardFragment$8;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$8;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private isEnabledEndCallContactButton()Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "support_twophone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isTwoPhoneUser(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isTwoPhoneUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method private isLowQualityImage(Landroid/graphics/drawable/Drawable;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    :try_start_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/16 v5, 0x140

    if-ge v2, v5, :cond_0

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

    goto :goto_0

    :catch_0
    move-exception v1

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

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    :cond_0
    return v1
.end method

.method private manageCallStateFocusable(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_0
.end method

.method private needToShowCallerInfoCardView(I)Z
    .locals 6

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v4, "feature_dcm"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->getSugudenAnswerSetting(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SugudenGuideShowNeverAgain"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCallerInfoCardMode()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v4}, Lcom/android/incallui/fragment/view/CallCardVolteView;->isShowEpdgNotifyBanner()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_4

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

    if-eqz v1, :cond_4

    iget v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00e6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    if-ge v4, v2, :cond_5

    iget v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    iget v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayWidth:I

    if-lt v4, v5, :cond_0

    :cond_5
    const/4 v4, 0x4

    if-eq p1, v4, :cond_6

    const/4 v4, 0x5

    if-ne p1, v4, :cond_0

    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method private relayoutCallInfoContainer(ILcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 11

    const/16 v10, 0xc

    const/16 v9, 0xa

    const/16 v8, 0xd

    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v5

    or-int/2addr v3, v5

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v3, :cond_5

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/view/CallCardMcidView;->isPhotoringShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0513

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    invoke-virtual {v0, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_1
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mTwoPhoneView:Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mTwoPhoneView:Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->isTwoPhoneTextVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02d3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v2, v5

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0093

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v2, v5

    :cond_2
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->isEriInfoTextVisible()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a028a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1
.end method

.method private relayoutNameNumberTextView(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 15

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

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

    :goto_1
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_a

    const/4 v3, 0x1

    :goto_2
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_b

    const/4 v2, 0x1

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

    :goto_4
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a00b7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setMaxWidth(I)V

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0086

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    const-string v11, "feature_multisim"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a011a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v11

    if-eqz v11, :cond_d

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

    :cond_5
    :goto_5
    if-eqz v0, :cond_7

    const/4 v7, 0x0

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

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getVisibility()I

    move-result v11

    if-nez v11, :cond_7

    :cond_6
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0287

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0287

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a032f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    :cond_7
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_8
    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v11, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_6
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_d
    if-nez v3, :cond_e

    if-eqz v2, :cond_f

    :cond_e
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a008d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    goto/16 :goto_5

    :cond_f
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_10

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

    if-eqz v1, :cond_5

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v11}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isRichScreen()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0564

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v14

    div-float/2addr v13, v14

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v14

    mul-float/2addr v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_5

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

    :cond_11
    iget-object v11, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6
.end method

.method private setBizRingVisibility(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizOutgoing:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizIncoming:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private setCallCardPriority(I)V
    .locals 2

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

    :cond_1
    const-string v1, "animation is running, return setCallCardPriority"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

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

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/ViewTreeObserver;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private setCallerInfoCardView()V
    .locals 10

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->needToShowCallerInfoCardView(I)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-boolean v7, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryCompleted:Z

    if-eqz v7, :cond_5

    const-string v7, "VoiceCallCardFragment"

    const-string v8, "- queryCompleted"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->inflateCallerInfoCardView()V

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v7, :cond_5

    const-string v7, "VoiceCallCardFragment"

    const-string v8, "setCallerInfoCardView: update"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v9, v4, v9}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->update(Landroid/content/Context;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v7, v3, Lcom/android/incallui/coreapps/CoreAppsContact;->status:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iget-object v8, v3, Lcom/android/incallui/coreapps/CoreAppsContact;->status:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setProfileContent(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0078

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v2, v7

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0288

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v2, v7

    :cond_3
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v7, v9, v9}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    :cond_4
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v7}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v7, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v7, v9}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    :cond_5
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallPlusView:Lcom/android/incallui/fragment/view/CallCardCallPlusView;

    invoke-virtual {v7}, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->isCrane()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v7}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a043b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v7, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_6
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

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

    goto :goto_0
.end method

.method private setPrimaryBizImage(ZI)V
    .locals 12

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v10, 0x8

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizIncoming:Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizOutgoing:Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

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

    invoke-static {p2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {p2}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_3
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a038c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v6, v7, p2}, Lcom/android/incallui/util/GraphicResourceUtils;->getRoundRectDrawableForBizRing(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizOutgoing:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v6, v7}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizIncoming:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    invoke-static {p2}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizIncoming:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v6, v7}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizOutgoing:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_7
    const/4 v7, 0x3

    if-ne p2, v7, :cond_8

    iget v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_8

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizIncoming:Landroid/widget/ImageView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v7, Lcom/android/incallui/fragment/VoiceCallCardFragment$3;

    invoke-direct {v7, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$3;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_8
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    :cond_9
    iget-boolean v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsDefaultBizRingIcon:Z

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    const v8, 0x106000d

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/16 v7, 0xa

    if-ne p2, v7, :cond_c

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_3
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0346

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v7, v8, v4}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v7, v8}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    if-ne p2, v10, :cond_e

    const/4 v5, 0x1

    :goto_4
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v5, 0x0

    :cond_a
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-static {v7, v11, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    invoke-direct {p0, v5, v3, p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForHoldPhoto(ZLcom/android/incallui/Call;I)V

    :cond_b
    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizIncoming:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizOutgoing:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_c
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0150

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_3

    :cond_d
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0201e6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    :cond_e
    move v5, v6

    goto :goto_4

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setPrimaryCallMoreMenu()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->needToShowMenu()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showMenu(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallActivity;->setPrimaryCallMenuForDialpad(Z)V

    :cond_0
    return-void
.end method

.method private setViewStateBeforeOutgoingAnimation()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/CallButtonUi;->setViewStateBeforeOutgoingAnimation()V

    :cond_1
    return-void
.end method

.method private showEndCallContactBtn()V
    .locals 9

    const v8, 0x7f09029e

    const v7, 0x7f090252

    const/4 v6, 0x0

    const/16 v5, 0x8

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v3, 0x40

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

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

    if-eqz v2, :cond_0

    iget-boolean v1, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    const-string v3, "support_twophone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v1, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->canViewContactDetails:Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/incallui/util/InCallUtils;->isShowContactMenu(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_4
    if-nez v1, :cond_6

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableIMSConferenceInfo()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isEnabledEndCallContactButton()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private showOnHoldText(Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05001f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private switchToVideoCallClicked()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/BatteryUtils;->isLowBatt()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/BatteryUtils;->isCriticalLowBatt()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/BatteryUtils;->isCriticalLowBatt()Z

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/BatteryUtils;->showLowBattToast(Z)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto :goto_0
.end method

.method private updateBelowButton()V
    .locals 11

    const v10, 0x7f0a0083

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v8, 0x8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

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

    :cond_3
    const/4 v5, 0x4

    if-ne v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->end()V

    :cond_4
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->end()V

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

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->end()V

    :cond_6
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    :cond_7
    if-ne v1, v8, :cond_c

    const-string v5, "no_receiver_in_call"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-gtz v5, :cond_9

    :cond_8
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-lez v5, :cond_a

    :cond_9
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v5

    if-nez v5, :cond_a

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

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0092

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v5, v6

    div-float v2, v5, v9

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    neg-float v6, v2

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_b
    :goto_1
    if-ne v1, v8, :cond_d

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButtonMargin(Z)V

    goto/16 :goto_0

    :cond_c
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getVisibility()I

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_d
    move v3, v4

    goto :goto_2

    :cond_e
    const/4 v3, 0x2

    if-ne v1, v3, :cond_11

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    :cond_f
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    :cond_10
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButtonMargin(Z)V

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0xa

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-gtz v3, :cond_13

    :cond_12
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    :cond_13
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_0

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

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0092

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    div-float v2, v3, v9

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    neg-float v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_0
.end method

.method private updateBelowButtonMargin(Z)V
    .locals 3

    const v2, 0x7f0a0083

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

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

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isVideoState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallElapsedTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    :cond_1
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    :cond_2
    iput-object p2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->manageCallEndTimeBlink(I)V

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->removeMessageForBlinkTime()V

    :cond_3
    const/16 v0, 0x9

    if-ne p1, v0, :cond_4

    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    :cond_4
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "not update stateLabel for blink call time"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz p3, :cond_5

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object p2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "not update stateLabel for blink call time"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private updatePanelForCallState(I)V
    .locals 9

    const/16 v8, 0xd

    const/4 v7, 0x6

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "VoiceCallCardFragment"

    const-string v5, "activity is null"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "VoiceCallCardFragment"

    const-string v5, "fragment is detached from activity, return"

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v4

    if-nez v4, :cond_3

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

    :cond_3
    iget-boolean v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsMoveInfoAnimationRunning:Z

    if-eqz v4, :cond_4

    const-string v4, "VoiceCallCardFragment"

    const-string v5, "updatePanelForCallState: animation is running"

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 p1, 0x4

    :cond_5
    const/4 v2, -0x1

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0285

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    :cond_6
    const/4 v4, 0x4

    if-eq p1, v4, :cond_7

    const/4 v4, 0x5

    if-eq p1, v4, :cond_7

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_7
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0286

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    :goto_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    div-int/lit8 v2, v4, 0x2

    :cond_8
    :goto_2
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0085

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto :goto_1

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

    :cond_c
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForMoveInfo()V

    goto/16 :goto_0

    :cond_d
    if-eq p1, v8, :cond_e

    if-ne p1, v7, :cond_8

    :cond_e
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-nez v4, :cond_8

    iget v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    int-to-double v4, v4

    const-wide v6, 0x3fdccccccccccccdL    # 0.45

    mul-double/2addr v4, v6

    double-to-int v1, v4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/incallui/CallButtonUi;->getUpperViewMarginTop()I

    move-result v4

    add-int/2addr v1, v4

    :cond_f
    move v2, v1

    goto :goto_2
.end method

.method private updatePhotoViewForCallState(I)V
    .locals 6

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "VoiceCallCardFragment"

    const-string v3, "updatePhotoViewForCallState getView() or context is empty: "

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

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

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    if-eq v2, p1, :cond_0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    const/16 v2, 0xa

    if-ne p1, v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f014f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    iget-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-direct {p0, v2, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryBizImage(ZI)V

    :cond_6
    iget v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_7

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_7
    iget-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v2, :cond_0

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

    :cond_8
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v5}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-direct {p0, v5}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setBizRingVisibility(Z)V

    goto/16 :goto_0

    :cond_9
    iget v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    if-eq v2, v4, :cond_a

    if-ne p1, v4, :cond_4

    :cond_a
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1

    :cond_b
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_2

    :cond_c
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "VoiceCallCardFragment"

    const-string v2, "animateForAnswerCall...already running"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "VoiceCallCardFragment"

    const-string v2, "animateForAnswerCall"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateBannerForAnswer()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateInfoCardForAnswer()V

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

    invoke-interface {v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->animateForAnswerCall()V

    goto :goto_1
.end method

.method public animateForMoveDialpad(Z)V
    .locals 0

    return-void
.end method

.method public animateForNewOutgoingCall(Landroid/graphics/Point;)V
    .locals 4

    const-string v2, "VoiceCallCardFragment"

    const-string v3, "animateForNewOutgoingCall..."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsOutgoingAnimationRunning:Z

    move-object v1, p1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;

    invoke-direct {v2, p0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/graphics/Point;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public animateRevealForNewOutgoingCall()V
    .locals 0

    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "VoiceCallCardFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "arrangePrimaryLayout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    invoke-static {v6}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "VoiceCallCardFragment"

    const-string v5, "activity is null"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAMView()V

    const/4 v2, 0x4

    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isVideoState()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateTextColor(I)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    if-nez v3, :cond_6

    const-string v4, "VoiceCallCardFragment"

    const-string v5, "entry is null"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateTextColor(I)V

    goto :goto_1

    :cond_6
    iget-boolean v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    if-eqz v4, :cond_7

    const-string v4, "VoiceCallCardFragment"

    const-string v5, "arrangePrimaryLayout: mIsAnswerProcessing"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, v2, v1, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->relayoutCallInfoContainer(ILcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->relayoutNameNumberTextView(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;

    invoke-interface {v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->arrangePrimaryLayout()V

    goto :goto_2
.end method

.method public changeCallCardForAM(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDummyPrimaryCallBanner:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public changeViewForMoveDialpad(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    goto :goto_2
.end method

.method public clearAMView()V
    .locals 3

    const/16 v2, 0x8

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "clearAMView"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const-string v2, "VoiceCallCardFragment"

    const-string v3, "dispatchPopulateAccessibilityEvent"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_4

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

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090464

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    :goto_2
    return v5

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_2
.end method

.method public getCallerInfoView()Lcom/android/incallui/fragment/view/CallCardCallerInfoView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    return-object v0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/InCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getMenuRes()I
    .locals 1

    const-string v0, "support_folder_single_lcd"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120002

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f120001

    goto :goto_0
.end method

.method public inflateCallerInfoCardView()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100356

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100231

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    :cond_0
    return-void
.end method

.method protected inflateRecordInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100212

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100261

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100225

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100263

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$2;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isElapsedTimeCTCVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public needToShowMenu()Z
    .locals 3

    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->needToShowMenu()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VoiceCallCardFragment"

    const-string v2, "Bike mode call is showing, needToShowMenu : false"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isCdmaMultipartyBtnVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    const-string v1, "VoiceCallCardFragment"

    const-string v2, "mCdmaMultipartyBtn is showing, needToShowMenu : false"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSetupWizardComplete()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    const-string v1, "VoiceCallCardFragment"

    const-string v2, "isSetupWizardComplete : false"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const v6, 0x7f090094

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

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

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sparse-switch v1, :sswitch_data_0

    const-string v2, "VoiceCallCardFragment"

    const-string v3, "onClick: call super onClick"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onClick(Landroid/view/View;)V

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09029e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/android/incallui/util/CommonAppLogging;->endCall_viewContact(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isContactsApplicationEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->viewContactClicked()V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/android/incallui/util/CommonAppLogging;->endCall_addToContact(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isContactsApplicationEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->addToContactClicked()V

    goto :goto_0

    :sswitch_1
    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_resumeCall(Lcom/android/incallui/Call;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.incallui"

    const-string v4, "VOCB"

    const-string v5, "VOCS"

    invoke-static {v2, v3, v4, v5}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "VoiceCallCardFragment"

    const-string v3, "onClick switch video Button was clicked"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->switchToVideoCallClicked()V

    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f100305 -> :sswitch_1
        0x7f10032f -> :sswitch_0
        0x7f100335 -> :sswitch_2
        0x7f100425 -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v2, 0x0

    const-string v3, "VoiceCallCardFragment"

    const-string v4, "onConfigurationChanged"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDisplaySize()V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallerInfoCardView()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateEri()V

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButtonMargin(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

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

    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallCardPriority(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardMcidView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardCallPlusView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallPlusView:Lcom/android/incallui/fragment/view/CallCardCallPlusView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallPlusView:Lcom/android/incallui/fragment/view/CallCardCallPlusView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSmartCallView:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSmartCallView:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mTwoPhoneView:Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mTwoPhoneView:Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/incallui/fragment/view/CallCardSugudenView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardSugudenView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSugudenView:Lcom/android/incallui/fragment/view/CallCardSugudenView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSugudenView:Lcom/android/incallui/fragment/view/CallCardSugudenView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/incallui/fragment/view/CallCardJanskyView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardJanskyView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mJanskyView:Lcom/android/incallui/fragment/view/CallCardJanskyView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mJanskyView:Lcom/android/incallui/fragment/view/CallCardJanskyView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/CallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f04016a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "onDestroy..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "onDestroyView..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->onDestroyView()V

    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onPause()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0, p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->onPause(Lcom/android/incallui/fragment/CallCardFragment;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    const-string v1, "VoiceCallCardFragment"

    const-string v2, "onResume "

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onResume()V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;

    invoke-interface {v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->onResume()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateCallCardIndicatorArea()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDisplaySize()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallCardPriority(I)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12

    const v11, 0x7f0a01fa

    const v10, 0x7f0a008c

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/CallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v4, 0x7f100254

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateCallCardIndicatorArea()V

    const v4, 0x7f100297

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNavigationBarArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateNavigationBar()V

    const v4, 0x7f100310

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f1001dc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    const v4, 0x7f100198

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v6

    div-float/2addr v5, v6

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    const v4, 0x7f1000e9

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    const v4, 0x7f10010e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v6

    div-float/2addr v5, v6

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    const v4, 0x7f1001da

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const v4, 0x7f1000a5

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const v4, 0x7f10031a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizIncoming:Landroid/widget/ImageView;

    const v4, 0x7f10031b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizOutgoing:Landroid/widget/ImageView;

    const v4, 0x7f10031c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    const v4, 0x7f100191

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const v4, 0x7f10019b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    const v4, 0x7f100193

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    const v4, 0x7f100197

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const v4, 0x7f100324

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabelDummy:Landroid/view/View;

    const v4, 0x7f100199

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const v4, 0x7f10026d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    const v4, 0x7f1002e9

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    const v4, 0x7f1000a2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    const v4, 0x7f10041f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoBannerContainer:Landroid/view/View;

    const v4, 0x7f100420

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoDummy:Landroid/view/View;

    const v4, 0x7f10018c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v4, 0x7f1001d7

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateContainer:Landroid/view/View;

    const v4, 0x7f100256

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    const v4, 0x7f100304

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v4, :cond_3

    const v4, 0x7f10032f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v6

    div-float/2addr v5, v6

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v4, v7, v5}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_2
    const-string v4, "no_receiver_in_call"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const v4, 0x7f100305

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v6

    div-float/2addr v5, v6

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v4, v7, v5}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_3
    const v4, 0x7f100325

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    const v4, 0x7f10032c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    const v4, 0x7f10032d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    const-string v4, "voice_call_recording"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    :cond_4
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->onAMRecorderStateChanged()V

    :cond_5
    const v4, 0x7f10030e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMultiTouchDummyStub:Landroid/view/ViewStub;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    const v4, 0x7f100421

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDummyPrimaryCallBannerStub:Landroid/view/ViewStub;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDummyPrimaryCallBannerStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v4, 0x7f100112

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDummyPrimaryCallBanner:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    const v4, 0x7f100113

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;

    invoke-interface {v0, p1}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->onViewCreated(Landroid/view/View;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    return-void
.end method

.method public resetAnswerCallAnimator()V
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

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

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iput-boolean v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

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

    if-eqz v1, :cond_3

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v5, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v4, v5}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->needToShowCallerInfoCardView(I)Z

    move-result v2

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

    const/4 v6, 0x0

    sget-boolean v4, Lcom/android/incallui/fragment/VoiceCallCardFragment;->sIsWindowRevealed:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "VoiceCallCardFragment"

    const-string v5, "resetRevealAnimator"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayWidth:I

    iget v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v6, v6, v4, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    sput-boolean v6, Lcom/android/incallui/fragment/VoiceCallCardFragment;->sIsWindowRevealed:Z

    goto :goto_0
.end method

.method public setAMView(Z)V
    .locals 8

    const/4 v5, 0x0

    const-string v4, "VoiceCallCardFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAMView isRecording "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "VoiceCallCardFragment"

    const-string v5, "setAMView view is null"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_6

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->manageAnswerMemoRecord(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    if-nez v4, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f100357

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f1001f5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f1001f6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz p1, :cond_8

    const v4, 0x7f020050

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    :goto_3
    if-eqz v1, :cond_0

    if-eqz p1, :cond_9

    const v4, 0x7f090092

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->updateKeepScreenOnFlag()V

    goto/16 :goto_0

    :cond_6
    move v4, v5

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_2

    :cond_8
    const v4, 0x7f02004f

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_9
    const v4, 0x7f090091

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
    .locals 19

    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v9, 0x1

    :goto_0
    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v10, p10

    invoke-direct/range {v3 .. v10}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;ZZ)Ljava/lang/CharSequence;

    move-result-object v15

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

    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 p1, 0x4

    :cond_0
    const/4 v3, 0x4

    move/from16 v0, p1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    move/from16 v0, p1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "VoiceCallCardFragment"

    const-string v4, "setCallState: current state is multi-party call"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->displayCtcSubscriberName()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->manageCardName(I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isIncomingVideoCall()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "VoiceCallCardFragment"

    const-string v4, "setCallState: isIncomingVideoCall "

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    move/from16 v0, p1

    if-ne v3, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isVideoState()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    :cond_8
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v3, :cond_a

    const/16 v3, 0xa

    move/from16 v0, p1

    if-eq v0, v3, :cond_9

    const/16 v3, 0x9

    move/from16 v0, p1

    if-ne v0, v3, :cond_a

    :cond_9
    const-string v3, "VoiceCallCardFragment"

    const-string v4, "not update callend in hold status"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v17

    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v3, v0, :cond_b

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    if-ne v0, v3, :cond_c

    :cond_b
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isIncomingAcceptOrRejectByOtherDevice(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    const-string v3, "VoiceCallCardFragment"

    const-string v4, "skip setCallState : not update callend in current state"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isInLockTaskMode()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v3, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_d
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v14

    if-eqz v14, :cond_e

    invoke-interface {v14}, Lcom/android/incallui/AnswerUi;->isAnswerAnimationRunning()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "VoiceCallCardFragment"

    const-string v4, "perf - Skip setCallState when answer animation is running"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    check-cast v11, Lcom/android/incallui/InCallActivity;

    if-eqz v11, :cond_11

    invoke-virtual {v11}, Lcom/android/incallui/InCallActivity;->isShrinkBackgroundRunning()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "perf - Skip onCallListChange when scale animation is running"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    move/from16 v0, p1

    if-eq v3, v0, :cond_10

    invoke-virtual {v11}, Lcom/android/incallui/InCallActivity;->dismissInCallMenu()V

    :cond_10
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/incallui/InCallActivity;->updateStatusBarColor(I)V

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    :cond_11
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v15, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateCallStateLabelForCallState(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePhotoViewForCallState(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryCallMoreMenu()V

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->manageCallStateFocusable(I)V

    const/16 v3, 0x8

    move/from16 v0, p1

    if-ne v0, v3, :cond_18

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showOnHoldText(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateJanskyInfo()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_14

    const/16 v3, 0xa

    move/from16 v0, p1

    if-ne v0, v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoDummy:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v3

    if-eqz v3, :cond_19

    const/16 v3, 0x8

    :goto_4
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v3, :cond_15

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->needToShowCallerInfoCardView(I)Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v18, :cond_1a

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v4, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->clear()V

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;

    move/from16 v0, p1

    invoke-interface {v12, v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->setCallState(I)V

    goto :goto_6

    :cond_16
    const/4 v3, 0x4

    move/from16 v0, p1

    if-eq v0, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getCallCardPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v16

    if-eqz v16, :cond_17

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_19
    const/4 v3, 0x0

    goto :goto_4

    :cond_1a
    const/16 v3, 0x8

    goto :goto_5

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1c

    const/16 v3, 0x8

    move/from16 v0, p1

    if-eq v0, v3, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_20

    const/16 v3, 0x8

    move/from16 v0, p1

    if-ne v0, v3, :cond_20

    :cond_1d
    const/4 v13, 0x1

    :cond_1e
    :goto_7
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_22

    :cond_1f
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallCardPriority(I)V

    :goto_8
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    goto/16 :goto_1

    :cond_20
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_21

    const/4 v3, 0x3

    move/from16 v0, p1

    if-ne v0, v3, :cond_21

    const/4 v13, 0x2

    goto :goto_7

    :cond_21
    const/16 v3, 0xa

    move/from16 v0, p1

    if-ne v0, v3, :cond_1e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1e

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v3

    if-nez v3, :cond_1e

    const/4 v13, 0x3

    goto :goto_7

    :cond_22
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangeBelowButtonLayout(I)V

    goto :goto_8
.end method

.method public setLastestCallTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 19

    const-string v15, "VoiceCallCardFragment"

    const-string v18, "Setting primary call"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v15

    check-cast v15, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v15}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v13

    if-nez v13, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v13}, Lcom/android/incallui/Call;->getState()I

    move-result v14

    const/4 v10, 0x0

    invoke-virtual {v13}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/incallui/util/CallTypeUtils;->isSrvccConference(Ljava/lang/String;)Z

    move-result v10

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v15

    if-eqz v15, :cond_1

    const-string v15, "VoiceCallCardFragment"

    const-string v18, "setPrimary: current state is multi-party call"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-wide/16 v16, 0x0

    if-eqz p6, :cond_2

    move-object/from16 v0, p6

    iget-object v11, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p6

    iget-object v12, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    iget-boolean v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    move-object/from16 v0, p6

    iget-boolean v8, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    move-object/from16 v0, p6

    iget-wide v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    move-wide/from16 v16, v0

    :cond_2
    if-nez p4, :cond_3

    if-eqz v10, :cond_4

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getConferenceString(Z)Ljava/lang/String;

    move-result-object p2

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    const/16 p3, 0x0

    if-eqz v10, :cond_4

    const-string p1, ""

    :cond_4
    const/4 v5, 0x0

    if-eqz v13, :cond_5

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v15

    invoke-virtual {v13}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v5

    :cond_5
    if-eqz v5, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v13}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/incallui/util/ContactAgentUtils;->isBizringByMsisdn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz p6, :cond_e

    move-object/from16 v0, p6

    iget-boolean v15, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v15, :cond_e

    const/4 v7, 0x1

    :goto_1
    if-nez v6, :cond_6

    if-nez v7, :cond_7

    :cond_6
    iget-object v15, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    if-eqz p6, :cond_7

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move-object/from16 p1, v0

    iget-object v0, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    move-object/from16 p2, v0

    const/16 p3, 0x0

    :cond_7
    if-nez v6, :cond_8

    if-nez v7, :cond_9

    :cond_8
    iget-object v15, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->bizImage:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_10

    iget-object v15, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v15, :cond_f

    const-string v15, "VoiceCallCardFragment"

    const-string v18, "coreContact.drawable == null"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v18, 0x7f02032e

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsDefaultBizRingIcon:Z

    :cond_9
    :goto_2
    iget-object v15, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->bizImage:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_a

    iget-object v15, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->bizImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryPhoneNumberTTS(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    if-nez v10, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryCallMoreMenu()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryBizImage(ZI)V

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallerInfoCardView()V

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setProfileIcon(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDisplaySize()V

    const-string v15, "tablet_device"

    invoke-static {v15}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->needToShowVolumeButton()Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showVolumeButton(Z)V

    :cond_c
    const/16 v15, 0xa

    if-ne v14, v15, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showEndCallContactBtn()V

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

    move-object/from16 v0, p6

    invoke-interface {v4, v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_5

    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_f
    iget-object v15, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsDefaultBizRingIcon:Z

    goto/16 :goto_2

    :cond_10
    iget-object v15, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_9

    iget-object v12, v5, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_11
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v15

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_4

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    goto/16 :goto_0
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setPrimaryCallElapsedTime(Lcom/android/incallui/fragment/VoiceCallCardFragment;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    :cond_2
    if-eqz p1, :cond_7

    iput-object p2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->sendBroadcastContactCallState(Landroid/content/Context;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getCallTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setTTS(JLandroid/view/View;)V

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setPrimaryCityId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-virtual {v0, p0, p1}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->setPrimaryCityId(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 12

    const/4 v6, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    invoke-static {v10, v6, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v6, "VoiceCallCardFragment"

    const-string v7, "setPrimaryImage: current state is multi-party call"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    move-object v6, p1

    :cond_2
    invoke-virtual {v0, v6}, Lcom/android/incallui/InCallActivity;->updateGradientColor(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f0203ab

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x1

    :cond_4
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    invoke-static {v6}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v6

    if-nez v6, :cond_6

    const/4 p2, 0x0

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

    move v5, p2

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    :cond_7
    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_c

    if-eqz p1, :cond_c

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v6, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const v10, 0x106000d

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_8
    :goto_1
    if-eqz v5, :cond_e

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

    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v4, :cond_f

    move v6, v8

    :goto_3
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    if-ne v6, v9, :cond_10

    move v3, v7

    :goto_4
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v3, 0x0

    :cond_b
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    invoke-direct {p0, v3, v1, v6}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForHoldPhoto(ZLcom/android/incallui/Call;I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    goto/16 :goto_0

    :cond_c
    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f0a0346

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-static {v6, p1, v2}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v6, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    goto/16 :goto_1

    :cond_d
    const-string v6, "VoiceCallCardFragment"

    const-string v10, "setPrimaryImage: duplicated image"

    invoke-static {v6, v10, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_e
    move v4, v8

    goto :goto_2

    :cond_f
    move v6, v9

    goto :goto_3

    :cond_10
    move v3, v8

    goto :goto_4
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const/4 v0, 0x3

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

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setPrimaryNameSize(Ljava/lang/String;F)F
    .locals 7

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v4, v5

    move v2, p2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a008d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v5

    if-le v4, v5, :cond_1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    sub-float/2addr v2, v5

    cmpg-float v5, v2, v0

    if-gez v5, :cond_0

    move v3, v2

    :goto_0
    return v3

    :cond_1
    move v3, v2

    goto :goto_0
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v0, p0, p1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setPrimaryPhoneNumberLocator(Lcom/android/incallui/fragment/VoiceCallCardFragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPrimaryPhoneNumberTTS(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_3

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->time:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

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

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setProfileContent(Ljava/lang/String;)V
    .locals 3

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

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setProfileContent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setProfileForwardingContent(Ljava/lang/String;)V
    .locals 4

    const v1, 0x7f020373

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v2, v1, v0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setProfileForwardingContent(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "getView is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showMenu(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->showMenu(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0, p0, p1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showMenu(Lcom/android/incallui/fragment/CallCardFragment;Z)V

    :cond_0
    return-void
.end method

.method public showModifyStateInfoBanner(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showModifyStateInfoBanner(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateCallCardPriority()V
    .locals 1

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

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallCardPriority(I)V

    :cond_1
    return-void
.end method

.method public updateCallerInfoOrgView(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-virtual {v0, p0, p1}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateCallerInfoOrgView(Lcom/android/incallui/fragment/CallCardFragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateEri()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateEri()V

    :cond_0
    return-void
.end method

.method public updateJanskyInfo()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mJanskyView:Lcom/android/incallui/fragment/view/CallCardJanskyView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mJanskyView:Lcom/android/incallui/fragment/view/CallCardJanskyView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardJanskyView;->updateJanskyInfo()V

    :cond_0
    return-void
.end method

.method public updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardMcidView;->updatePhotoringState(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V

    :cond_0
    return-void
.end method

.method public updateSmartCallInfo(Lcom/android/incallui/Call;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSmartCallView:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSmartCallView:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->updateSmartCallInfo(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setSmartCallContent()V

    :cond_2
    return-void
.end method

.method public updateVolteView(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->setCallState(I)V

    :cond_0
    return-void
.end method
