.class public Lcom/android/incallui/fragment/VoiceCallCardFragment;
.super Lcom/android/incallui/fragment/CallCardFragment;

# interfaces
.implements Lcom/android/incallui/CallCardUi;


# static fields
.field private static final ANIMATE_FOR_SHOW:I = 0xa0

.field private static final ANIMATE_FOR_SHOW_DELAY:I = 0x1f4

.field private static final ANI_ACTIVE:I = 0x2

.field private static final ANI_END:I = 0x3

.field private static final ANI_HOLD:I = 0x1

.field private static final ANI_MINIMUM_DEX:I = 0x4

.field private static final ANI_NONE:I = 0x0

.field private static final MAX_DIAMETER_FOR_INCOMING_PHOTO:I = 0x140

.field private static final SHOW_AM_VIEW:I = 0x96

.field private static final SHOW_AM_VIEW_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "VoiceCallCardFragment"


# instance fields
.field private mAMStub:Landroid/view/ViewStub;

.field private mActiveAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAgifMgr:Lcom/android/incallui/agif/AgifImageManager;

.field protected mAgifName:Landroid/widget/TextView;

.field protected mAgifNoIdText:Landroid/widget/TextView;

.field protected mAgifPhoto:Landroid/widget/ImageView;

.field private mAgifPhotoAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mAgifPhotoContainer:Landroid/view/View;

.field private mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mBizPhotoAniSet:Landroid/animation/AnimatorSet;

.field private mCallerInfoCardStub:Landroid/view/ViewStub;

.field private mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

.field private mCarrierSwitchBtn:Lcom/android/incallui/widget/SecMenuButton;

.field private mDimPanel:Landroid/view/View;

.field private mDummyPrimaryCallBanner:Landroid/view/View;

.field private mDummyPrimaryCallBannerStub:Landroid/view/ViewStub;

.field private mEndAnimatorSet:Landroid/animation/AnimatorSet;

.field mFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mHandler:Landroid/os/Handler;

.field private mHoldAnimatorSet:Landroid/animation/AnimatorSet;

.field private mIsMoveInfoAnimationRunning:Z

.field private mMoveInfoAnimator:Landroid/animation/ValueAnimator;

.field private mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

.field private movie:Landroid/graphics/Movie;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->movie:Landroid/graphics/Movie;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifMgr:Lcom/android/incallui/agif/AgifImageManager;

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

.method static synthetic access$600(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->calculateWidthOfAgifView()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/incallui/fragment/VoiceCallCardFragment;ILcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->relayoutCallInfoContainer(ILcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method private animateAgifInfoForAnswer()V
    .locals 5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method private animateAgifNameForAnswer()V
    .locals 5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifName:Landroid/widget/TextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$13;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$13;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method private animateBannerForAnswer()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDummyPrimaryCallBanner:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "animateBannerForAnswer: mDummyPrimaryCallBanner is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDummyPrimaryCallBanner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$10;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$10;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOut:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOut:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForBizRingPhoto(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isDisplayingAgif()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateAgifInfoForAnswer()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateAgifNameForAnswer()V

    :cond_2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private animateForBizRingPhoto(I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOut:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/incallui/fragment/VoiceCallCardFragment$3;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$3;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v2, v3, v7

    const/4 v2, 0x1

    aput-object v1, v3, v2

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateForEndCall()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "animateForEndCall: running"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "animateForEndCall..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->boostCPU(Landroid/content/Context;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->animateForHideBackground()V

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateForHoldCall(I)V
    .locals 10

    const/16 v9, 0x8

    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "no_receiver_in_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ne p1, v0, :cond_9

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    :cond_4
    const-string v2, "VoiceCallCardFragment"

    const-string v3, "animateForHoldCall"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-gtz v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_8

    :cond_6
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0084

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a054c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v0, [F

    neg-float v3, v3

    aput v3, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/b/a/d;

    invoke-direct {v4}, Lcom/samsung/android/b/a/d;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f004e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v8, [Landroid/animation/Animator;

    aput-object v2, v5, v1

    aput-object v3, v5, v0

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :cond_7
    :goto_2
    if-ne p1, v0, :cond_c

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButtonMargin(Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    :cond_9
    if-ne p1, v8, :cond_7

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_a
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    :cond_b
    const-string v2, "VoiceCallCardFragment"

    const-string v3, "animateForActiveCall"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v0, [F

    aput v5, v4, v1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/b/a/d;

    invoke-direct {v3}, Lcom/samsung/android/b/a/d;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f004e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v8, [Landroid/animation/Animator;

    aput-object v3, v5, v1

    aput-object v2, v5, v0

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    :cond_c
    move v0, v1

    goto/16 :goto_3

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
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const v3, 0x7f0e00b7

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsDefaultBizRingIcon:Z

    if-nez v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x3

    if-ne p3, v0, :cond_4

    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f004b

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

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private animateForMoveInfo()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsMoveInfoAnimationRunning:Z

    if-eqz v0, :cond_0

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "animateForMoveInfo: already running"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoBannerContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "start and end height is zero"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsMoveInfoAnimationRunning:Z

    const-string v2, "VoiceCallCardFragment"

    const-string v3, "animateForMoveInfo"

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    aput v1, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$5;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$6;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$6;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v5, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMoveInfoAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private animateInfoCardForAnswer()V
    .locals 5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/samsung/android/b/a/d;

    invoke-direct {v1}, Lcom/samsung/android/b/a/d;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$11;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$11;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method private animateScaleForCallerInfo(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "animateScaleForCallerInfo: already running"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->createAgifPhotoAnimatorSet(Landroid/view/View;)V

    const-string v0, "animateScaleForCallerInfo... "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private arrangeBelowButtonLayout(I)V
    .locals 8

    const/16 v7, 0x8

    const/4 v0, 0x4

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v3

    if-eqz v3, :cond_0

    move p1, v0

    :cond_0
    const-string v3, "VoiceCallCardFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrangeBelowButtonLayout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isVideoState()Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne p1, v6, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showEndCallContactBtn()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForEndCall()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForHoldCall(I)V

    goto :goto_0

    :cond_4
    if-ne p1, v6, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showEndCallContactBtn()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForEndCall()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    if-ne v0, v3, :cond_9

    move v0, v1

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButtonMargin(Z)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_1

    :cond_7
    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->animateForHideBackground()V

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButton()V

    goto :goto_0

    :cond_9
    move v0, v2

    goto :goto_2
.end method

.method private calculateWidthOfAgifView()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnScreenMenuContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->getHdWifiIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTimeLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnScreenMoreMenuContainer:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnScreenMenuContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$16;

    invoke-direct {v1, p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$16;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private createAgifPhotoAnimatorSet(Landroid/view/View;)V
    .locals 7

    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    if-eq p1, v0, :cond_1

    move v0, v3

    :goto_0
    if-eqz v0, :cond_0

    const v1, 0x3f11eb85    # 0.57f

    new-instance v0, Lcom/samsung/android/b/a/f;

    invoke-direct {v0}, Lcom/samsung/android/b/a/f;-><init>()V

    :goto_1
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v3, [F

    aput v6, v2, v4

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v3, [F

    aput v6, v5, v4

    invoke-static {p1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    aput v6, v3, v4

    invoke-static {p1, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/incallui/fragment/VoiceCallCardFragment$15;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment$15;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/b/a/b;

    invoke-direct {v0}, Lcom/samsung/android/b/a/b;-><init>()V

    move v1, v2

    goto :goto_1

    :cond_1
    move v0, v4

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

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;ZZ)Ljava/lang/CharSequence;
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "getCallStateLabelFromState getView() or context is empty: "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object p5, v3

    :cond_1
    :goto_0
    return-object p5

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz p5, :cond_6

    move v4, v1

    :goto_1
    if-eqz v4, :cond_7

    if-nez p6, :cond_7

    move v0, v1

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

    :pswitch_0
    const-string v0, "VoiceCallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallStateWidgets: unexpected call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object p5, v3

    goto :goto_0

    :cond_6
    move v4, v2

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2

    :pswitch_1
    move-object p5, v3

    goto :goto_0

    :pswitch_2
    if-nez v0, :cond_1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_8

    const v0, 0x7f090024

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_8
    if-ne p3, v1, :cond_9

    const v0, 0x7f090025

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_9
    invoke-static {}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f090519

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p5, v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :pswitch_3
    move-object p5, v3

    goto :goto_0

    :pswitch_4
    if-eqz v4, :cond_a

    const v0, 0x7f090017

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p5, v3, v2

    invoke-virtual {v5, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    :cond_a
    const-string v0, "spr_display_hd_icon"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p5, ""

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f09051a

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p5, v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "assisted_dialing_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v5, p5}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getDialingLabelFromAssistedDialing(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p5

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "spr_display_hd_icon"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p5, ""

    goto/16 :goto_0

    :cond_d
    const v0, 0x7f090022

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_0

    :pswitch_6
    if-eqz v0, :cond_e

    const v0, 0x7f090057

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p5, v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isFromPopupForAnswer()Z

    move-result v0

    if-nez v0, :cond_5

    const v0, 0x7f09001f

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_0

    :pswitch_7
    move-object p5, v3

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p4}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v3

    if-eqz v3, :cond_f

    const v0, 0x7f09010a

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p5, v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_0

    :cond_f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    const v0, 0x7f090018

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_0

    :pswitch_9
    const v0, 0x7f09001b

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_0

    :cond_10
    move-object p5, v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;
    .locals 3

    const-string v0, "VoiceCallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canManageConferencePhoto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const v0, 0x7f02019d

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0201a1

    goto :goto_0
.end method

.method private getConferenceString(Z)Ljava/lang/String;
    .locals 3

    const-string v0, "VoiceCallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canManageConferenceString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ims_voice_conference_vzw"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "getConferenceString return null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getIncomingCallerInfoHeight()I
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a007e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0269

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0268

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a0267

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :cond_0
    iget v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    sub-int v0, v4, v0

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, v3

    return v0
.end method

.method private getRevealAnimator(Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayWidth:I

    div-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    div-int/lit8 v0, v0, 0x2

    if-eqz p1, :cond_0

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    :cond_0
    iget v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayWidth:I

    iget v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    int-to-float v3, v3

    invoke-static {v2, v1, v0, v4, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$9;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$9;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getRevealViewsAnimator()Landroid/animation/Animator;
    .locals 5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$8;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$8;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private getTextSizeUntilLargeSize(F)F
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v0

    div-float v0, p1, v0

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
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
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/16 v3, 0x140

    if-ge v2, v3, :cond_0

    const-string v3, "VoiceCallCardFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLowQualityImage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "VoiceCallCardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLowQualityImage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "feature_dcm"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->getSugudenAnswerSetting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SugudenGuideShowNeverAgain"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCallerInfoCardMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isFromPopupForAnswer()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->isShowEpdgNotifyBanner()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_4

    iget v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    :cond_4
    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    const/4 v1, 0x5

    if-eq p1, v1, :cond_5

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private relayoutCallInfoContainer(ILcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isFromPopupForAnswer()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    :goto_0
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v4

    or-int v6, v1, v4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v7

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    const/4 v1, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x1

    move v5, v4

    :goto_2
    const/16 v4, 0x8

    if-ne p1, v4, :cond_8

    const/4 v4, 0x1

    :goto_3
    if-eqz v6, :cond_b

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/view/CallCardMcidView;->isPhotoringShowing()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f0a00f4

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    const/16 v8, 0xc

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_4
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mTwoPhoneView:Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mTwoPhoneView:Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->isTwoPhoneTextVisible()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a02ab

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v2, v8

    :cond_1
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a031e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v2, v7

    :cond_2
    if-nez v6, :cond_3

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a0083

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    :goto_5
    if-eqz v4, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/agif/AgifCallServiceUtils;->needToShowAgifFragment(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a04fb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    :goto_6
    invoke-static {}, Lcom/android/incallui/util/ScreenControlUtils;->isSplitMode()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isElapsedTimeCTCVisible()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a054c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    :goto_7
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_2

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isDisplayingAgif()Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v2, 0x3

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifDummy:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v0, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0a05ce

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto/16 :goto_4

    :cond_a
    const/16 v8, 0xd

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_4

    :cond_b
    const/16 v8, 0xd

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_4

    :cond_c
    if-nez v5, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a054c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a031e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v1, v5

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v1, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_5

    :cond_d
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a031e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_5

    :cond_e
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a031e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_6

    :cond_f
    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a054c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_7

    :cond_10
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isElapsedTimeCTCVisible()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a054c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_7

    :cond_11
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->isEriInfoTextVisible()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a054c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_7

    :cond_12
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a031e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_7
.end method

.method private relayoutNameNumberTextView(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 11

    const v10, 0x7f0a0263

    const/16 v9, 0x8

    const v8, 0x7f0a01f7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    move v3, v1

    :goto_2
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v9, :cond_8

    :cond_2
    move v4, v1

    :goto_3
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {p1}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getTextSizeUntilLargeSize(F)F

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryNameSize(Ljava/lang/String;F)F

    move-result v0

    :cond_3
    :goto_4
    if-eqz v5, :cond_f

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a026c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getTextSizeUntilLargeSize(F)F

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryNameSize(Ljava/lang/String;F)F

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_f

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0303

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getTextSizeUntilLargeSize(F)F

    move-result v0

    move v3, v0

    :goto_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_5
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto/16 :goto_1

    :cond_7
    move v3, v2

    goto/16 :goto_2

    :cond_8
    move v4, v2

    goto/16 :goto_3

    :cond_9
    if-nez v0, :cond_a

    if-eqz v3, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a008e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getTextSizeUntilLargeSize(F)F

    move-result v0

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_d

    const-string v0, "feature_multisim_display_sim_icon"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->isSimIconLargeLabelVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr v0, v6

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getTextSizeUntilLargeSize(F)F

    move-result v0

    :goto_7
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryNameSize(Ljava/lang/String;F)F

    move-result v0

    if-eqz v4, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v3}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isRichScreen()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0a0603

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setTextSizeUntilLargeSize(Landroid/widget/TextView;F)V

    goto/16 :goto_4

    :cond_c
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getTextSizeUntilLargeSize(F)F

    move-result v0

    goto :goto_7

    :cond_d
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0089

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getTextSizeUntilLargeSize(F)F

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryNameSize(Ljava/lang/String;F)F

    move-result v0

    goto/16 :goto_4

    :cond_e
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    :cond_f
    move v3, v0

    goto/16 :goto_5
.end method

.method private setBizRingVisibility(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOut:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private setCallerInfoCardView()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->needToShowCallerInfoCardView(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryCompleted:Z

    if-eqz v2, :cond_4

    const-string v2, "VoiceCallCardFragment"

    const-string v3, "- queryCompleted"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->inflateCallerInfoCardView()V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v2, :cond_4

    const-string v2, "VoiceCallCardFragment"

    const-string v3, "setCallerInfoCardView: update"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v1, v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->update(Landroid/content/Context;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->status:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iget-object v0, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->status:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setProfileContent(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v4}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a007e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0118

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    sub-int v0, v3, v0

    sub-int/2addr v0, v2

    if-gt v0, v1, :cond_3

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v1, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v0, v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallPlusView:Lcom/android/incallui/fragment/view/CallCardCallPlusView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->isCrane()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a046b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v1, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v0, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v0, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    move v1, v0

    goto :goto_1
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "VoiceCallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDrawableToImageView "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private setGifDrawableToImageView(Landroid/widget/ImageView;Lcom/android/incallui/gif/GifDrawable;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1, v0}, Lcom/android/incallui/util/GifUtil;->setOutline(Landroid/view/View;I)V

    invoke-static {p2}, Lcom/android/incallui/util/GifUtil;->playGif(Lcom/android/incallui/gif/GifDrawable;)V

    const-string v0, "VoiceCallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGifDrawableToImageView "

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

.method private setPrimaryBizImage(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x0

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOut:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->isPhotoringShowing()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizPhotoAniSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizPhotoAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const-string v0, "VoiceCallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPrimaryBizImage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a031b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, p1}, Lcom/android/incallui/util/GraphicResourceUtils;->getRoundRectDrawableForBizRing(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOut:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v0}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsDefaultBizRingIcon:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_1
    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOut:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02020b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOut:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0191

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020262

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOut:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02020a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    if-ne v0, v5, :cond_c

    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    invoke-direct {p0, v5}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForBizRingPhoto(I)V

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOut:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method private setPrimaryCallMoreMenu()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->needToShowMenu()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showMenu(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->setPrimaryCallMenuForDialpad(Z)V

    :cond_0
    return-void
.end method

.method private setTextSizeUntilLargeSize(Landroid/widget/TextView;F)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v1

    div-float v1, p2, v1

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method private setViewStateBeforeOutgoingAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->setViewStateBeforeOutgoingAnimation()V

    :cond_1
    return-void
.end method

.method private showEndCallContactBtn()V
    .locals 7

    const v6, 0x7f09030e

    const/4 v5, 0x0

    const v4, 0x7f0902c0

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    const-string v2, "support_twophone"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->canViewContactDetails:Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/incallui/util/InCallUtils;->isShowContactMenu(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_5
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableIMSConferenceInfo()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "callprotect_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callProtectInfo:Lcom/whitepages/nameid/b;

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callProtectInfo:Lcom/whitepages/nameid/b;

    iget-object v0, v0, Lcom/whitepages/nameid/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isEnabledEndCallContactButton()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private showOnHoldText(I)V
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05001f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    const-string v0, "agif_call_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->calculateWidthOfAgifView()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private switchToVideoCallClicked()V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    return-void
.end method

.method private updateBelowButton()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v7, 0x8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHoldAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->end()V

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mActiveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->end()V

    :cond_5
    const-string v4, "VoiceCallCardFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBelowButton: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->end()V

    :cond_6
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    :cond_7
    if-ne v3, v7, :cond_c

    const-string v4, "no_receiver_in_call"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    if-gtz v4, :cond_9

    :cond_8
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lez v4, :cond_a

    :cond_9
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0083

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0084

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a054c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    neg-float v4, v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v2, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_b
    :goto_1
    if-ne v3, v7, :cond_d

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButtonMargin(Z)V

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_d
    move v0, v1

    goto :goto_2

    :cond_e
    const/4 v0, 0x2

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_f
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    :cond_10
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButtonMargin(Z)V

    goto/16 :goto_0
.end method

.method private updateCallCardWeight(Landroid/content/res/Configuration;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0034

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    move v2, v1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoBannerContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoDummy:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoBannerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoBannerContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoDummy:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoDummy:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0033

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    move v2, v1

    move v1, v0

    goto :goto_1
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
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isVideoState()Z

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
    .locals 8

    const/16 v5, 0xa

    const/4 v4, 0x6

    const/4 v1, 0x4

    const/4 v3, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "activity is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "fragment is detached from activity, return"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsMoveInfoAnimationRunning:Z

    if-eqz v0, :cond_4

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "updatePanelForCallState: animation is running"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x9

    if-ne p1, v0, :cond_5

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "updatePanelForCallState: skip"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_6

    move p1, v1

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eq p1, v1, :cond_7

    const/4 v1, 0x5

    if-eq p1, v1, :cond_7

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_7
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isFromPopupForAnswer()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getIncomingCallerInfoHeight()I

    move-result v1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-nez v2, :cond_8

    iget v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    if-lez v2, :cond_8

    iget v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    div-int/lit8 v1, v1, 0x2

    :cond_8
    :goto_1
    if-gtz v1, :cond_9

    if-ne v1, v3, :cond_0

    :cond_9
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_a
    iget v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_b

    iget v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    if-ne v1, v4, :cond_c

    :cond_b
    const/4 v1, 0x3

    if-ne p1, v1, :cond_c

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForMoveInfo()V

    goto/16 :goto_0

    :cond_c
    iget v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    if-eq v1, v5, :cond_d

    if-ne p1, v5, :cond_d

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnsweringMode()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForMoveInfo()V

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xd

    if-eq p1, v1, :cond_e

    if-ne p1, v4, :cond_11

    :cond_e
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_f

    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v1, :cond_11

    :cond_f
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-nez v1, :cond_11

    iget v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    if-lez v1, :cond_11

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/agif/AgifCallServiceUtils;->isAvailableAgifCallService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_11

    iget v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    int-to-double v4, v1

    const-wide v6, 0x3fdccccccccccccdL    # 0.45

    mul-double/2addr v4, v6

    double-to-int v2, v4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/CallButtonUi;->getUpperViewMarginTop()I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_1

    :cond_10
    move v1, v2

    goto :goto_1

    :cond_11
    move v1, v3

    goto :goto_1
.end method

.method private updatePhotoViewForCallState(I)V
    .locals 6

    const/16 v3, 0x8

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "updatePhotoViewForCallState getView() or context is empty: "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

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

    if-ne p1, v2, :cond_c

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0190

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryBizImage(I)V

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

    move-result v0

    if-eqz v0, :cond_d

    :cond_8
    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v5}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-direct {p0, v5}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setBizRingVisibility(Z)V

    goto/16 :goto_0

    :cond_9
    iget v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    if-eq v2, v3, :cond_a

    if-ne p1, v3, :cond_4

    :cond_a
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->gifPhoto:Lcom/android/incallui/gif/GifDrawable;

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->gifPhoto:Lcom/android/incallui/gif/GifDrawable;

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryGifImage(Lcom/android/incallui/gif/GifDrawable;)V

    goto :goto_1

    :cond_b
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_1

    :cond_c
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "animateForAnswerCall...already running"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "animateForAnswerCall"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateBannerForAnswer()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateInfoCardForAnswer()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

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
    .locals 2

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "animateForNewOutgoingCall..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsOutgoingAnimationRunning:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment$7;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/graphics/Point;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public animateForShow()V
    .locals 5

    const/16 v1, 0xa0

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "animateForShow: running"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "animateForShow"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_2
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "animateForShow: skip"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public animateRevealForNewOutgoingCall()V
    .locals 0

    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "VoiceCallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arrangePrimaryLayout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "activity is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAMView()V

    const/4 v0, 0x4

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateTextColor(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "entry is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    if-eqz v3, :cond_5

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "arrangePrimaryLayout: mIsAnswerProcessing"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->relayoutCallInfoContainer(ILcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->relayoutNameNumberTextView(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;

    invoke-interface {v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->arrangePrimaryLayout()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->checkMWandUpdateLayout()V

    goto/16 :goto_0
.end method

.method public changeCallCardForAM(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDummyPrimaryCallBanner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

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

.method checkMWandUpdateLayout()V
    .locals 5

    const/16 v4, 0x3c

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "VoiceCallCardFragment checkMWandUpdateLayout()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ims_rcs_bb"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoDummy:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoBannerContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "VoiceCallCardFragment"

    const-string v3, "VoiceCallCardFragment checkMWandUpdateLayout() isInMultiWindowMode()"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setonMultiWindowChange(Z)V

    :cond_0
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoBannerContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoDummy:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setonMultiWindowChange(Z)V

    goto :goto_0
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
    .locals 5

    const/4 v4, 0x1

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "dispatchPopulateAccessibilityEvent"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09051a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    :goto_2
    return v4

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

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

    const v1, 0x7f1003ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->checkMWandUpdateLayout()V

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

    const v1, 0x7f10028f

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

    const v1, 0x7f1002dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002df

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

.method public isDisplayingAgif()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifName:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowVZWInfoBanner()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->isShowVZWInfoBanner()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public manageRecordInfo(ZZ)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/CallCardFragment;->manageRecordInfo(ZZ)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->calculateWidthOfAgifView()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallCardPriority(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isElapsedTimeCTCVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isDisplayingAgif()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getAgifUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getAgifUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->onSelectAgifContents(Landroid/net/Uri;Z)V

    :cond_0
    return-void
.end method

.method public needToShowMenu()Z
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->needToShowMenu()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "VoiceCallCardFragment"

    const-string v2, "Bike mode call is showing, needToShowMenu : false"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isCdmaMultipartyBtnVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "VoiceCallCardFragment"

    const-string v2, "mCdmaMultipartyBtn is showing, needToShowMenu : false"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSetupWizardComplete()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "VoiceCallCardFragment"

    const-string v2, "isSetupWizardComplete : false"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const v6, 0x7f0900d0

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "VoiceCallCardFragment"

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

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sparse-switch v0, :sswitch_data_0

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "onClick: call super onClick"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onClick(Landroid/view/View;)V

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09030e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->endCall_viewContact(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isContactsApplicationEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->viewContactClicked()V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->endCall_addToContact(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isContactsApplicationEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->addToContactClicked()V

    goto :goto_0

    :sswitch_1
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_resumeCall(Lcom/android/incallui/Call;)V

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VOCB"

    const-string v3, "VOCS"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "onClick switch video Button was clicked"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->switchToVideoCallClicked()V

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "onClick carrier_matching_switch_sim"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    invoke-virtual {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->disconnectOutGoingCall()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierSwitchBtn:Lcom/android/incallui/widget/SecMenuButton;

    invoke-virtual {v0, v5}, Lcom/android/incallui/widget/SecMenuButton;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f10038e -> :sswitch_1
        0x7f10039f -> :sswitch_3
        0x7f1003c1 -> :sswitch_0
        0x7f1003c7 -> :sswitch_2
        0x7f1004af -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "VoiceCallCardFragment"

    const-string v3, "onConfigurationChanged"

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateCallCardWeight(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDisplaySize()V

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallerInfoCardView()V

    :cond_0
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallCardPriority(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateEri()V

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButtonMargin(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    const-string v0, "agif_call_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getAgifUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getAgifUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->onSelectAgifContents(Landroid/net/Uri;Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_4

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    :cond_4
    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    goto :goto_1
.end method

.method public onContentViewChanged(Landroid/graphics/Point;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDisplaySize()V

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallCardPriority(I)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallerInfoCardView()V

    :cond_3
    :goto_0
    const-string v1, "agif_call_service"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getAgifUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getAgifUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->onSelectAgifContents(Landroid/net/Uri;Z)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangeBelowButtonLayout(I)V

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButtonMargin(Z)V

    goto :goto_0
.end method

.method public onCoverStateChanged(Z)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDisplaySize()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallCardPriority(I)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallerInfoCardView()V

    :cond_3
    :goto_0
    const-string v1, "agif_call_service"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getAgifUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getAgifUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->onSelectAgifContents(Landroid/net/Uri;Z)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangeBelowButtonLayout(I)V

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButtonMargin(Z)V

    goto :goto_0
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

    const v0, 0x7f04017d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "onDestroy..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0xa0

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "onDestroyView..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->dismissInCallMenu()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifMgr:Lcom/android/incallui/agif/AgifImageManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifMgr:Lcom/android/incallui/agif/AgifImageManager;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifImageManager;->stopAgifAnimate()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifMgr:Lcom/android/incallui/agif/AgifImageManager;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifImageManager;->clear()V

    :cond_3
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

    const/4 v3, 0x0

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "onResume "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateCallCardWeight(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->isEnableCarrierMatching()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierSwitchBtn:Lcom/android/incallui/widget/SecMenuButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierSwitchBtn:Lcom/android/incallui/widget/SecMenuButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecMenuButton;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;

    invoke-interface {v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->onResume()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    invoke-virtual {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->needShowDialingInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierSwitchBtn:Lcom/android/incallui/widget/SecMenuButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierSwitchBtn:Lcom/android/incallui/widget/SecMenuButton;

    invoke-virtual {v0, v3}, Lcom/android/incallui/widget/SecMenuButton;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateCallCardIndicatorArea()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDisplaySize()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallCardPriority(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->checkMWandUpdateLayout()V

    return-void
.end method

.method public onSelectAgifContents(Landroid/net/Uri;Z)V
    .locals 20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSelectAgifContents : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/incallui/agif/AgifCallContract;->AGIF_DUMMY_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getAgifUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getAgifUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v2, "onSelectAgifContents agifUri and call.getAgifUri are different"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-virtual {v3}, Lcom/android/incallui/fragment/view/CallCardMcidView;->isPhotoringShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "onSelectAgifContents mcid is showing"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifMgr:Lcom/android/incallui/agif/AgifImageManager;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifMgr:Lcom/android/incallui/agif/AgifImageManager;

    invoke-virtual {v2}, Lcom/android/incallui/agif/AgifImageManager;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifMgr:Lcom/android/incallui/agif/AgifImageManager;

    invoke-virtual {v2}, Lcom/android/incallui/agif/AgifImageManager;->getUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez p2, :cond_5

    const-string v2, "onSelectAgifContents - same uri is already exist "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifMgr:Lcom/android/incallui/agif/AgifImageManager;

    invoke-virtual {v2}, Lcom/android/incallui/agif/AgifImageManager;->stopAgifAnimate()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifMgr:Lcom/android/incallui/agif/AgifImageManager;

    invoke-virtual {v2}, Lcom/android/incallui/agif/AgifImageManager;->clear()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifMgr:Lcom/android/incallui/agif/AgifImageManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhoto:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/android/incallui/gif/GifDrawable;->getMovie(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Movie;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->movie:Landroid/graphics/Movie;

    new-instance v2, Lcom/android/incallui/agif/AgifImageManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhoto:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-direct {v2, v3, v4, v6, v0}, Lcom/android/incallui/agif/AgifImageManager;-><init>(Landroid/widget/ImageView;Landroid/view/View;Landroid/content/Context;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifMgr:Lcom/android/incallui/agif/AgifImageManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifDummy:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoBannerContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    int-to-float v6, v6

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    mul-float/2addr v4, v6

    float-to-double v6, v4

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v6, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f0a01dc

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v8, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateContainer:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f0a031e

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v10, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v11, 0x7f0a05cc

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v11, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f0a05ce

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v12, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v13, 0x7f0a03b6

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v4, v13

    float-to-int v13, v4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-virtual {v14}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->isEriInfoTextVisible()Z

    move-result v14

    if-nez v14, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mJanskyView:Lcom/android/incallui/fragment/view/CallCardJanskyView;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mJanskyView:Lcom/android/incallui/fragment/view/CallCardJanskyView;

    invoke-virtual {v14}, Lcom/android/incallui/fragment/view/CallCardJanskyView;->isMultiLineVisible()Z

    move-result v14

    if-eqz v14, :cond_9

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v14, 0x7f0a054c

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    :cond_9
    add-int v14, v8, v10

    add-int/2addr v14, v9

    add-int/2addr v14, v4

    mul-int/lit8 v15, v12, 0x2

    add-int/2addr v14, v15

    add-int/2addr v13, v14

    int-to-double v14, v13

    sub-double/2addr v6, v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Agif remainArea : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " maxHeight : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v14, v11

    cmpg-double v13, v6, v14

    if-gtz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifMgr:Lcom/android/incallui/agif/AgifImageManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->movie:Landroid/graphics/Movie;

    double-to-int v6, v6

    invoke-virtual {v13, v14, v6}, Lcom/android/incallui/agif/AgifImageManager;->setImagePath(Landroid/graphics/Movie;I)V

    add-int v6, v8, v10

    add-int/2addr v6, v9

    add-int/2addr v6, v4

    add-int/2addr v6, v12

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int v6, v10, v9

    add-int/2addr v4, v6

    add-int/2addr v4, v12

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifDummy:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/incallui/util/GifUtil;->setOutline(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifMgr:Lcom/android/incallui/agif/AgifImageManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/agif/AgifImageManager;->setAGifBackground(Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifMgr:Lcom/android/incallui/agif/AgifImageManager;

    invoke-virtual {v2}, Lcom/android/incallui/agif/AgifImageManager;->startAgifAnimate()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifNoIdText:Landroid/widget/TextView;

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a03d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifMgr:Lcom/android/incallui/agif/AgifImageManager;

    invoke-virtual {v3}, Lcom/android/incallui/agif/AgifImageManager;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/2addr v2, v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifNoIdText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifMgr:Lcom/android/incallui/agif/AgifImageManager;

    invoke-virtual {v4}, Lcom/android/incallui/agif/AgifImageManager;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifNoIdText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifNoIdText:Landroid/widget/TextView;

    if-eqz v5, :cond_c

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateAgifContainer(Z)V

    const-string v2, "feature_dcm"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->getSugudenAnswerSetting(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SugudenGuideShowNeverAgain"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSugudenView:Lcom/android/incallui/fragment/view/CallCardSugudenView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/incallui/fragment/view/CallCardSugudenView;->updateSugudenGuideViewMargin(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifMgr:Lcom/android/incallui/agif/AgifImageManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->movie:Landroid/graphics/Movie;

    invoke-virtual {v13, v14}, Lcom/android/incallui/agif/AgifImageManager;->setImagePath(Landroid/graphics/Movie;)V

    add-int/2addr v8, v10

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    int-to-double v14, v8

    mul-int/lit8 v8, v12, 0x2

    int-to-double v0, v8

    move-wide/from16 v16, v0

    add-double v16, v16, v6

    int-to-double v0, v11

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    add-double v14, v14, v16

    double-to-int v8, v14

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int v8, v10, v9

    add-int/2addr v4, v8

    int-to-double v8, v4

    mul-int/lit8 v4, v12, 0x2

    int-to-double v12, v4

    add-double/2addr v6, v12

    int-to-double v12, v11

    sub-double/2addr v6, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v12

    add-double/2addr v6, v8

    double-to-int v4, v6

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    :cond_c
    const/16 v2, 0x8

    goto :goto_2
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
    .locals 9

    const v4, 0x7f0a008d

    const/4 v8, 0x2

    const/16 v7, 0xa0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/CallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f1002d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateCallCardIndicatorArea()V

    const v0, 0x7f100229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNavigationBarArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateNavigationBar()V

    const v0, 0x7f1002fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnScreenMenuContainer:Landroid/view/View;

    const v0, 0x7f1003a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnScreenMoreMenuContainer:Landroid/view/View;

    const v0, 0x7f10039e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f100253

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    const v0, 0x7f10020f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setTextSizeUntilLargeSize(Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    const v0, 0x7f10012a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    const v0, 0x7f10014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setTextSizeUntilLargeSize(Landroid/widget/TextView;F)V

    const v0, 0x7f100251

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const v0, 0x7f1000d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const v0, 0x7f1003ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOut:Landroid/widget/ImageView;

    const v0, 0x7f1003ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuring:Landroid/widget/ImageView;

    const v0, 0x7f1003aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifDummy:Landroid/view/View;

    const v0, 0x7f1003a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifName:Landroid/widget/TextView;

    const v0, 0x7f100286

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhoto:Landroid/widget/ImageView;

    const v0, 0x7f100285

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    const v0, 0x7f1004aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifNoIdText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifNoIdText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "not_support_app_update"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifNoIdText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900bf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const v0, 0x7f100208

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const v0, 0x7f100212

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mProfileIcon:Landroid/widget/ImageView;

    const v0, 0x7f10020a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    const v0, 0x7f10020e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const v0, 0x7f1003b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabelDummy:Landroid/view/View;

    const v0, 0x7f1002e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTimeLayout:Landroid/view/View;

    const v0, 0x7f100210

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const v0, 0x7f1003a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdContainer:Landroid/view/View;

    const v0, 0x7f1002e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    const v0, 0x7f10036e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    const v0, 0x7f1000cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    const v0, 0x7f10036a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoBannerContainer:Landroid/view/View;

    const v0, 0x7f10036b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoDummy:Landroid/view/View;

    const v0, 0x7f100203

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v0, 0x7f10024e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateContainer:Landroid/view/View;

    const v0, 0x7f1002d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    const v0, 0x7f10038d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v0, :cond_3

    const v0, 0x7f1003c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setTextSizeUntilLargeSize(Landroid/widget/TextView;F)V

    :cond_2
    const-string v0, "no_receiver_in_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f10038e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setTextSizeUntilLargeSize(Landroid/widget/TextView;F)V

    :cond_3
    const v0, 0x7f1003b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    const v0, 0x7f1003bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    const v0, 0x7f1003c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->isEnableCarrierMatching()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCarrierMatchingUtils()Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    if-eqz v0, :cond_4

    const v0, 0x7f10039f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/SecMenuButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierSwitchBtn:Lcom/android/incallui/widget/SecMenuButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    invoke-virtual {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getSlotIdCarrierMatching()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCarrierMatchingUtils carrierSlot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, -0x1

    if-le v0, v3, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    invoke-virtual {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->needShowDialingInfo()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierSwitchBtn:Lcom/android/incallui/widget/SecMenuButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierSwitchBtn:Lcom/android/incallui/widget/SecMenuButton;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/SecMenuButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierSwitchBtn:Lcom/android/incallui/widget/SecMenuButton;

    invoke-virtual {v0, p0}, Lcom/android/incallui/widget/SecMenuButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_1
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    :cond_5
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->onAMRecorderStateChanged()V

    :cond_6
    const v0, 0x7f10039c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMultiTouchDummyStub:Landroid/view/ViewStub;

    const v0, 0x7f1004ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDummyPrimaryCallBannerStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDummyPrimaryCallBannerStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f100153

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDummyPrimaryCallBanner:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v0, :cond_8

    :cond_7
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_8

    const v0, 0x7f100154

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;

    invoke-interface {v0, p1}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->onViewCreated(Landroid/view/View;)V

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifNoIdText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900be

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierSwitchBtn:Lcom/android/incallui/widget/SecMenuButton;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/android/incallui/widget/SecMenuButton;->setVisibility(I)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_c

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_e

    :cond_c
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-nez v0, :cond_f

    const-string v0, "VoiceCallCardFragment"

    const-string v2, "onViewCreated : entry is null"

    invoke-static {v0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    :goto_3
    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_e
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->checkMWandUpdateLayout()V

    const-string v0, "VoiceCallCardFragment"

    const-string v2, "onViewCreated : end"

    invoke-static {v0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_f
    iget-boolean v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryCompleted:Z

    if-nez v3, :cond_10

    const-string v0, "VoiceCallCardFragment"

    const-string v2, "onViewCreated : query is not completed"

    invoke-static {v0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    goto :goto_3

    :cond_10
    iget-object v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    if-eqz v3, :cond_11

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_11

    const-string v0, "VoiceCallCardFragment"

    const-string v2, "onViewCreated : entry.photo is null"

    invoke-static {v0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    goto :goto_3

    :cond_11
    const-string v0, "VoiceCallCardFragment"

    const-string v3, "onViewCreated : visible"

    invoke-static {v0, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v2

    goto :goto_3
.end method

.method public resetAnswerCallAnimator()V
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "VoiceCallCardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetAnswerCallAnimator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iput-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->gifPhoto:Lcom/android/incallui/gif/GifDrawable;

    if-eqz v3, :cond_4

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->gifPhoto:Lcom/android/incallui/gif/GifDrawable;

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryGifImage(Lcom/android/incallui/gif/GifDrawable;)V

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->needToShowCallerInfoCardView(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v1, :cond_5

    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v3, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v3, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1

    :cond_5
    const/16 v0, 0x8

    goto :goto_2
.end method

.method public resetRevealAnimator()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->sIsWindowRevealed:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "resetRevealAnimator"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayWidth:I

    iget v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v4, v4, v1, v2}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    sput-boolean v4, Lcom/android/incallui/fragment/VoiceCallCardFragment;->sIsWindowRevealed:Z

    goto :goto_0
.end method

.method public setAMView(Z)V
    .locals 4

    const/4 v1, 0x0

    const-string v0, "VoiceCallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAMView isRecording "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "setAMView view is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->manageAnswerMemoRecord(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1003ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10026e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f10026f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz p1, :cond_8

    const v3, 0x7f020062

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    :goto_3
    if-eqz v1, :cond_0

    if-eqz p1, :cond_9

    const v0, 0x7f0900c9

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->updateKeepScreenOnFlag()V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_2

    :cond_8
    const v3, 0x7f020061

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_9
    const v0, 0x7f0900c8

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public setCallCardPriority(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;-><init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;ILandroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
    .locals 8

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v6, 0x1

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;ZZ)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v0, "VoiceCallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "VoiceCallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisconnectCause "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Landroid/telecom/DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VoiceCallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gateway "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    invoke-virtual {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->isWaitingSwapUseSim()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "needToUpdate: Skip update during carrier WaitingSwapUseSim"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x6

    if-eq p1, v0, :cond_5

    const/16 v0, 0xd

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierSwitchBtn:Lcom/android/incallui/widget/SecMenuButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierSwitchBtn:Lcom/android/incallui/widget/SecMenuButton;

    invoke-virtual {v0}, Lcom/android/incallui/widget/SecMenuButton;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierSwitchBtn:Lcom/android/incallui/widget/SecMenuButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/SecMenuButton;->setVisibility(I)V

    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    invoke-virtual {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->resetVariable()V

    :cond_5
    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsAnswerProcessing:Z

    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isFromPopupForAnswer()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x3

    :cond_7
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "setCallState: current state is multi-party call"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_8
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->displayCtcSubscriberName()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->manageCardName(I)V

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isIncomingVideoCall()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "setCallState: isIncomingVideoCall "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    if-ne v0, p1, :cond_b

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isVideoState()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_c
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_e

    const/16 v0, 0xa

    if-eq p1, v0, :cond_d

    const/16 v0, 0x9

    if-ne p1, v0, :cond_e

    :cond_d
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "not update callend in hold status"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    const/4 v2, 0x2

    if-ne v2, p1, :cond_f

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v2, :cond_10

    :cond_f
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isIncomingAcceptOrRejectByOtherDevice(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "skip setCallState : not update callend in current state"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_11
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/android/incallui/AnswerUi;->isAnswerAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "perf - Skip setCallState when answer animation is running"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_12
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isShrinkBackgroundRunning()Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0xa

    if-eq p1, v2, :cond_13

    const-string v0, "perf - Skip onCallListChange when scale animation is running"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_13
    iget v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    if-eq v2, p1, :cond_14

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->dismissInCallMenu()V

    :cond_14
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateStatusBarColor(I)V

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isFDNDialogDismissed()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x4

    if-ne v0, p1, :cond_15

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsMoveInfoAnimationRunning:Z

    :cond_15
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    :goto_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDisplaySize()V

    invoke-direct {p0, p1, v1, p6}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateCallStateLabelForCallState(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePhotoViewForCallState(I)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryCallMoreMenu()V

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->manageCallStateFocusable(I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showOnHoldText(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateJanskyInfo()V

    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    const/16 v0, 0xa

    if-ne p1, v0, :cond_18

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_18
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isFromPopupForAnswer()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoDummy:Landroid/view/View;

    if-eqz v0, :cond_1d

    const/16 v0, 0x8

    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v0, :cond_19

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->needToShowCallerInfoCardView(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->clear()V

    :cond_19
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;

    invoke-interface {v0, p1}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->setCallState(I)V

    goto :goto_6

    :cond_1a
    const/4 v0, 0x4

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getCallCardPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    :cond_1b
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_1c
    const/4 v0, 0x0

    goto :goto_3

    :cond_1d
    const/4 v0, 0x0

    goto :goto_4

    :cond_1e
    const/16 v0, 0x8

    goto :goto_5

    :cond_1f
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_20

    const/16 v1, 0x8

    if-eq p1, v1, :cond_21

    :cond_20
    iget v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2c

    const/16 v1, 0x8

    if-ne p1, v1, :cond_2c

    :cond_21
    const/4 v0, 0x1

    :cond_22
    :goto_7
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_23

    sget-boolean v1, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v1, :cond_24

    :cond_23
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2e

    :cond_24
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallCardPriority(I)V

    :goto_8
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_25

    const/16 v0, 0xd

    if-eq p1, v0, :cond_25

    const/4 v0, 0x6

    if-eq p1, v0, :cond_25

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_25
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    const/4 v0, 0x1

    :goto_9
    const/16 v1, 0x9

    if-eq p1, v1, :cond_26

    const/16 v1, 0xa

    if-ne p1, v1, :cond_28

    :cond_26
    if-eqz v0, :cond_28

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateBelowButtonMargin(Z)V

    :cond_28
    const-string v0, "agif_call_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getAgifUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_30

    :cond_29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateAgifContainer(Z)V

    :goto_a
    const/16 v0, 0x9

    if-eq p1, v0, :cond_2a

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2b

    :cond_2a
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/coreapps/CoreAppsManager;->isAgifEnabledWithOpponent(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2b
    iput p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    goto/16 :goto_1

    :cond_2c
    iget v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2d

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2d

    const/4 v0, 0x2

    goto/16 :goto_7

    :cond_2d
    const/16 v1, 0xa

    if-ne p1, v1, :cond_22

    iget v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mOldCallState:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_22

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v1

    if-nez v1, :cond_22

    const/4 v0, 0x3

    goto/16 :goto_7

    :cond_2e
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangeBelowButtonLayout(I)V

    goto/16 :goto_8

    :cond_2f
    const/4 v0, 0x0

    goto/16 :goto_9

    :cond_30
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_31

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_32

    :cond_31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateAgifContainer(Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/incallui/Call;->setAgifUri(Landroid/net/Uri;)V

    goto :goto_a

    :cond_32
    invoke-static {v1}, Lcom/android/incallui/util/SecCallExtraUtils;->getIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updateAgifContainer(Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/incallui/Call;->setAgifUri(Landroid/net/Uri;)V

    goto :goto_a

    :cond_33
    const-string v0, "VoiceCallCardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The AGIF View is visible."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isFromPopupForAnswer()Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x3

    if-ne p1, v0, :cond_34

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->onSelectAgifContents(Landroid/net/Uri;Z)V

    goto/16 :goto_a

    :cond_34
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setLastestCallTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 17

    const-string v2, "VoiceCallCardFragment"

    const-string v3, "setPrimary: start"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v13

    if-nez v13, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v13}, Lcom/android/incallui/Call;->getState()I

    move-result v14

    invoke-virtual {v13}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isSrvccConference(Ljava/lang/String;)Z

    move-result v15

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "VoiceCallCardFragment"

    const-string v3, "setPrimary: current state is multi-party call"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    if-eqz p6, :cond_19

    move-object/from16 v0, p6

    iget-object v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p6

    iget-object v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->gifPhoto:Lcom/android/incallui/gif/GifDrawable;

    move-object/from16 v0, p6

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    move-object/from16 v0, p6

    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    move-object/from16 v0, p6

    iget-wide v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    move-wide v10, v2

    move-object v9, v5

    move-object v12, v7

    move-object v3, v6

    move v2, v4

    :goto_1
    if-nez p4, :cond_2

    if-eqz v15, :cond_18

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getConferenceString(Z)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    const/4 v4, 0x0

    if-eqz v15, :cond_17

    const-string p1, ""

    move-object/from16 v6, p1

    :goto_2
    const/4 v7, 0x0

    if-eqz v13, :cond_16

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v7

    invoke-virtual {v13}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v7

    move-object v8, v7

    :goto_3
    if-eqz v8, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v13}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/android/incallui/util/ContactAgentUtils;->isBizringByMsisdn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz p6, :cond_c

    move-object/from16 v0, p6

    iget-boolean v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    :goto_4
    if-nez v13, :cond_3

    if-nez v7, :cond_4

    :cond_3
    iget-object v0, v8, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    if-eqz p6, :cond_4

    move-object/from16 v0, p6

    iget-object v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iget-object v5, v8, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    const/4 v4, 0x0

    :cond_4
    if-nez v13, :cond_5

    if-nez v7, :cond_6

    :cond_5
    iget-object v7, v8, Lcom/android/incallui/coreapps/CoreAppsContact;->bizImage:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_e

    iget-object v7, v8, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_d

    const-string v7, "VoiceCallCardFragment"

    const-string v13, "coreContact.drawable == null"

    invoke-static {v7, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v13, 0x7f0203d0

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsDefaultBizRingIcon:Z

    :cond_6
    :goto_5
    iget-object v7, v8, Lcom/android/incallui/coreapps/CoreAppsContact;->bizImage:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_7

    iget-object v7, v8, Lcom/android/incallui/coreapps/CoreAppsContact;->bizImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v4

    const-string v7, "agif_call_service"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v4, :cond_8

    invoke-interface {v4, v5}, Lcom/android/incallui/AgifPresenter$AgifUi;->updateAgifListSubText(Ljava/lang/String;)V

    :cond_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v6, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryPhoneNumberTTS(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    if-nez v15, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryCallMoreMenu()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizInOutImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryBizImage(I)V

    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallerInfoCardView()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setProfileIcon(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDisplaySize()V

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->needToShowVolumeButton()Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showVolumeButton(Z)V

    :cond_a
    const/16 v2, 0xa

    if-ne v14, v2, :cond_b

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->showEndCallContactBtn()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;

    move-object/from16 v0, p6

    invoke-interface {v2, v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_8

    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_d
    iget-object v7, v8, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBizDuringImageDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsDefaultBizRingIcon:Z

    goto/16 :goto_5

    :cond_e
    iget-object v7, v8, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    iget-object v3, v8, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_f
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_11
    if-eqz v9, :cond_12

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryGifImage(Lcom/android/incallui/gif/GifDrawable;)V

    goto/16 :goto_7

    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_7

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    if-eqz p6, :cond_15

    move-object/from16 v0, p6

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryCompleted:Z

    if-eqz v2, :cond_15

    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    if-eqz v2, :cond_14

    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_15

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForShow()V

    :cond_15
    const-string v2, "VoiceCallCardFragment"

    const-string v3, "setPrimary: end"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_16
    move-object v8, v7

    goto/16 :goto_3

    :cond_17
    move-object/from16 v6, p1

    goto/16 :goto_2

    :cond_18
    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    goto/16 :goto_2

    :cond_19
    move-wide v10, v2

    move-object v9, v5

    move-object v12, v7

    move-object v3, v6

    move v2, v4

    goto/16 :goto_1
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v2, 0x8

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setPrimaryCallElapsedTime(Lcom/android/incallui/fragment/VoiceCallCardFragment;ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_2

    move p1, v0

    :cond_2
    if-eqz p1, :cond_7

    iput-object p2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->sendBroadcastContactCallState(Landroid/content/Context;)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

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

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

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

.method public setPrimaryGifImage(Lcom/android/incallui/gif/GifDrawable;)V
    .locals 7

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "setPrimaryGifImage: current state is multi-party call"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "VoiceCallCardFragment"

    const-string v2, "fragment is detached from activity, return"

    invoke-static {v0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSmartCallView:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSmartCallView:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->isSpamCallImageShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_4

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_5

    :cond_4
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "setPrimaryGifImage: spam call image display"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    move v0, v1

    :goto_1
    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v4, :cond_a

    move v3, v1

    :goto_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-virtual {v6}, Lcom/android/incallui/fragment/view/CallCardMcidView;->isPhotoringShowing()Z

    move-result v6

    if-nez v6, :cond_b

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isDisplayingAgif()Z

    move-result v6

    if-nez v6, :cond_b

    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->getInstance()Lcom/android/incallui/util/DesktopModeManager;

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_7
    move v0, v1

    :goto_3
    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/agif/AgifCallServiceUtils;->needToShowAgifFragment(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v2

    :goto_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_8

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getAgifUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->updateGradientColor()V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setGifDrawableToImageView(Landroid/widget/ImageView;Lcom/android/incallui/gif/GifDrawable;)Z

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v1, :cond_c

    move v0, v2

    :goto_5
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_d

    :goto_6
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto :goto_1

    :cond_a
    move v3, v2

    goto :goto_2

    :cond_b
    move v0, v2

    goto :goto_3

    :cond_c
    move v0, v4

    goto :goto_5

    :cond_d
    move v2, v4

    goto :goto_6

    :cond_e
    move v1, v0

    goto :goto_4
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 9

    const/4 v1, 0x0

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v1, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "setPrimaryImage: current state is multi-party call"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "VoiceCallCardFragment"

    const-string v1, "fragment is detached from activity, return"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSmartCallView:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSmartCallView:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->isSpamCallImageShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v5, 0xa

    if-eq v0, v5, :cond_4

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v5, 0x9

    if-ne v0, v5, :cond_5

    :cond_4
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "setPrimaryImage: spam call image display"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_7

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getAgifUri()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_7

    if-eqz p2, :cond_6

    move-object v1, p1

    :cond_6
    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->updateGradientColor(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    invoke-static {v6}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02045b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    move p2, v2

    :cond_8
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move p2, v3

    :cond_a
    const-string v0, "VoiceCallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPrimaryImage: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", image: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_b
    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v6}, Lcom/android/incallui/util/CallTypeUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_c
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    move v0, v2

    :goto_2
    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v4, :cond_14

    move v5, v2

    :goto_3
    if-eqz p2, :cond_15

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mMcidView:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/view/CallCardMcidView;->isPhotoringShowing()Z

    move-result v1

    if-nez v1, :cond_15

    :cond_d
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isDisplayingAgif()Z

    move-result v1

    if-nez v1, :cond_15

    if-eqz v0, :cond_e

    if-eqz v5, :cond_e

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->getInstance()Lcom/android/incallui/util/DesktopModeManager;

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_e
    move v0, v2

    :goto_4
    if-eqz v5, :cond_f

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/agif/AgifCallServiceUtils;->needToShowAgifFragment(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v0, v3

    :cond_f
    const-string v1, "VoiceCallCardFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPrimaryImage: needToShowPhoto - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_16

    move v1, v3

    :goto_5
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    move v4, v3

    :cond_10
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v0

    if-eqz v0, :cond_17

    :goto_6
    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-direct {p0, v3, v6, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForHoldPhoto(ZLcom/android/incallui/Call;I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    goto/16 :goto_0

    :cond_11
    if-eqz p2, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a031b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    goto/16 :goto_1

    :cond_12
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "setPrimaryImage: duplicated image"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_13
    move v0, v3

    goto/16 :goto_2

    :cond_14
    move v5, v3

    goto/16 :goto_3

    :cond_15
    move v0, v3

    goto :goto_4

    :cond_16
    move v1, v4

    goto :goto_5

    :cond_17
    move v3, v5

    goto :goto_6
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

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifName:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

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

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setPrimaryNameSize(Ljava/lang/String;F)F
    .locals 6

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a008e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v2

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0087

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget v4, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayWidth:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v4, v2

    move v2, v1

    move v1, p2

    :cond_0
    if-le v2, v4, :cond_1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    sub-float/2addr v1, v5

    cmpg-float v5, v1, v0

    if-gez v5, :cond_0

    :goto_0
    return v0

    :cond_1
    move v0, v1

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
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->time:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
    .locals 3

    const v0, 0x7f020422

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setProfileForwardingContent(ILjava/lang/String;Ljava/lang/String;)V

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
    const-string v0, "agif_call_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->calculateWidthOfAgifView()V

    :cond_1
    return-void
.end method

.method public showModifyStateInfoBanner(ZLjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public showModifyStateInfoBanner(ZLjava/lang/String;[Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showModifyStateInfoBanner(Z[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public updateAgifContainer(Z)V
    .locals 8

    const/4 v7, 0x4

    const/16 v3, 0x8

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAgifContainer needToGone : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifDummy:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isDisplayingAgif()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz p1, :cond_4

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getAgifUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifDummy:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->gifPhoto:Lcom/android/incallui/gif/GifDrawable;

    if-eqz v0, :cond_8

    iget-object v0, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->gifPhoto:Lcom/android/incallui/gif/GifDrawable;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryGifImage(Lcom/android/incallui/gif/GifDrawable;)V

    :goto_1
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSmartCallView:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSmartCallView:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    invoke-virtual {v0, v5}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallCardPriority(I)V

    if-nez p1, :cond_7

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/AgifPresenter$AgifUi;->onAgifViewStateChanged(Z)V

    :cond_7
    :goto_2
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-direct {p0, v0, v4, v5}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->relayoutCallInfoContainer(ILcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1

    :cond_9
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-ne v0, v7, :cond_c

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isFromPopupForAnswer()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_3
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->calculateWidthOfAgifView()V

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifName:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    move v2, v3

    :goto_4
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->bringToFront()V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifNoIdText:Landroid/widget/TextView;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifNoIdText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifNoIdText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->bringToFront()V

    :cond_b
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateScaleForCallerInfo(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_e

    move v2, v3

    :goto_5
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_f

    move v2, v1

    :goto_6
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifDummy:Landroid/view/View;

    if-eqz v0, :cond_10

    :goto_7
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-ne v0, v7, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifDummy:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifMgr:Lcom/android/incallui/agif/AgifImageManager;

    invoke-virtual {v1}, Lcom/android/incallui/agif/AgifImageManager;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifDummy:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :cond_c
    move v0, v1

    goto :goto_3

    :cond_d
    move v2, v1

    goto :goto_4

    :cond_e
    move v2, v1

    goto :goto_5

    :cond_f
    move v2, v3

    goto :goto_6

    :cond_10
    move v1, v3

    goto :goto_7
.end method

.method public updateAgifImage()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateBelowButtonMargin(Z)V
    .locals 5

    const v4, 0x7f0a0084

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a04cf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/agif/AgifCallServiceUtils;->needToShowAgifFragment(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    if-ge v1, v2, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1
.end method

.method public updateCallButtons()V
    .locals 3

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v0, :cond_0

    const-string v0, "VoiceCallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallButtons() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showVZWVoLTEMenu()V

    :cond_0
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

.method public updatePanelForCallState()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V

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

.method public updateSpamCallInfo(Lcom/android/incallui/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSmartCallView:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mSmartCallView:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    invoke-virtual {v1, p0, p1, v0}, Lcom/android/incallui/fragment/view/CallCardSmartCallView;->updateSpamCallInfo(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_0
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
