.class public Lcom/android/incallui/fragment/MultiPartyCallCardFragment;
.super Lcom/android/incallui/fragment/CallCardFragment;
.source "MultiPartyCallCardFragment.java"

# interfaces
.implements Lcom/android/incallui/CallCardUi;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;


# static fields
.field public static final ACTION_MENU_CHANGE:Ljava/lang/String; = "com.samsung.android.incalllui.rcsshareui.action.ACTION_MENU_CHANGE"

.field private static final LOG_TAG:Ljava/lang/String; = "MultiPartyCallCardFragment"

.field private static final TAG_PHOTOTYPE_CONTACT:I = 0x2

.field private static final TAG_PHOTOTYPE_DEFAULT:I = 0x0

.field private static final TAG_PHOTOTYPE_DEFAULT_GROUP:I = 0x1


# instance fields
.field private final MAX_CALLERS_IN_CONFERENCE:I

.field public isVZWConfInitiated:Z

.field private mConferenceInfoBanner:Landroid/view/ViewStub;

.field private mConferenceInfoText:Landroid/widget/TextView;

.field protected mCurrentPrimaryCallName:Ljava/lang/String;

.field protected mCurrentPrimaryCallNumber:Ljava/lang/String;

.field protected mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

.field protected mCurrentSecondaryCallName:Ljava/lang/String;

.field protected mCurrentSecondaryCallNumber:Ljava/lang/String;

.field protected mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

.field protected mDivideLine:Landroid/view/View;

.field protected mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mIsMergeProcessing:Z

.field protected mIsSwapProcessing:Z

.field protected mManageButton:Landroid/widget/Button;

.field protected mManagerAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mMergeAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mMergeButton:Landroid/widget/Button;

.field private mModifyStateInfoBanner:Landroid/view/ViewStub;

.field private mModifyStateInfoText:Landroid/widget/TextView;

.field protected mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mPrimaryCallInfoContainer:Landroid/view/View;

.field protected mPrimaryContainer:Landroid/view/View;

.field private mPrimaryMtConfBanner:Landroid/view/ViewStub;

.field private mPrimaryMtConfText:Landroid/widget/TextView;

.field private mPrimaryMultiLineIcon:Landroid/widget/ImageView;

.field private mPrimaryMultiLineName:Landroid/widget/TextView;

.field private mPrimaryMultiLineStub:Landroid/view/ViewStub;

.field protected mPrimaryPanel:Landroid/view/View;

.field protected mPrimaryPhotoText:Landroid/widget/TextView;

.field protected mSecondaryCallInfoContainer:Landroid/view/View;

.field protected mSecondaryCallName:Landroid/widget/TextView;

.field protected mSecondaryContainer:Landroid/view/View;

.field private mSecondaryElapsedTime:Landroid/widget/TextView;

.field private mSecondaryElapsedTimeLayout:Landroid/view/View;

.field private mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

.field private mSecondaryForwardSlash:Landroid/widget/TextView;

.field private mSecondaryMtConfBanner:Landroid/view/ViewStub;

.field private mSecondaryMtConfText:Landroid/widget/TextView;

.field private mSecondaryMultiLineIcon:Landroid/widget/ImageView;

.field private mSecondaryMultiLineName:Landroid/widget/TextView;

.field private mSecondaryMultiLineStub:Landroid/view/ViewStub;

.field protected mSecondaryPanel:Landroid/view/View;

.field protected mSecondaryPhoto:Landroid/widget/ImageView;

.field protected mSecondaryPhotoContainer:Landroid/view/View;

.field protected mSecondaryPhotoText:Landroid/widget/TextView;

.field private mShowActiveConferenceBanner:Z

.field private mShowBackgroundConferenceBanner:Z

.field private mShowConferenceBanner:Z

.field private mShowConferenceBannerBgCall:Lcom/android/incallui/Call;

.field private mShowConferenceBannerFgCall:Lcom/android/incallui/Call;

.field private mShowConferenceToast:Z

.field protected mSwapAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mSwapButton:Landroid/widget/Button;

.field private mTargetedCallIdforSwap:Ljava/lang/String;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;-><init>()V

    new-instance v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$1;-><init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->receiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->MAX_CALLERS_IN_CONFERENCE:I

    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    iput-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBanner:Z

    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerBgCall:Lcom/android/incallui/Call;

    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerFgCall:Lcom/android/incallui/Call;

    iput-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceToast:Z

    iput-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowActiveConferenceBanner:Z

    iput-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowBackgroundConferenceBanner:Z

    iput-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isVZWConfInitiated:Z

    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTargetedCallIdforSwap:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTargetedCallIdforSwap:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateContainerLayout()V

    return-void
.end method

.method private animateForEndCall(Lcom/android/incallui/Call;)V
    .locals 4

    const/16 v3, 0xa

    const/16 v2, 0x8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOldCallState:I

    if-eq v1, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateEndImage(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->animateForHideBackground()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->updateStatusBarColor(I)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    :cond_2
    const-string v1, "enable_conference_info_banner"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private arrangeBelowButtonLayout(I)V
    .locals 6

    const/4 v2, 0x1

    const/16 v5, 0x8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v0

    if-ne p1, v5, :cond_2

    if-nez v0, :cond_2

    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

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

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private endAllOfAnimatorSet()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_3
    return-void
.end method

.method private getActiveConferenceGroupCount()I
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method private getCallStateLabelFromState(ILandroid/telecom/DisconnectCause;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    const-string v2, "MultiPartyCallCardFragment"

    const-string v3, "getCallStateLabelFromState getView() or context is empty: "

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    :goto_0
    :pswitch_0
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0900cd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getChildCount(Lcom/android/incallui/Call;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->getIMSConfCallLiveParticipantCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->getIMSConfCallLiveParticipantCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private getConfCallDisplayName(Lcom/android/incallui/Call;Z)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09024e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getConferenceGroupCount(Lcom/android/incallui/Call;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private getConferenceGroupString(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getChildCount(Lcom/android/incallui/Call;)I

    move-result v0

    if-ge v0, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    const-string v1, ""

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "secConferenceCallLabel"

    invoke-virtual {v4, v5, v6}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/util/UnknownFormatConversionException;->printStackTrace()V

    goto :goto_0
.end method

.method private getContainerHeight()I
    .locals 14

    const-wide v12, 0x3fdccccccccccccdL    # 0.45

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v3, v9}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v2, v10, Landroid/util/DisplayMetrics;->density:F

    iget v8, v9, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a01e8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v5, v10

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0345

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v0, v10

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a03eb

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v1, v10

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a051e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v6, v10

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v10, v10

    mul-double/2addr v10, v12

    int-to-double v12, v5

    sub-double/2addr v10, v12

    int-to-double v12, v0

    sub-double/2addr v10, v12

    double-to-int v7, v10

    :goto_0
    const/4 v4, 0x0

    if-ge v7, v6, :cond_3

    div-int/lit8 v4, v6, 0x2

    :goto_1
    return v4

    :cond_0
    cmpl-float v10, v2, v8

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v10, v10

    mul-double/2addr v10, v12

    int-to-double v12, v1

    sub-double/2addr v10, v12

    int-to-double v12, v0

    sub-double/2addr v10, v12

    double-to-int v7, v10

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v10, v12

    int-to-double v12, v5

    sub-double/2addr v10, v12

    int-to-double v12, v0

    sub-double/2addr v10, v12

    double-to-int v7, v10

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v10, v12

    int-to-double v12, v0

    sub-double/2addr v10, v12

    double-to-int v7, v10

    goto :goto_0

    :cond_3
    div-int/lit8 v4, v7, 0x2

    goto :goto_1
.end method

.method private getOnHoldConferenceGroupCount()I
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method private getPhotoMargin(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a035a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    sub-int v2, p1, v0

    div-int/lit8 v1, v2, 0x2

    return v1
.end method

.method private getPhotoTag(Landroid/view/View;I)Ljava/lang/Integer;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPrimaryContainerWidth()I
    .locals 8

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-nez v6, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0357

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0358

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0352

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v5, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    const/4 v1, 0x1

    :goto_1
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    sub-int v6, v5, v3

    sub-int v0, v6, v4

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    sub-int v6, v5, v3

    sub-int v0, v6, v2

    goto :goto_0
.end method

.method private getSecUiAdapter()Lcom/android/incallui/UiAdapter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    return-object v0
.end method

.method private getSecondaryContainerWidth()I
    .locals 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-nez v10, :cond_1

    :cond_0
    move v0, v8

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0357

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v4, v10

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0352

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v3, v10

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a035b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0358

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v5, v10

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v6, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v10, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getVisibility()I

    move-result v10

    if-nez v10, :cond_3

    :cond_2
    move v2, v9

    :goto_1
    iget-object v10, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getVisibility()I

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getVisibility()I

    move-result v10

    if-nez v10, :cond_4

    move v1, v9

    :goto_2
    const/4 v0, 0x0

    if-eqz v1, :cond_5

    sub-int v8, v6, v4

    sub-int v0, v8, v7

    goto :goto_0

    :cond_3
    move v2, v8

    goto :goto_1

    :cond_4
    move v1, v8

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    sub-int v8, v6, v4

    sub-int v0, v8, v5

    goto :goto_0

    :cond_6
    sub-int v8, v6, v4

    sub-int v0, v8, v3

    goto :goto_0
.end method

.method private hideCallButtonsForManager(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/incallui/CallButtonUi;->animateForManager(ZZ)V

    :cond_0
    return-void
.end method

.method private isAnimatorSetRunning()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMaxParticipants()Z
    .locals 6

    const/4 v4, 0x5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupCount(Lcom/android/incallui/Call;)I

    move-result v3

    if-lt v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupCount(Lcom/android/incallui/Call;)I

    move-result v3

    if-lt v3, v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    const-string v3, "MultiPartyCallCardFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMaxParticipants isMAx : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method private isOtherCallTTYvalue()Z
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/incallui/util/SecCallExtraUtils;->getTtyType(Lcom/android/incallui/Call;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MultiPartyCallCardFragment"

    const-string v4, "Primary call\'s TTY value is ON"

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/android/incallui/util/SecCallExtraUtils;->getTtyType(Lcom/android/incallui/Call;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "MultiPartyCallCardFragment"

    const-string v4, "Secondary call\'s TTY value is ON"

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private queryForSwappedCall()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/CallButtonUi;->queryForSwappedCall()V

    :cond_0
    return-void
.end method

.method private resetAllHandler()V
    .locals 5

    const/16 v4, 0x67

    const/16 v3, 0x66

    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "resetAllHandler..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "view is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setPhotoTag(Landroid/view/View;ILjava/lang/Integer;)V
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showConferenceCallBannerForVZW()V
    .locals 13

    const v12, 0x7f090097

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-static {v6, v11, v9}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v4

    const-string v6, "MultiPartyCallCardFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mShowConferenceBanner : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBanner:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMergeComplete(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-static {v6, v11, v9}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/android/incallui/CallList;->getBgCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v1

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v3

    const-string v6, "MultiPartyCallCardFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showConferenceCallBannerForVZW activeCallMtConf:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " backgroundCallMtConf:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-eqz v6, :cond_0

    const-string v6, "MultiPartyCallCardFragment"

    const-string v7, "showConferenceCallBannerForVZW mIsSwapProcessing"

    invoke-static {v6, v7, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    if-eqz v0, :cond_1

    const-string v6, "MultiPartyCallCardFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activeCall, activeCallMtConf : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mShowActiveConferenceBanner : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowActiveConferenceBanner:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%s"

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "MultiPartyCallCardFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Show ActiveConferenceBanner strBanner :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v10, v10, v5}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMtConferenceBanner(ZZLjava/lang/String;)V

    iput-boolean v10, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowActiveConferenceBanner:Z

    invoke-direct {p0, v0, v10}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updatePrimaryForMtConference(Lcom/android/incallui/Call;Z)V

    :cond_1
    :goto_1
    if-eqz v2, :cond_5

    const-string v6, "MultiPartyCallCardFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "backgroundCall, backgroundCallMtConf : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mShowBackgroundConferenceBanner : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowBackgroundConferenceBanner:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%s"

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "MultiPartyCallCardFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Show BackgroundConferenceBanner strBanner :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v10, v9, v5}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMtConferenceBanner(ZZLjava/lang/String;)V

    iput-boolean v10, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowBackgroundConferenceBanner:Z

    invoke-direct {p0, v2, v10}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateSecondaryForMtConference(Lcom/android/incallui/Call;Z)V

    goto/16 :goto_0

    :cond_2
    iget-boolean v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowActiveConferenceBanner:Z

    if-eqz v6, :cond_1

    const-string v6, "NONE"

    invoke-virtual {p0, v9, v10, v6}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMtConferenceBanner(ZZLjava/lang/String;)V

    iput-boolean v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowActiveConferenceBanner:Z

    invoke-direct {p0, v0, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updatePrimaryForMtConference(Lcom/android/incallui/Call;Z)V

    goto :goto_1

    :cond_3
    iget-boolean v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowBackgroundConferenceBanner:Z

    if-eqz v6, :cond_4

    const-string v6, "NONE"

    invoke-virtual {p0, v9, v9, v6}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMtConferenceBanner(ZZLjava/lang/String;)V

    iput-boolean v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowBackgroundConferenceBanner:Z

    invoke-direct {p0, v2, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateSecondaryForMtConference(Lcom/android/incallui/Call;Z)V

    goto/16 :goto_0

    :cond_4
    const-string v6, "NONE"

    invoke-virtual {p0, v9, v9, v6}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMtConferenceBanner(ZZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v6, "NONE"

    invoke-virtual {p0, v9, v9, v6}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMtConferenceBanner(ZZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private showMergeComplete(Lcom/android/incallui/Call;)V
    .locals 7

    const/16 v6, 0xb

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MultiPartyCallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showMergeComplete mShowConferenceBannerBgCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerBgCall:Lcom/android/incallui/Call;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "MultiPartyCallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showMergeComplete mShowConferenceBannerFgCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerFgCall:Lcom/android/incallui/Call;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerBgCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerBgCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-eq v1, v6, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerBgCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerFgCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerBgCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerFgCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v6, :cond_2

    :cond_1
    const-string v1, "enable_conference_info_banner"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBanner:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v5}, Lcom/android/incallui/UiAdapter;->showConferenceStateMessage(ZLjava/lang/String;Z)V

    iput-boolean v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBanner:Z

    const-string v1, "MultiPartyCallCardFragment"

    const-string v2, "Show Merged banner"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceToast:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09024c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iput-boolean v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceToast:Z

    goto :goto_0
.end method

.method private showMessageVoiceFromvideo(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getMessageVoiceFromVideo()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/UiAdapter;->showVoiceCallModifyStateMessage(ZI)V

    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/android/incallui/UiAdapter;->showVoiceCallModifyStateMessage(ZI)V

    goto :goto_0
.end method

.method private showOnHoldText(Z)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v0

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f05001f

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCallStateLabelForCallState(ILjava/lang/CharSequence;)V
    .locals 2

    iget v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOldCallState:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->manageCallEndTimeBlink(I)V

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->removeMessageForBlinkTime()V

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "not update stateLabel for blink call time"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "not update stateLabel for blink call time"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCallerInfo()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateContainerLayout()V
    .locals 12

    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getContainerHeight()I

    move-result v0

    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryContainer:Landroid/view/View;

    invoke-virtual {v11, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryContainer:Landroid/view/View;

    invoke-virtual {v11, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    invoke-virtual {v11, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPhotoMargin(I)I

    move-result v5

    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    iput v5, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v5, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v11, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPrimaryContainerWidth()I

    move-result v1

    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v11, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getSecondaryContainerWidth()I

    move-result v8

    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v11, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateEndImage(Lcom/android/incallui/Call;)V
    .locals 9

    const v8, 0x7f0203ae

    const v7, 0x7f0201f0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a035a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0203ac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v0}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v3}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-boolean v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-nez v4, :cond_6

    const/4 v1, 0x0

    iget-boolean v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0151

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v0}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v3}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v0}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v3}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private updateManageButton(Lcom/android/incallui/Call;)V
    .locals 6

    const/4 v3, 0x1

    const/16 v4, 0x80

    invoke-virtual {p1, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMultipartyCallButtons canManageConference = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isConference = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v4, :cond_6

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    move v2, v3

    :goto_0
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/TelecomAdapter;->getParticipantsCount()I

    move-result v4

    if-le v4, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {p1}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getPreviousParentId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->hideConferenceCallManager()V

    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_5

    :cond_4
    const/4 v2, 0x0

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateManageAndHideConferenceCallButton(Z)V

    :cond_6
    return-void

    :cond_7
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateMergeCallButton(Lcom/android/incallui/Call;)V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallList;->getBgCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    const-string v3, "support_merge_call"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUIConfig;->isSEATELSIM()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "MultiPartyCallCardFragment"

    const-string v4, "updateMultipartyCallButtons Not support merge"

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    :cond_1
    const-string v3, "ims_only_conf_initiator_can_merge"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasImsConferenceParticipant()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "MultiPartyCallCardFragment"

    const-string v4, "updateMultipartyCallButtons Not support merge, has IMS conference participant"

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    :cond_2
    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVolteConference(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "MultiPartyCallCardFragment"

    const-string v4, "Initiator is not allowed to merge another conference call to the N-way call "

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtySetting()I

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isOtherCallTTYvalue()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string v3, "MultiPartyCallCardFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMultipartyCallButtons Not support merge, tty : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtySetting()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isOtherCallTTYvalue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isOtherCallTTYvalue()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    :cond_5
    const-string v3, "show_conference_maximum_participants_toast"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v1, :cond_6

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isMaxParticipants()Z

    move-result v1

    :cond_6
    const-string v3, "MultiPartyCallCardFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMultipartyCallButtons canMerge:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v1, :cond_8

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setFocusable(Z)V

    :cond_7
    return-void

    :cond_8
    const/16 v3, 0x8

    goto :goto_0
.end method

.method private updatePhotoContainer(ZZ)V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a035a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0355

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float v0, v3, v4

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v8, [F

    neg-float v6, v0

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private updatePrimaryForMtConference(Lcom/android/incallui/Call;Z)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method private updateSecondaryForMtConference(Lcom/android/incallui/Call;Z)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method private updateSwapCallButton(Lcom/android/incallui/Call;)V
    .locals 4

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->needToShowSwapButton()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public animateForHideManager(Z)V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isAdded()Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "MultiPartyCallCardFragment"

    const-string v16, "animateForHideManager : fragment is detached from activity, return"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v15

    if-eqz v15, :cond_1

    const-string v15, "MultiPartyCallCardFragment"

    const-string v16, "animateForHideManager...isRunning"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "MultiPartyCallCardFragment"

    const-string v16, "animateForHideManager...cancel manage animation"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    const-string v15, "MultiPartyCallCardFragment"

    const-string v16, "animateForHideManager..."

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v5

    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    sget-object v16, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v15, :cond_7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_7

    const/16 v15, 0x80

    invoke-virtual {v2, v15}, Lcom/android/incallui/Call;->can(I)Z

    move-result v14

    const-string v15, "vzw_volte_ui"

    invoke-static {v15}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, "MultiPartyCallCardFragment"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "animateForHideManager childCalls Size:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v14, 0x0

    :cond_4
    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_5

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getPreviousParentId()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    :cond_5
    const/4 v14, 0x1

    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateManageAndHideConferenceCallButton(Z)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    sget-object v16, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_8
    const-string v15, "vzw_volte_ui"

    invoke-static {v15}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    sget-object v16, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    sget-object v16, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_a
    const-string v15, "enable_conference_info_banner"

    invoke-static {v15}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    sget-object v16, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_b
    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showSecondaryContainer(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    sget-object v16, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    sget-object v16, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    sget-object v16, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const v19, 0x3ecccccd    # 0.4f

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v15

    invoke-virtual {v15, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v15

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v15}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const/16 v16, 0xff

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v15}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const/16 v16, 0xff

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    sget-object v16, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateDivideLine()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d003e

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v16, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual/range {v15 .. v16}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v0, v4

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method protected animateForManager()V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "MultiPartyCallCardFragment"

    const-string v9, "animateForManager...isRunning"

    invoke-static {v8, v9, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "MultiPartyCallCardFragment"

    const-string v9, "animateForManager...cancel hide manage animation"

    invoke-static {v8, v9, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    const-string v8, "MultiPartyCallCardFragment"

    const-string v9, "animateForManager..."

    invoke-static {v8, v9, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_3
    const-string v8, "vzw_volte_ui"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_4
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_5
    const-string v8, "enable_conference_info_banner"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_8
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mDivideLine:Landroid/view/View;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mDivideLine:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v9}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d003d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v10, v1

    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v8

    new-instance v9, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$4;

    invoke-direct {v9, p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$4;-><init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showConferenceCallManager()V

    const-string v8, "support_mobile_keyboard"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/android/incallui/InCallPresenter;->addMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    goto/16 :goto_0
.end method

.method protected animateForMerge()V
    .locals 14

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "MultiPartyCallCardFragment"

    const-string v9, "animateForMerge...isRunning"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceToast:Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerFgCall:Lcom/android/incallui/Call;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/incallui/CallList;->getBgCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerBgCall:Lcom/android/incallui/Call;

    const-string v8, "enable_conference_info_banner"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v8}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v8}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupCount(Lcom/android/incallui/Call;)I

    move-result v8

    const/4 v9, 0x5

    if-ge v8, v9, :cond_2

    :cond_1
    if-eqz v5, :cond_d

    invoke-direct {p0, v5}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupCount(Lcom/android/incallui/Call;)I

    move-result v8

    const/4 v9, 0x5

    if-lt v8, v9, :cond_d

    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBanner:Z

    const-string v8, "MultiPartyCallCardFragment"

    const-string v9, "animateForMerge, mShowConferenceBanner is false"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    :cond_4
    const-string v8, "MultiPartyCallCardFragment"

    const-string v9, "animateForMerge..."

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_6
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v8, :cond_7

    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getContainerHeight()I

    move-result v8

    int-to-float v1, v8

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    neg-float v12, v1

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_7
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_8
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mergeCallerInfoForAnim()V

    const-string v8, "vzw_volte_ui"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v9}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0041

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v10, v2

    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v8

    new-instance v9, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$3;

    invoke-direct {v9, p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$3;-><init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    const-string v8, "voice_call_recording"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    :cond_c
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryCallMoreMenu()V

    goto/16 :goto_0

    :cond_d
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBanner:Z

    const-string v8, "MultiPartyCallCardFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "animateForMerge...mShowConferenceBannerFgCall : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerFgCall:Lcom/android/incallui/Call;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "MultiPartyCallCardFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "animateForMerge...mShowConferenceBannerBgCall : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerBgCall:Lcom/android/incallui/Call;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "MultiPartyCallCardFragment"

    const-string v9, "animateForMerge, mShowConferenceBanner is true"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method

.method protected animateForSwap()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "MultiPartyCallCardFragment"

    const-string v14, "animateForSwap...isRunning"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v13, "feature_multisim_display_sim_icon"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;

    invoke-interface {v2}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->animateForSwap()V

    goto :goto_1

    :cond_1
    const-string v13, "MultiPartyCallCardFragment"

    const-string v14, "animateForSwap..."

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTargetedCallIdforSwap:Ljava/lang/String;

    :cond_2
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d005b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getContainerHeight()I

    move-result v13

    int-to-float v4, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v4, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    int-to-long v14, v5

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    neg-float v0, v4

    move/from16 v17, v0

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    int-to-long v14, v5

    invoke-virtual {v11, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->swapCallerInfoForAnim()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d005d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d005c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    int-to-long v14, v7

    invoke-virtual {v8, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v13

    int-to-long v14, v6

    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    int-to-long v14, v7

    invoke-virtual {v10, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v13

    int-to-long v14, v6

    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v14, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v14}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v14, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;-><init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    const-string v13, "vzw_volte_ui"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/android/incallui/UiAdapter;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryCallMoreMenu()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->removeMultipartyCallButtons()V

    goto/16 :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected getConferenceCallManagerShowingState()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v0

    return v0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/incallui/InCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

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

.method protected hideConferenceCallManager()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->showConferenceCallManager(Z)V

    :cond_0
    return-void
.end method

.method protected inflateRecordInfo()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100212

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100261

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mRecordIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mRecordText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100263

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    :cond_0
    return-void
.end method

.method public isManageConferenceVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isMergeProcessing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    return v0
.end method

.method public isSwapProcessing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected mergeCallerInfoForAnim()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConfCallDisplayName(Lcom/android/incallui/Call;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09024d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public needToShowMenu()Z
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->needToShowMenu()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const-string v4, "MultiPartyCallCardFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick(View "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isAnimatorSetRunning()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->hasAnimationMsg()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const-string v4, "MultiPartyCallCardFragment"

    const-string v5, "onClick : isAnimatorSetRunning or hasAnimationMsg, skip operation"

    invoke-static {v4, v5, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sparse-switch v3, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onClick(Landroid/view/View;)V

    goto :goto_0

    :sswitch_0
    const-string v4, "att_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoOneway()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMergeNotAllowDialog()V

    goto :goto_0

    :cond_3
    const-string v4, "show_conference_maximum_participants_toast"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isMaxParticipants()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "MultiPartyCallCardFragment"

    const-string v6, "rechaed maximum participants toast"

    invoke-static {v4, v6, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    const v6, 0x7f0900da

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForMerge()V

    const-string v4, "MPVC"

    const-string v6, "Merge"

    invoke-static {v2, v4, v6}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0903b9

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForSwap()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->queryForSwappedCall()V

    const-string v4, "MPVC"

    const-string v6, "Swap"

    invoke-static {v2, v4, v6}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090408

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->hideConferenceCallManager()V

    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->updateCallCardFragment()V

    :cond_5
    const-string v4, "MPVC"

    const-string v6, "Hide"

    invoke-static {v2, v4, v6}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0903b2

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getChildCount(Lcom/android/incallui/Call;)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForManager()V

    const-string v4, "MPVC"

    const-string v6, "Manage"

    invoke-static {v2, v4, v6}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0903b3

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getChildCount(Lcom/android/incallui/Call;)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :sswitch_3
    if-eqz v0, :cond_7

    invoke-virtual {v0, v8}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_1
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForSwap()V

    goto/16 :goto_0

    :cond_7
    move v1, v5

    goto :goto_1

    :sswitch_4
    const-string v4, "MultiPartyCallCardFragment"

    const-string v5, "onClick add call menu"

    invoke-static {v4, v5, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_addCall(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->addCallClicked()V

    goto/16 :goto_0

    :sswitch_5
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v8, :cond_1

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_resumeCall(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f100099 -> :sswitch_1
        0x7f10009f -> :sswitch_0
        0x7f1002ec -> :sswitch_2
        0x7f1002f6 -> :sswitch_3
        0x7f100305 -> :sswitch_5
        0x7f100423 -> :sswitch_4
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v1, "onConfigurationChanged"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDisplaySize()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateEri()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$5;-><init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTwoPhoneView:Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTwoPhoneView:Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/CallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f0400ee

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onDestroy()V

    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "onDestroy..."

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->resetAllOfAnimation(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const-string v0, "onDestroyView..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->onDestroyView()V

    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    :cond_0
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onDestroyView()V

    return-void
.end method

.method public onMobileKeyboardChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$6;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$6;-><init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onPause()V

    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "onPause..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0, p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->onPause(Lcom/android/incallui/fragment/CallCardFragment;)V

    return-void
.end method

.method public onResume()V
    .locals 7

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.samsung.android.incalllui.rcsshareui.action.ACTION_MENU_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtySetting()I

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isOtherCallTTYvalue()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallActivity;->updateStatusBarColor(I)V

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;

    invoke-interface {v1}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->onResume()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateCallCardIndicatorArea()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDisplaySize()V

    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onResume()V

    const-string v4, "MultiPartyCallCardFragment"

    const-string v5, "onResume..."

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onStop()V

    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "onStop..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/CallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isVZWConfInitiated:Z

    :cond_0
    const v2, 0x7f100254

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateCallCardIndicatorArea()V

    const v2, 0x7f100297

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mNavigationBarArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateNavigationBar()V

    const v2, 0x7f1002f0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryContainer:Landroid/view/View;

    const v2, 0x7f1002f1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    const v2, 0x7f100198

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const v2, 0x7f1000e9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const v2, 0x7f10010e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const v2, 0x7f1001da

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const v2, 0x7f1000a5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const v2, 0x7f1001db

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const v2, 0x7f100197

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const v2, 0x7f100199

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const v2, 0x7f10026d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    const v2, 0x7f1002e9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    const v2, 0x7f1000a2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    const v2, 0x7f10018c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v2, 0x7f1002eb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    const v2, 0x7f1001d7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateContainer:Landroid/view/View;

    const v2, 0x7f100193

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const v2, 0x7f1002f6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryContainer:Landroid/view/View;

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryContainer:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v2, 0x7f1002f7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    const v2, 0x7f1002fb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    const v2, 0x7f1002ed

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    const v2, 0x7f1002ee

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const v2, 0x7f1002ef

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    const v2, 0x7f100300

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    const v2, 0x7f10009f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f100099

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f1002ec

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f1002f5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mDivideLine:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    const-string v2, "no_receiver_in_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const v2, 0x7f100304

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v2, :cond_2

    const v2, 0x7f100305

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f1002fd

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTimeLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    if-nez v2, :cond_3

    const v2, 0x7f1002fe

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v2, 0x7f10042e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    const v2, 0x7f10042f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100303

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v2, 0x7f1002e4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    :cond_6
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    :cond_7
    const-string v2, "jansky_info_for_tmo"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x7f1002f2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_8
    const v2, 0x7f1002f8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_9
    const v2, 0x7f100351

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineName:Landroid/widget/TextView;

    const v2, 0x7f100350

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineIcon:Landroid/widget/ImageView;

    const v2, 0x7f10035b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineName:Landroid/widget/TextView;

    const v2, 0x7f10035a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineIcon:Landroid/widget/ImageView;

    :cond_a
    const-string v2, "enable_conference_info_banner"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100302

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    :cond_b
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v2, 0x7f100268

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    :cond_c
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfBanner:Landroid/view/ViewStub;

    if-nez v2, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1002f4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfBanner:Landroid/view/ViewStub;

    :cond_d
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfBanner:Landroid/view/ViewStub;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfBanner:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v2, 0x7f100266

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    :cond_e
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfBanner:Landroid/view/ViewStub;

    if-nez v2, :cond_f

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100301

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfBanner:Landroid/view/ViewStub;

    :cond_f
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfBanner:Landroid/view/ViewStub;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfBanner:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v2, 0x7f100267

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    :cond_10
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showConferenceCallBannerForVZW()V

    :cond_11
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;

    invoke-interface {v0, p1}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->onViewCreated(Landroid/view/View;)V

    goto :goto_0

    :cond_12
    return-void
.end method

.method protected removeMultipartyCallButtons()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected resetAllOfAnimation(Z)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "resetAllOfAnimation..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->endAllOfAnimatorSet()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateDivideLine()V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setAlpha(F)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0
.end method

.method protected resetMergeAnimation()V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const-string v2, "MultiPartyCallCardFragment"

    const-string v3, "resetMergeAnimation..."

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateCallerInfo()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateDivideLine()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryCallMoreMenu()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showSecondaryContainer(Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/view/CallCardVolteView;->updateIcon()V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setAlpha(F)V

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setAlpha(F)V

    :cond_8
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    :cond_9
    return-void

    :cond_a
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected resetSplitAnimation()V
    .locals 3

    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "resetSplitAnimation..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->hideConferenceCallManager()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForManager()V

    :cond_3
    return-void
.end method

.method protected resetSwapAnimation()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "resetSwapAnimation..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateCallerInfo()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->swapCallerInfoForAnim()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryCallMoreMenu()V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->updateIcon()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_7
    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
    .locals 23

    const-string v4, "MultiPartyCallCardFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCallState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsMergeProcessing :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v14

    const-string v4, "MultiPartyCallCardFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCallState getPrimaryCall "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "MultiPartyCallCardFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMultipartyCall:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isConference:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x8

    move/from16 v0, p1

    if-ne v0, v4, :cond_1

    const-string v4, "MultiPartyCallCardFragment"

    const-string v5, "setCallState: current state is ONHOLD and merge is processing"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "support_smart_call"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_2

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v16

    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getSmartCallLogInfoUpdated()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    invoke-virtual {v14, v4}, Lcom/android/incallui/Call;->setSmartCallLogInfoUpdated(Z)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_c

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    :goto_1
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    if-eqz v6, :cond_d

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    :goto_2
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    if-eqz v7, :cond_e

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    :goto_3
    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    if-eqz v8, :cond_f

    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    :goto_4
    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderName:Ljava/lang/String;

    if-eqz v9, :cond_10

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderName:Ljava/lang/String;

    :goto_5
    move-object/from16 v0, v22

    iget-object v10, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderImageUrl:Ljava/lang/String;

    if-eqz v10, :cond_11

    move-object/from16 v0, v22

    iget-object v10, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderImageUrl:Ljava/lang/String;

    :goto_6
    move-object/from16 v0, v22

    iget-object v11, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    if-eqz v11, :cond_12

    move-object/from16 v0, v22

    iget-object v11, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    :goto_7
    move-object/from16 v0, v22

    iget-object v12, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    if-eqz v12, :cond_13

    move-object/from16 v0, v22

    iget-object v12, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    :goto_8
    invoke-virtual/range {v4 .. v12}, Lcom/android/incallui/TelecomAdapter;->setSmartCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_14

    const v4, 0x3ecccccd    # 0.4f

    :goto_9
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_4
    if-eqz p9, :cond_6

    if-nez v18, :cond_6

    const/16 v4, 0xb

    move/from16 v0, p1

    if-ne v0, v4, :cond_5

    if-eqz v14, :cond_5

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    :cond_6
    const-string v4, "enable_conference_info_banner"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showConferenceCallBannerForVZW()V

    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForEndCall(Lcom/android/incallui/Call;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateTextColor(I)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-eqz v4, :cond_16

    const-string v4, "MultiPartyCallCardFragment"

    const-string v5, "setCallState: swap is processing"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_7
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getCallStateLabelFromState(ILandroid/telecom/DisconnectCause;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateCallStateLabelForCallState(ILjava/lang/CharSequence;)V

    const/16 v4, 0x8

    move/from16 v0, p1

    if-ne v0, v4, :cond_17

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showOnHoldText(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateDisplayChildCallChanged()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryCallMoreMenu(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateContainerLayout()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateEri()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateJanskyInfo()V

    const-string v4, "no_receiver_in_call"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->arrangeBelowButtonLayout(I)V

    :cond_8
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMessageVoiceFromvideo(Lcom/android/incallui/Call;)V

    :cond_9
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isVZWConfInitiated:Z

    :cond_a
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOldCallState:I

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v4

    if-nez v4, :cond_18

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isOnlyExistDisconnectConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->hideCallButtonsForManager(Z)V

    :cond_b
    const-string v4, "MultiPartyCallCardFragment"

    const-string v5, "setCallState: current state is not multi-party"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_c
    const-string v5, ""

    goto/16 :goto_1

    :cond_d
    const-string v6, ""

    goto/16 :goto_2

    :cond_e
    const-string v7, ""

    goto/16 :goto_3

    :cond_f
    const-string v8, ""

    goto/16 :goto_4

    :cond_10
    const-string v9, ""

    goto/16 :goto_5

    :cond_11
    const-string v10, ""

    goto/16 :goto_6

    :cond_12
    const-string v11, ""

    goto/16 :goto_7

    :cond_13
    const-string v12, ""

    goto/16 :goto_8

    :cond_14
    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_9

    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMergeComplete(Lcom/android/incallui/Call;)V

    goto/16 :goto_a

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v4, :cond_7

    const-string v4, "MultiPartyCallCardFragment"

    const-string v5, "setCallState: merge is processing"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_b

    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_c

    :cond_18
    if-eqz v14, :cond_1f

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1f

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getSecondActiveCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_1f

    const/16 v17, 0x1

    :goto_d
    if-eqz v18, :cond_20

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-nez v4, :cond_20

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing()Z

    move-result v4

    if-nez v4, :cond_20

    const/16 v21, 0x1

    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showSecondaryContainer(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mDivideLine:Landroid/view/View;

    if-eqz v4, :cond_1a

    if-nez v21, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v4

    if-eqz v4, :cond_21

    :cond_19
    const/16 v19, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mDivideLine:Landroid/view/View;

    if-eqz v19, :cond_22

    const/4 v4, 0x0

    :goto_10
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    const/16 v20, 0x1

    const-string v4, "ims_voice_conference_vzw"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-static {v14}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v4

    if-eqz v4, :cond_1b

    const/16 v20, 0x0

    :cond_1b
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v4

    if-eqz v4, :cond_1c

    const/16 v20, 0x0

    :cond_1c
    if-eqz v20, :cond_1d

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->resetAllOfAnimation(Z)V

    :cond_1d
    invoke-static {v14}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/16 v4, 0x9

    move/from16 v0, p1

    if-eq v0, v4, :cond_1e

    const/16 v4, 0xa

    move/from16 v0, p1

    if-ne v0, v4, :cond_23

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->hideConferenceCallManager()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    goto/16 :goto_0

    :cond_1f
    const/16 v17, 0x0

    goto :goto_d

    :cond_20
    const/16 v21, 0x0

    goto :goto_e

    :cond_21
    const/16 v19, 0x0

    goto :goto_f

    :cond_22
    const/4 v4, 0x4

    goto :goto_10

    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;

    move/from16 v0, p1

    invoke-interface {v13, v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->setCallState(I)V

    goto :goto_11
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 18

    const-string v13, "MultiPartyCallCardFragment"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Setting primary call in MultiPartyCallCardFragment isConference:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v13, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x68

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x68

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/CallList;->isOnlyExistDisconnectConferenceCall()Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "MultiPartyCallCardFragment"

    const-string v16, "setPrimary: current state is not multi-party"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v13, v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-eqz v13, :cond_e

    const-string v13, "MultiPartyCallCardFragment"

    const-string v16, "setPrimary: swap is processing"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v13, v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const-wide/16 v14, 0x0

    if-eqz p6, :cond_4

    move-object/from16 v0, p6

    iget-object v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p6

    iget-object v11, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    iget-boolean v8, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    move-object/from16 v0, p6

    iget-wide v14, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v13

    check-cast v13, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v13}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v5

    const/4 v9, 0x0

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/util/CallTypeUtils;->isSrvccConference(Ljava/lang/String;)Z

    move-result v9

    :cond_5
    if-nez p4, :cond_6

    if-eqz v9, :cond_10

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConfCallDisplayName(Lcom/android/incallui/Call;Z)Ljava/lang/String;

    move-result-object p2

    const/16 p1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "MultiPartyCallCardFragment"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setPrimary for conference: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v13, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v9, :cond_f

    const/4 v10, 0x0

    :cond_7
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v13, :cond_8

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v8}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setProfileIcon(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDisplaySize()V

    const-string v13, "tablet_device"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->needToShowVolumeButton()Z

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showVolumeButton(Z)V

    :cond_9
    const/4 v12, 0x1

    const-string v13, "ims_voice_conference_vzw"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-static {v5}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v12, 0x0

    :cond_a
    const-string v13, "vzw_volte_ui"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v12, 0x0

    :cond_b
    if-eqz v12, :cond_c

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->resetAllOfAnimation(Z)V

    :cond_c
    invoke-static {v5}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v13

    const/16 v16, 0x9

    move/from16 v0, v16

    if-eq v13, v0, :cond_13

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v13

    const/16 v16, 0xa

    move/from16 v0, v16

    if-eq v13, v0, :cond_13

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v13

    if-nez v13, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForManager()V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v13, :cond_3

    const-string v13, "MultiPartyCallCardFragment"

    const-string v16, "setPrimary: merge is processing"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v13, v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_f
    move-object v10, v7

    goto/16 :goto_1

    :cond_10
    if-eqz v5, :cond_7

    if-eqz p6, :cond_7

    move-object/from16 v0, p6

    iget-boolean v13, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v13, :cond_7

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v13

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v13, v6, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_11

    iget-object v0, v6, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    move-object/from16 p2, v0

    :cond_11
    iget-object v13, v6, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_7

    iget-object v11, v6, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;

    move-object/from16 v0, p6

    invoke-interface {v4, v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_3
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iput-object p2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getCallTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setTTS(JLandroid/view/View;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, p1, p2}, Lcom/android/incallui/InCallActivity;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setPrimaryCallMoreMenu()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "MultiPartyCallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPrimaryCallMoreMenu state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryCallMoreMenu(I)V

    :cond_0
    return-void
.end method

.method protected setPrimaryCallMoreMenu(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->needToShowMenu()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    const/16 v1, 0xa

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMenu(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallActivity;->setPrimaryCallMenuForDialpad(Z)V

    :cond_4
    return-void
.end method

.method public declared-synchronized setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 12

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;
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
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    move-object v8, p1

    :cond_2
    invoke-virtual {v0, v8}, Lcom/android/incallui/InCallActivity;->updateGradientColor(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a035a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v2, v8

    if-nez p2, :cond_5

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0203ad

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1, v2}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v8, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPhotoTag(Landroid/view/View;ILjava/lang/Integer;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v8}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {v7}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPhotoTag(Landroid/view/View;I)Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0203ab

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1, v2}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v8, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPhotoTag(Landroid/view/View;ILjava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_7
    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v9, 0x2

    invoke-direct {p0, v8, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPhotoTag(Landroid/view/View;I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v5, :cond_0

    :cond_8
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v9, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v8, v9, v10}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPhotoTag(Landroid/view/View;ILjava/lang/Integer;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1, v2}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v8, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    const/4 v3, 0x0

    if-eqz v4, :cond_a

    iget-boolean v8, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v8, :cond_a

    iget-object v8, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    :cond_a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPhotoTag(Landroid/view/View;I)Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1, v2}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v8, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPhotoTag(Landroid/view/View;ILjava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 15

    const-string v9, "MultiPartyCallCardFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Setting secondary call isConference : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v9, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const-wide/16 v10, 0x0

    if-eqz p8, :cond_0

    move-object/from16 v0, p8

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p8

    iget-object v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p8

    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    move-object/from16 v0, p8

    iget-wide v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    move-object/from16 v0, p8

    iget-boolean v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v9, :cond_3

    move-object/from16 v0, p8

    iget-object v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    move-object/from16 v0, p8

    iget-object v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    :cond_0
    :goto_0
    if-eqz p6, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v9

    check-cast v9, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v9}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v8

    const-string v9, "MultiPartyCallCardFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Setting secondary call secondaryCall:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v9, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConfCallDisplayName(Lcom/android/incallui/Call;Z)Ljava/lang/String;

    move-result-object p2

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "MultiPartyCallCardFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setSecondary for conference: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v9, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v3, :cond_1

    iput-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    :cond_1
    :goto_1
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryName(Ljava/lang/String;Z)V

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    invoke-virtual {p0, v7, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryProfileIcon(J)V

    const-string v9, "vzw_volte_ui"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f090047

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v6, v12, v13

    invoke-static {v9, v12}, Lcom/android/incallui/util/GraphicResourceUtils;->setDescriptionToView(Landroid/view/View;[Ljava/lang/String;)V

    :cond_2
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->resetAllOfAnimation(Z)V

    return-void

    :cond_3
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    if-eqz p8, :cond_1

    move-object/from16 v0, p8

    iget-boolean v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v9, :cond_1

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v9

    move-object/from16 v0, p8

    iget-object v12, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v9, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v0, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    move-object/from16 p2, v0

    :cond_5
    iget-object v9, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1

    iget-object v7, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    goto :goto_1
.end method

.method public setSecondaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 6

    const/16 v3, 0x8

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTimeLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCallTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setTTS(JLandroid/view/View;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/android/incallui/util/GraphicResourceUtils;->setDescriptionToView(Landroid/view/View;[Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTimeLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public declared-synchronized setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/incallui/CallList;->getBgCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;
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
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a035a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v1, v7

    if-nez p2, :cond_3

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0203ad

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v7, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPhotoTag(Landroid/view/View;ILjava/lang/Integer;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v7}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPhotoTag(Landroid/view/View;I)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0203ab

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v7, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPhotoTag(Landroid/view/View;ILjava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_5
    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v8, 0x2

    invoke-direct {p0, v7, v8}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPhotoTag(Landroid/view/View;I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v4, :cond_0

    :cond_6
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v8, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPhotoTag(Landroid/view/View;ILjava/lang/Integer;)V

    invoke-static {p1, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v7, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_8

    iget-boolean v7, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v7, :cond_8

    iget-object v7, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPhotoTag(Landroid/view/View;I)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0203ad

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v7, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPhotoTag(Landroid/view/View;ILjava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public setSecondaryName(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "setVisible - - getView() == null"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected showConferenceCallManager()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->showConferenceCallManager()V

    return-void
.end method

.method public showConferenceStateInfoBanner(ZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "MultiPartyCallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showConferenceStateInfoBanner show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 10

    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "MultiPartyCallCardFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showManageConferenceCallButton visible : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_2

    const-string v7, "vzw_volte_ui"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v7, 0x80

    invoke-virtual {v0, v7}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v7, :cond_0

    if-eqz v2, :cond_a

    if-eqz v1, :cond_a

    move v3, v4

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v7

    if-nez v7, :cond_b

    :goto_2
    and-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v6, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->hideConferenceCallManager()V

    :cond_3
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPreviousParentId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    :cond_4
    const/4 v3, 0x1

    :cond_5
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v7, 0x9

    if-eq v4, v7, :cond_6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v7, 0xa

    if-ne v4, v7, :cond_7

    :cond_6
    const/4 v3, 0x0

    :cond_7
    iget-boolean v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isVZWConfInitiated:Z

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPrimaryConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v3, 0x1

    :cond_8
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v3, :cond_c

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateManageAndHideConferenceCallButton(Z)V

    goto/16 :goto_0

    :cond_a
    move v3, v5

    goto :goto_1

    :cond_b
    move v4, v5

    goto :goto_2

    :cond_c
    move v5, v6

    goto :goto_3
.end method

.method public showMenu(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->showMenu(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "showMenu : fragment is detached from activity, return"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0, p0, p1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showMenu(Lcom/android/incallui/fragment/CallCardFragment;Z)V

    goto :goto_0
.end method

.method protected showMergeNotAllowDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0905af

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090046

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$7;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$7;-><init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public showModifyStateInfoBanner(ZLjava/lang/String;)V
    .locals 3

    const-string v0, "MultiPartyCallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showModifyStateInfoBanner message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showMtConferenceBanner(ZZLjava/lang/String;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected showSecondaryContainer(Z)V
    .locals 7

    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_0
    and-int/2addr p1, v2

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz p1, :cond_5

    move v2, v4

    :goto_1
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz p1, :cond_6

    move v2, v4

    :goto_2
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz p1, :cond_7

    const v2, 0x3ecccccd    # 0.4f

    :goto_3
    invoke-virtual {v6, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz p1, :cond_2

    move v5, v4

    :cond_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f090047

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    aput-object v6, v5, v4

    aput-object v1, v5, v3

    invoke-static {v2, v5}, Lcom/android/incallui/util/GraphicResourceUtils;->setDescriptionToView(Landroid/view/View;[Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    move v2, v5

    goto :goto_1

    :cond_6
    move v2, v5

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_3
.end method

.method protected swapCallerInfoForAnim()V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const-string v5, "MultiPartyCallCardFragment"

    const-string v6, "swapCallerInfoForAnim...name is empty"

    invoke-static {v5, v6, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string v6, "MultiPartyCallCardFragment"

    const-string v7, "swapCallerInfoForAnim..."

    invoke-static {v6, v7, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_4
    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v6, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :goto_2
    invoke-virtual {p0, v6, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryName(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBanner:Z

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move v4, v5

    goto :goto_2
.end method

.method public updateDisplayChildCallChanged()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v9, :cond_2

    invoke-virtual {p0, v10, v7}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "MultiPartyCallCardFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDisplayChildCallChanged primary: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0, v7}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConfCallDisplayName(Lcom/android/incallui/Call;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    const-string v4, "MultiPartyCallCardFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDisplayChildCallChanged getState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v9, :cond_3

    invoke-virtual {p0, v10, v7}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V

    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "MultiPartyCallCardFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDisplayChildCallChanged secondary: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v3, v7}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConfCallDisplayName(Lcom/android/incallui/Call;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryName(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    goto/16 :goto_0
.end method

.method public updateDivideLine()V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mDivideLine:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mDivideLine:Landroid/view/View;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_1
.end method

.method public updateEri()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateEri()V

    :cond_0
    return-void
.end method

.method public updateJanskyInfo()V
    .locals 11

    const/16 v10, 0x8

    const v9, 0x3ecccccd    # 0.4f

    const/4 v8, 0x0

    const-string v5, "jansky_info_for_tmo"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v5}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v5}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getInstance(Landroid/content/Context;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;

    move-result-object v5

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getJanskyInfo(Ljava/lang/String;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getInstance(Landroid/content/Context;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;

    move-result-object v5

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getJanskyInfo(Ljava/lang/String;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;

    move-result-object v4

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineName:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineName:Ljava/lang/String;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setJanskyMultiLineInfo - primary"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineName:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineName:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineName:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineName:Ljava/lang/String;

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setJanskyMultiLineInfo- secondary"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineName:Landroid/widget/TextView;

    iget-object v6, v4, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineName:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineName:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v2, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineIcon:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineColor:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/android/incallui/util/GraphicResourceUtils;->getJanskyLineIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v4, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineIcon:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineColor:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/android/incallui/util/GraphicResourceUtils;->getJanskyLineIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected updateManageAndHideConferenceCallButton(Z)V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "MultiPartyCallCardFragment"

    const-string v5, "fragment is detached from activity, return"

    invoke-static {v3, v5, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v3, "MultiPartyCallCardFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateManageAndHideConferenceCallButton : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0203a2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v8, v6, v8, v8}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090261

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    const-string v3, "support_folder_hardkey"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-nez v2, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setFocusable(Z)V

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-nez v2, :cond_6

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setFocusable(Z)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-static {v3, v8, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_7

    move v1, v4

    :goto_4
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_4
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0203a6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v8, v6, v8, v8}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090263

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_2

    :cond_6
    move v3, v5

    goto :goto_3

    :cond_7
    move v1, v5

    goto :goto_4
.end method

.method protected updateMultipartyCallButtons()V
    .locals 9

    const/16 v5, 0xff

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-string v3, "MultiPartyCallCardFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateMultipartyCallButtons mIsSwapProcessing : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mIsMergeProcessing:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "MultiPartyCallCardFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateMultipartyCallButtons call : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showSecondaryContainer(Z)V

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateSwapCallButton(Lcom/android/incallui/Call;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMergeCallButton(Lcom/android/incallui/Call;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateManageButton(Lcom/android/incallui/Call;)V

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v1

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v6, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v1, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v1, :cond_6

    :goto_3
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_2

    :cond_6
    move v4, v5

    goto :goto_3
.end method

.method public updateVolteView(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->setCallState(I)V

    :cond_0
    return-void
.end method
