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

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;-><init>()V

    .line 112
    new-instance v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$1;-><init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 128
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->MAX_CALLERS_IN_CONFERENCE:I

    .line 155
    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 156
    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    .line 157
    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 158
    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 159
    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 181
    iput-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBanner:Z

    .line 182
    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerBgCall:Lcom/android/incallui/Call;

    .line 183
    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerFgCall:Lcom/android/incallui/Call;

    .line 184
    iput-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceToast:Z

    .line 186
    iput-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowActiveConferenceBanner:Z

    .line 187
    iput-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowBackgroundConferenceBanner:Z

    .line 197
    iput-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isVZWConfInitiated:Z

    .line 199
    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTargetedCallIdforSwap:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTargetedCallIdforSwap:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateContainerLayout()V

    return-void
.end method

.method private animateForEndCall(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/16 v3, 0xa

    const/16 v2, 0x8

    .line 996
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOldCallState:I

    if-eq v1, v3, :cond_4

    if-ne p1, v3, :cond_4

    .line 999
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 1000
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 1001
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->animateForHideBackground()V

    .line 1002
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateStatusBarColor(I)V

    .line 1003
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    .line 1004
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    .line 1007
    :cond_0
    const-string v1, "enable_conference_info_banner"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1008
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1009
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1010
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1012
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateEndImage()V

    .line 1014
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_4
    return-void
.end method

.method private arrangeBelowButtonLayout(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 1053
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-nez v4, :cond_1

    .line 1069
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v0

    .line 1056
    .local v0, "isMultipartyCall":Z
    if-ne p1, v5, :cond_2

    if-nez v0, :cond_2

    move v1, v2

    .line 1057
    .local v1, "showResumeButton":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 1058
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1059
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1060
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1061
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .end local v1    # "showResumeButton":Z
    :cond_2
    move v1, v3

    .line 1056
    goto :goto_1

    .line 1064
    .restart local v1    # "showResumeButton":Z
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1065
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1066
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1572
    if-nez p2, :cond_1

    .line 1580
    :cond_0
    :goto_0
    return-void

    .line 1573
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1574
    .local v0, "eventText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1575
    .local v1, "size":I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1577
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1578
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private endAllOfAnimatorSet()V
    .locals 1

    .prologue
    .line 2281
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2282
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 2284
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2285
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 2287
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2288
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 2290
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2291
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 2293
    :cond_3
    return-void
.end method

.method private getActiveConferenceGroupCount()I
    .locals 2

    .prologue
    .line 591
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 592
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 596
    :goto_0
    return v1

    .line 594
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 596
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method private getCallStateLabelFromState(ILandroid/telecom/DisconnectCause;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "state"    # I
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 1072
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1073
    :cond_0
    const-string v2, "MultiPartyCallCardFragment"

    const-string v3, "getCallStateLabelFromState getView() or context is empty: "

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const/4 v0, 0x0

    .line 1093
    :cond_1
    :goto_0
    :pswitch_0
    return-object v0

    .line 1076
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1077
    .local v1, "context":Landroid/content/Context;
    const/4 v0, 0x0

    .line 1079
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 1083
    :pswitch_2
    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1084
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1085
    const v2, 0x7f0900cd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1086
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1087
    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1079
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getChildCount(Lcom/android/incallui/Call;)I
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, "childCallCount":I
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->getIMSConfCallLiveParticipantCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 634
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->getIMSConfCallLiveParticipantCount()I

    move-result v0

    .line 638
    :goto_0
    return v0

    .line 636
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private getConfCallDisplayName(Lcom/android/incallui/Call;Z)Ljava/lang/String;
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isSrvccConfCall"    # Z

    .prologue
    .line 2523
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09024d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2524
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method private getConferenceGroupCount(Lcom/android/incallui/Call;)I
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 610
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 612
    :goto_0
    return v0

    .line 611
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 612
    .local v0, "childCallCount":I
    goto :goto_0
.end method

.method private getConferenceGroupString(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 7
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 616
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 625
    :goto_0
    return-object v1

    .line 618
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getChildCount(Lcom/android/incallui/Call;)I

    move-result v0

    .line 621
    .local v0, "childCallCount":I
    if-ge v0, v5, :cond_1

    .line 622
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v2

    .line 623
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "secConferenceCallLabel"

    .line 622
    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 623
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 622
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 625
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v2

    .line 626
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "secConferenceCallLabel"

    .line 625
    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 626
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 625
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getContainerHeight()I
    .locals 14

    .prologue
    const-wide v12, 0x3fdccccccccccccdL    # 0.45

    .line 1409
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

    .line 1410
    .local v3, "display":Landroid/view/Display;
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1411
    .local v9, "realDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v9}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1413
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v2, v10, Landroid/util/DisplayMetrics;->density:F

    .line 1414
    .local v2, "density":F
    iget v8, v9, Landroid/util/DisplayMetrics;->density:F

    .line 1416
    .local v8, "realDensity":F
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a01e8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v5, v10

    .line 1417
    .local v5, "indicatorHeight":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0345

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v0, v10

    .line 1418
    .local v0, "callStateHeight":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a03eb

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v1, v10

    .line 1419
    .local v1, "captionHeight":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0514

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v6, v10

    .line 1421
    .local v6, "minimumContainerHeight":I
    const/4 v7, 0x0

    .line 1422
    .local v7, "realContainerHeight":I
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1423
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

    .line 1432
    :goto_0
    const/4 v4, 0x0

    .line 1433
    .local v4, "height":I
    if-ge v7, v6, :cond_3

    .line 1434
    div-int/lit8 v4, v6, 0x2

    .line 1438
    :goto_1
    return v4

    .line 1424
    .end local v4    # "height":I
    :cond_0
    cmpl-float v10, v2, v8

    if-eqz v10, :cond_1

    .line 1425
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

    .line 1426
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1427
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

    .line 1429
    :cond_2
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v10, v12

    int-to-double v12, v0

    sub-double/2addr v10, v12

    double-to-int v7, v10

    goto :goto_0

    .line 1436
    .restart local v4    # "height":I
    :cond_3
    div-int/lit8 v4, v7, 0x2

    goto :goto_1
.end method

.method private getOnHoldConferenceGroupCount()I
    .locals 2

    .prologue
    .line 600
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 601
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 602
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 606
    :goto_0
    return v1

    .line 604
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 606
    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method private getPhotoMargin(I)I
    .locals 4
    .param p1, "containerHeight"    # I

    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a035a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 1443
    .local v0, "photoSize":I
    sub-int v2, p1, v0

    div-int/lit8 v1, v2, 0x2

    .line 1444
    .local v1, "topMargin":I
    return v1
.end method

.method private getPhotoTag(Landroid/view/View;I)Ljava/lang/Integer;
    .locals 2
    .param p1, "holder"    # Landroid/view/View;
    .param p2, "photoType"    # I

    .prologue
    .line 562
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 565
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPrimaryContainerWidth()I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1448
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-nez v6, :cond_0

    .line 1462
    :goto_0
    return v0

    .line 1450
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0357

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    .line 1451
    .local v3, "nameLeftWidth":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0358

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    .line 1452
    .local v4, "oneButtonWidth":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0352

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 1453
    .local v2, "marginEnd":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v5, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1454
    .local v5, "panelWidth":I
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    const/4 v1, 0x1

    .line 1456
    .local v1, "isShow":Z
    :goto_1
    const/4 v0, 0x0

    .line 1457
    .local v0, "infoWidth":I
    if-eqz v1, :cond_2

    .line 1458
    sub-int v6, v5, v3

    sub-int v0, v6, v4

    goto :goto_0

    .end local v0    # "infoWidth":I
    .end local v1    # "isShow":Z
    :cond_1
    move v1, v0

    .line 1454
    goto :goto_1

    .line 1460
    .restart local v0    # "infoWidth":I
    .restart local v1    # "isShow":Z
    :cond_2
    sub-int v6, v5, v3

    sub-int v0, v6, v2

    goto :goto_0
.end method

.method private getSecUiAdapter()Lcom/android/incallui/UiAdapter;
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    return-object v0
.end method

.method private getSecondaryContainerWidth()I
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1466
    iget-object v10, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-nez v10, :cond_1

    :cond_0
    move v0, v8

    .line 1484
    :goto_0
    return v0

    .line 1468
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0357

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v4, v10

    .line 1469
    .local v4, "nameLeftWidth":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0352

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v3, v10

    .line 1470
    .local v3, "marginEnd":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a035b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    .line 1471
    .local v7, "twoButtonWidth":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0358

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v5, v10

    .line 1472
    .local v5, "oneButtonWidth":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v6, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1473
    .local v6, "panelWidth":I
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

    .line 1474
    .local v2, "isShow":Z
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

    .line 1476
    .local v1, "isBothShow":Z
    :goto_2
    const/4 v0, 0x0

    .line 1477
    .local v0, "infoWidth":I
    if-eqz v1, :cond_5

    .line 1478
    sub-int v8, v6, v4

    sub-int v0, v8, v7

    goto :goto_0

    .end local v0    # "infoWidth":I
    .end local v1    # "isBothShow":Z
    .end local v2    # "isShow":Z
    :cond_3
    move v2, v8

    .line 1473
    goto :goto_1

    .restart local v2    # "isShow":Z
    :cond_4
    move v1, v8

    .line 1474
    goto :goto_2

    .line 1479
    .restart local v0    # "infoWidth":I
    .restart local v1    # "isBothShow":Z
    :cond_5
    if-eqz v2, :cond_6

    .line 1480
    sub-int v8, v6, v4

    sub-int v0, v8, v5

    goto :goto_0

    .line 1482
    :cond_6
    sub-int v8, v6, v4

    sub-int v0, v8, v3

    goto :goto_0
.end method

.method private hideCallButtonsForManager(Z)V
    .locals 4
    .param p1, "direct"    # Z

    .prologue
    .line 1319
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1320
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 1321
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1322
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/incallui/CallButtonUi;->animateForManager(ZZ)V

    .line 1325
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_0
    return-void
.end method

.method private isAnimatorSetRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2296
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2308
    :cond_0
    :goto_0
    return v0

    .line 2299
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2302
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2305
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2308
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMaxParticipants()Z
    .locals 6

    .prologue
    const/4 v4, 0x5

    .line 2688
    const/4 v0, 0x0

    .line 2689
    .local v0, "isMax":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 2690
    .local v1, "primaryCall":Lcom/android/incallui/Call;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 2692
    .local v2, "secondaryCall":Lcom/android/incallui/Call;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupCount(Lcom/android/incallui/Call;)I

    move-result v3

    if-lt v3, v4, :cond_0

    .line 2693
    const/4 v0, 0x1

    .line 2695
    :cond_0
    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupCount(Lcom/android/incallui/Call;)I

    move-result v3

    if-lt v3, v4, :cond_1

    .line 2696
    const/4 v0, 0x1

    .line 2698
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

    .line 2700
    return v0
.end method

.method private isOtherCallTTYvalue()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2502
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 2503
    .local v1, "primaryCall":Lcom/android/incallui/Call;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 2505
    .local v2, "secondaryCall":Lcom/android/incallui/Call;
    const/4 v0, 0x0

    .line 2507
    .local v0, "otherCallTTYvalue":Z
    if-eqz v1, :cond_0

    .line 2508
    invoke-static {v1}, Lcom/android/incallui/util/SecCallExtraUtils;->getTtyType(Lcom/android/incallui/Call;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 2509
    const-string v3, "MultiPartyCallCardFragment"

    const-string v4, "Primary call\'s TTY value is ON"

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2510
    const/4 v0, 0x1

    .line 2513
    :cond_0
    if-eqz v2, :cond_1

    .line 2514
    invoke-static {v2}, Lcom/android/incallui/util/SecCallExtraUtils;->getTtyType(Lcom/android/incallui/Call;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 2515
    const-string v3, "MultiPartyCallCardFragment"

    const-string v4, "Secondary call\'s TTY value is ON"

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2516
    const/4 v0, 0x1

    .line 2519
    :cond_1
    return v0
.end method

.method private queryForSwappedCall()V
    .locals 2

    .prologue
    .line 1719
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1720
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 1721
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1722
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/CallButtonUi;->queryForSwappedCall()V

    .line 1725
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_0
    return-void
.end method

.method private resetAllHandler()V
    .locals 5

    .prologue
    const/16 v4, 0x67

    const/16 v3, 0x66

    .line 2271
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "resetAllHandler..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2272
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2273
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2274
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2275
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2278
    :cond_1
    return-void
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1281
    if-nez p1, :cond_0

    .line 1282
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "view is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    :goto_0
    return-void

    .line 1285
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setPhotoTag(Landroid/view/View;ILjava/lang/Integer;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/View;
    .param p2, "photoType"    # I
    .param p3, "hashcode"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    .line 569
    if-nez p1, :cond_0

    .line 588
    :goto_0
    return-void

    .line 570
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 571
    .local v0, "tagValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 572
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 574
    :pswitch_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 578
    :pswitch_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 582
    :pswitch_2
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 572
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showConferenceCallBannerForVZW()V
    .locals 13

    .prologue
    const v12, 0x7f090097

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2560
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-static {v6, v11, v9}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v4

    .line 2561
    .local v4, "call":Lcom/android/incallui/Call;
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

    .line 2563
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMergeComplete(Lcom/android/incallui/Call;)V

    .line 2566
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-static {v6, v11, v9}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2567
    .local v0, "activeCall":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/android/incallui/CallList;->getBgCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v2

    .line 2568
    .local v2, "backgroundCall":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 2569
    .local v1, "activeCallMtConf":Z
    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v3

    .line 2570
    .local v3, "backgroundCallMtConf":Z
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

    .line 2571
    iget-boolean v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-eqz v6, :cond_0

    .line 2572
    const-string v6, "MultiPartyCallCardFragment"

    const-string v7, "showConferenceCallBannerForVZW mIsSwapProcessing"

    invoke-static {v6, v7, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2609
    :goto_0
    return-void

    .line 2576
    :cond_0
    if-eqz v0, :cond_1

    .line 2577
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

    .line 2578
    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 2579
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%s"

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2580
    .local v5, "strBanner":Ljava/lang/String;
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

    .line 2581
    invoke-virtual {p0, v10, v10, v5}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMtConferenceBanner(ZZLjava/lang/String;)V

    .line 2582
    iput-boolean v10, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowActiveConferenceBanner:Z

    .line 2583
    invoke-direct {p0, v0, v10}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updatePrimaryForMtConference(Lcom/android/incallui/Call;Z)V

    .line 2591
    .end local v5    # "strBanner":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v2, :cond_5

    .line 2592
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

    .line 2593
    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 2594
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%s"

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2595
    .restart local v5    # "strBanner":Ljava/lang/String;
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

    .line 2596
    invoke-virtual {p0, v10, v9, v5}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMtConferenceBanner(ZZLjava/lang/String;)V

    .line 2597
    iput-boolean v10, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowBackgroundConferenceBanner:Z

    .line 2598
    invoke-direct {p0, v2, v10}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateSecondaryForMtConference(Lcom/android/incallui/Call;Z)V

    goto/16 :goto_0

    .line 2584
    .end local v5    # "strBanner":Ljava/lang/String;
    :cond_2
    iget-boolean v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowActiveConferenceBanner:Z

    if-eqz v6, :cond_1

    .line 2585
    const-string v6, "NONE"

    invoke-virtual {p0, v9, v10, v6}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMtConferenceBanner(ZZLjava/lang/String;)V

    .line 2586
    iput-boolean v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowActiveConferenceBanner:Z

    .line 2587
    invoke-direct {p0, v0, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updatePrimaryForMtConference(Lcom/android/incallui/Call;Z)V

    goto :goto_1

    .line 2599
    :cond_3
    iget-boolean v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowBackgroundConferenceBanner:Z

    if-eqz v6, :cond_4

    .line 2600
    const-string v6, "NONE"

    invoke-virtual {p0, v9, v9, v6}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMtConferenceBanner(ZZLjava/lang/String;)V

    .line 2601
    iput-boolean v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowBackgroundConferenceBanner:Z

    .line 2602
    invoke-direct {p0, v2, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateSecondaryForMtConference(Lcom/android/incallui/Call;Z)V

    goto/16 :goto_0

    .line 2604
    :cond_4
    const-string v6, "NONE"

    invoke-virtual {p0, v9, v9, v6}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMtConferenceBanner(ZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 2607
    :cond_5
    const-string v6, "NONE"

    invoke-virtual {p0, v9, v9, v6}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMtConferenceBanner(ZZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private showMergeComplete(Lcom/android/incallui/Call;)V
    .locals 7
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2528
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2529
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

    .line 2530
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

    .line 2537
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

    .line 2539
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerFgCall:Lcom/android/incallui/Call;

    .line 2540
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 2541
    :cond_1
    const-string v1, "enable_conference_info_banner"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2543
    iget-boolean v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBanner:Z

    if-eqz v1, :cond_2

    .line 2544
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v5}, Lcom/android/incallui/UiAdapter;->showConferenceStateMessage(ZLjava/lang/String;Z)V

    .line 2545
    iput-boolean v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBanner:Z

    .line 2546
    const-string v1, "MultiPartyCallCardFragment"

    const-string v2, "Show Merged banner"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2557
    :cond_2
    :goto_0
    return-void

    .line 2549
    :cond_3
    iget-boolean v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceToast:Z

    if-eqz v1, :cond_2

    .line 2550
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09024b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2551
    .local v0, "str":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2552
    iput-boolean v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceToast:Z

    goto :goto_0
.end method

.method private showMessageVoiceFromvideo(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v3, 0x0

    .line 1249
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getMessageVoiceFromVideo()I

    move-result v0

    .line 1250
    .local v0, "message":I
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 1251
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/UiAdapter;->showVoiceCallModifyStateMessage(ZI)V

    .line 1252
    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    .line 1256
    :cond_0
    :goto_0
    return-void

    .line 1253
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 1254
    :cond_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/android/incallui/UiAdapter;->showVoiceCallModifyStateMessage(ZI)V

    goto :goto_0
.end method

.method private showOnHoldText(Z)V
    .locals 6
    .param p1, "isHold"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 980
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 981
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v0

    .line 982
    .local v0, "isMultipartyCall":Z
    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    .line 983
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 984
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 985
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 986
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f05001f

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 987
    .local v1, "startAnimation":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 989
    .end local v1    # "startAnimation":Landroid/view/animation/Animation;
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 990
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 991
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCallStateLabelForCallState(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "callStateLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 1097
    iget v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOldCallState:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    .line 1098
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    :goto_0
    return-void

    .line 1101
    :cond_0
    iput-object p2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    .line 1102
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->manageCallEndTimeBlink(I)V

    .line 1103
    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    .line 1104
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->removeMessageForBlinkTime()V

    .line 1110
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1111
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1112
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "not update stateLabel for blink call time"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1114
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1115
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1116
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1119
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1120
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "not update stateLabel for blink call time"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1122
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCallerInfo()V
    .locals 3

    .prologue
    .line 2157
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

    .line 2158
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 2159
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 2160
    return-void

    .line 2157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateContainerLayout()V
    .locals 12

    .prologue
    .line 1488
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getContainerHeight()I

    move-result v0

    .line 1490
    .local v0, "containerHeight":I
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 1491
    .local v6, "primaryLp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 1492
    .local v9, "secondaryLp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1493
    .local v4, "mergeLp":Landroid/widget/RelativeLayout$LayoutParams;
    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1494
    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1495
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1497
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryContainer:Landroid/view/View;

    invoke-virtual {v11, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1498
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryContainer:Landroid/view/View;

    invoke-virtual {v11, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1499
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    invoke-virtual {v11, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1501
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPhotoMargin(I)I

    move-result v5

    .line 1502
    .local v5, "photoTopMargin":I
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1503
    .local v7, "primaryPhotoLp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1504
    .local v10, "secondaryPhotoLp":Landroid/widget/RelativeLayout$LayoutParams;
    iput v5, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1505
    iput v5, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1506
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v11, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1507
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1509
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPrimaryContainerWidth()I

    move-result v1

    .line 1510
    .local v1, "infoWidth":I
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1511
    .local v2, "mPrimaryLp":Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1512
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v11, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1514
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getSecondaryContainerWidth()I

    move-result v8

    .line 1515
    .local v8, "secondaryContainerWidth":I
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1516
    .local v3, "mSecondaryLp":Landroid/widget/RelativeLayout$LayoutParams;
    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1517
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v11, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1518
    return-void
.end method

.method private updateEndImage()V
    .locals 10

    .prologue
    const v9, 0x7f0201e6

    const/4 v8, 0x0

    .line 1017
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1018
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 1020
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    .line 1021
    .local v3, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v3, :cond_0

    .line 1023
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a035a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    .line 1024
    .local v1, "diameter":I
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1026
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v6}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v5

    .line 1027
    .local v5, "primaryCall":Lcom/android/incallui/Call;
    const/4 v4, 0x0

    .line 1028
    .local v4, "image":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1029
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020398

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1030
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v1}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1031
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1032
    :cond_3
    iget-boolean v6, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-nez v6, :cond_0

    .line 1033
    const/4 v2, 0x0

    .line 1034
    .local v2, "displayName":Ljava/lang/String;
    iget-boolean v6, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v6, :cond_4

    .line 1035
    iget-object v6, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1036
    iget-object v6, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 1039
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1040
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 1041
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0151

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1042
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1045
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02039a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1046
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v1}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1047
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private updateManageButton(Lcom/android/incallui/Call;)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v3, 0x1

    .line 1521
    const/16 v4, 0x80

    invoke-virtual {p1, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    .line 1522
    .local v0, "canManageConference":Z
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    .line 1523
    .local v1, "isConference":Z
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

    .line 1525
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v4, :cond_6

    .line 1526
    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    move v2, v3

    .line 1528
    .local v2, "showManageButton":Z
    :goto_0
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1529
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/TelecomAdapter;->getParticipantsCount()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 1530
    const/4 v2, 0x1

    .line 1532
    :cond_0
    invoke-static {p1}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1533
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getPreviousParentId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1534
    :cond_1
    const/4 v2, 0x1

    .line 1536
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1538
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->hideConferenceCallManager()V

    .line 1540
    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_5

    .line 1541
    :cond_4
    const/4 v2, 0x0

    .line 1543
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateManageAndHideConferenceCallButton(Z)V

    .line 1545
    .end local v2    # "showManageButton":Z
    :cond_6
    return-void

    .line 1526
    :cond_7
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateMergeCallButton(Lcom/android/incallui/Call;)V
    .locals 7
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v6, 0x1

    .line 1368
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallList;->getBgCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v2

    .line 1370
    .local v2, "secondaryCall":Lcom/android/incallui/Call;
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    .line 1371
    .local v1, "canMerge":Z
    const-string v3, "support_merge_call"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1372
    invoke-static {}, Lcom/android/incallui/InCallUIConfig;->isSEATELSIM()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1373
    :cond_0
    const-string v3, "MultiPartyCallCardFragment"

    const-string v4, "updateMultipartyCallButtons Not support merge"

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1374
    const/4 v1, 0x0

    .line 1377
    :cond_1
    const-string v3, "ims_only_conf_initiator_can_merge"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1378
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 1379
    .local v0, "callList":Lcom/android/incallui/CallList;
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasImsConferenceParticipant()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1380
    const-string v3, "MultiPartyCallCardFragment"

    const-string v4, "updateMultipartyCallButtons Not support merge, has IMS conference participant"

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1381
    const/4 v1, 0x0

    .line 1385
    .end local v0    # "callList":Lcom/android/incallui/CallList;
    :cond_2
    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1386
    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVolteConference(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1387
    const-string v3, "MultiPartyCallCardFragment"

    const-string v4, "Initiator is not allowed to merge another conference call to the N-way call "

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1388
    const/4 v1, 0x0

    .line 1390
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtySetting()I

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isOtherCallTTYvalue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1391
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

    .line 1392
    const/4 v1, 0x0

    .line 1397
    :cond_5
    const-string v3, "show_conference_maximum_participants_toast"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v1, :cond_6

    if-eqz v2, :cond_6

    .line 1398
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isMaxParticipants()Z

    move-result v1

    .line 1401
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

    .line 1402
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v3, :cond_7

    .line 1403
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v1, :cond_8

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1404
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1406
    :cond_7
    return-void

    .line 1403
    :cond_8
    const/16 v3, 0x8

    goto :goto_0
.end method

.method private updatePhotoContainer(ZZ)V
    .locals 12
    .param p1, "isConference"    # Z
    .param p2, "canManageConference"    # Z

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1333
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1351
    :cond_0
    :goto_0
    return-void

    .line 1335
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1336
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1337
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1338
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1339
    .local v2, "primaryPhotoAlpha":Landroid/animation/ObjectAnimator;
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

    .line 1340
    .local v0, "distance":F
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v8, [F

    neg-float v6, v0

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1341
    .local v1, "primaryInfoMover":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1342
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1343
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1345
    .end local v0    # "distance":F
    .end local v1    # "primaryInfoMover":Landroid/animation/ObjectAnimator;
    .end local v2    # "primaryPhotoAlpha":Landroid/animation/ObjectAnimator;
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1346
    .restart local v2    # "primaryPhotoAlpha":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1347
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1348
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private updatePrimaryForMtConference(Lcom/android/incallui/Call;Z)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "mtConference"    # Z

    .prologue
    .line 2612
    if-nez p1, :cond_1

    .line 2620
    :cond_0
    :goto_0
    return-void

    .line 2613
    :cond_1
    if-eqz p2, :cond_2

    .line 2614
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 2616
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

    .line 2617
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    .line 2618
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method private updateSecondaryForMtConference(Lcom/android/incallui/Call;Z)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "mtConference"    # Z

    .prologue
    .line 2623
    if-nez p1, :cond_1

    .line 2631
    :cond_0
    :goto_0
    return-void

    .line 2624
    :cond_1
    if-eqz p2, :cond_2

    .line 2625
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 2627
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

    .line 2628
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    .line 2629
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method private updateSwapCallButton(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/16 v2, 0x8

    .line 1354
    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    .line 1355
    .local v0, "canSwap":Z
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->needToShowSwapButton()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1356
    const/4 v0, 0x1

    .line 1358
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 1359
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1360
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1361
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1362
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1365
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 1359
    goto :goto_0
.end method


# virtual methods
.method public animateForHideManager(Z)V
    .locals 20
    .param p1, "showPhoto"    # Z

    .prologue
    .line 2069
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isAdded()Z

    move-result v15

    if-nez v15, :cond_0

    .line 2070
    const-string v15, "MultiPartyCallCardFragment"

    const-string v16, "animateForHideManager : fragment is detached from activity, return"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2154
    :goto_0
    return-void

    .line 2074
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2075
    const-string v15, "MultiPartyCallCardFragment"

    const-string v16, "animateForHideManager...isRunning"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2078
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2079
    const-string v15, "MultiPartyCallCardFragment"

    const-string v16, "animateForHideManager...cancel manage animation"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2080
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->end()V

    .line 2082
    :cond_2
    const-string v15, "MultiPartyCallCardFragment"

    const-string v16, "animateForHideManager..."

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2084
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v5

    .line 2085
    .local v5, "isMultipartyCall":Z
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2086
    if-eqz p1, :cond_8

    .line 2087
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v15, :cond_3

    .line 2088
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

    .line 2089
    .local v9, "primaryPhotoAlpha":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2091
    .end local v9    # "primaryPhotoAlpha":Landroid/animation/ObjectAnimator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v15, :cond_7

    .line 2092
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    .line 2093
    .local v2, "call":Lcom/android/incallui/Call;
    if-eqz v2, :cond_7

    .line 2094
    const/16 v15, 0x80

    invoke-virtual {v2, v15}, Lcom/android/incallui/Call;->can(I)Z

    move-result v14

    .line 2095
    .local v14, "showManageButton":Z
    const-string v15, "vzw_volte_ui"

    invoke-static {v15}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 2096
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

    .line 2097
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

    .line 2098
    const/4 v14, 0x0

    .line 2100
    :cond_4
    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 2101
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_5

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getPreviousParentId()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 2102
    :cond_5
    const/4 v14, 0x1

    .line 2105
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateManageAndHideConferenceCallButton(Z)V

    .line 2109
    .end local v2    # "call":Lcom/android/incallui/Call;
    .end local v14    # "showManageButton":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    if-eqz v15, :cond_8

    .line 2110
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setAlpha(F)V

    .line 2112
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

    .line 2113
    .local v6, "manageButtonAlpha":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2116
    .end local v6    # "manageButtonAlpha":Landroid/animation/ObjectAnimator;
    :cond_8
    const-string v15, "vzw_volte_ui"

    invoke-static {v15}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 2117
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    if-eqz v15, :cond_9

    .line 2118
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

    .line 2119
    .local v7, "primaryConfBanner":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2121
    .end local v7    # "primaryConfBanner":Landroid/animation/ObjectAnimator;
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    if-eqz v15, :cond_a

    .line 2122
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

    .line 2123
    .local v10, "secondaryConfBanner":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2126
    .end local v10    # "secondaryConfBanner":Landroid/animation/ObjectAnimator;
    :cond_a
    const-string v15, "enable_conference_info_banner"

    invoke-static {v15}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 2127
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    if-eqz v15, :cond_b

    .line 2128
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

    .line 2129
    .local v3, "confBanner":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2132
    .end local v3    # "confBanner":Landroid/animation/ObjectAnimator;
    :cond_b
    if-eqz v5, :cond_d

    .line 2133
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showSecondaryContainer(Z)V

    .line 2134
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

    .line 2135
    .local v11, "secondaryContainer":Landroid/animation/ObjectAnimator;
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

    .line 2136
    .local v12, "secondaryPanel":Landroid/animation/ObjectAnimator;
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

    .line 2137
    .local v13, "secondaryPhoto":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v15

    invoke-virtual {v15, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2139
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 2140
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v15}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const/16 v16, 0xff

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2141
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

    .line 2144
    .end local v11    # "secondaryContainer":Landroid/animation/ObjectAnimator;
    .end local v12    # "secondaryPanel":Landroid/animation/ObjectAnimator;
    .end local v13    # "secondaryPhoto":Landroid/animation/ObjectAnimator;
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v15, :cond_e

    .line 2145
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

    .line 2146
    .local v8, "primaryInfoMover":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2148
    .end local v8    # "primaryInfoMover":Landroid/animation/ObjectAnimator;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateDivideLine()V

    .line 2150
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d003e

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 2151
    .local v4, "duration":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v16, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual/range {v15 .. v16}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2152
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v0, v4

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2153
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method protected animateForManager()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2000
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2001
    const-string v8, "MultiPartyCallCardFragment"

    const-string v9, "animateForManager...isRunning"

    invoke-static {v8, v9, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2065
    :cond_0
    :goto_0
    return-void

    .line 2004
    :cond_1
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2005
    const-string v8, "MultiPartyCallCardFragment"

    const-string v9, "animateForManager...cancel hide manage animation"

    invoke-static {v8, v9, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2006
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->end()V

    .line 2008
    :cond_2
    const-string v8, "MultiPartyCallCardFragment"

    const-string v9, "animateForManager..."

    invoke-static {v8, v9, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2009
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2011
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    if-eqz v8, :cond_3

    .line 2012
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2013
    .local v2, "manageButtonAlpha":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2015
    .end local v2    # "manageButtonAlpha":Landroid/animation/ObjectAnimator;
    :cond_3
    const-string v8, "vzw_volte_ui"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2016
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    .line 2017
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2018
    .local v3, "primaryConfBanner":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2020
    .end local v3    # "primaryConfBanner":Landroid/animation/ObjectAnimator;
    :cond_4
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    if-eqz v8, :cond_5

    .line 2021
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2022
    .local v4, "secondaryConfBanner":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2025
    .end local v4    # "secondaryConfBanner":Landroid/animation/ObjectAnimator;
    :cond_5
    const-string v8, "enable_conference_info_banner"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2026
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    if-eqz v8, :cond_6

    .line 2027
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2028
    .local v0, "confBanner":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2031
    .end local v0    # "confBanner":Landroid/animation/ObjectAnimator;
    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2032
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 2033
    .local v5, "secondaryContainer":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 2034
    .local v6, "secondaryPanel":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 2035
    .local v7, "secondaryPhoto":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2037
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2038
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2039
    :cond_7
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2042
    .end local v5    # "secondaryContainer":Landroid/animation/ObjectAnimator;
    .end local v6    # "secondaryPanel":Landroid/animation/ObjectAnimator;
    .end local v7    # "secondaryPhoto":Landroid/animation/ObjectAnimator;
    :cond_8
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mDivideLine:Landroid/view/View;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mDivideLine:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2044
    :cond_9
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v9}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2045
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d003d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2046
    .local v1, "duration":I
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v10, v1

    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v8

    new-instance v9, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$4;

    invoke-direct {v9, p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$4;-><init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2059
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 2060
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showConferenceCallManager()V

    .line 2062
    const-string v8, "support_mobile_keyboard"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2063
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/android/incallui/InCallPresenter;->addMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    goto/16 :goto_0
.end method

.method protected animateForMerge()V
    .locals 14

    .prologue
    .line 1901
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1902
    const-string v8, "MultiPartyCallCardFragment"

    const-string v9, "animateForMerge...isRunning"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1992
    :goto_0
    return-void

    .line 1905
    :cond_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceToast:Z

    .line 1906
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerFgCall:Lcom/android/incallui/Call;

    .line 1907
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/incallui/CallList;->getBgCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerBgCall:Lcom/android/incallui/Call;

    .line 1908
    const-string v8, "enable_conference_info_banner"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1909
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v8}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v3

    .line 1910
    .local v3, "primaryCall":Lcom/android/incallui/Call;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v8}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v5

    .line 1914
    .local v5, "secondaryCall":Lcom/android/incallui/Call;
    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupCount(Lcom/android/incallui/Call;)I

    move-result v8

    const/4 v9, 0x5

    if-ge v8, v9, :cond_2

    :cond_1
    if-eqz v5, :cond_d

    .line 1915
    invoke-direct {p0, v5}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupCount(Lcom/android/incallui/Call;)I

    move-result v8

    const/4 v9, 0x5

    if-lt v8, v9, :cond_d

    .line 1916
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBanner:Z

    .line 1917
    const-string v8, "MultiPartyCallCardFragment"

    const-string v9, "animateForMerge, mShowConferenceBanner is false"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1926
    .end local v3    # "primaryCall":Lcom/android/incallui/Call;
    .end local v5    # "secondaryCall":Lcom/android/incallui/Call;
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1927
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_4

    .line 1928
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    .line 1931
    :cond_4
    const-string v8, "MultiPartyCallCardFragment"

    const-string v9, "animateForMerge..."

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1932
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1934
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v8, :cond_5

    .line 1935
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1936
    .local v4, "primaryInfoAlpha":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1937
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1940
    .end local v4    # "primaryInfoAlpha":Landroid/animation/ObjectAnimator;
    :cond_5
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v8, :cond_6

    .line 1941
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1942
    .local v6, "secondaryInfoAlpha":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1945
    .end local v6    # "secondaryInfoAlpha":Landroid/animation/ObjectAnimator;
    :cond_6
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v8, :cond_7

    .line 1946
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getContainerHeight()I

    move-result v8

    int-to-float v1, v8

    .line 1947
    .local v1, "distance":F
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    neg-float v12, v1

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1948
    .local v7, "secondaryPhotoMover":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1951
    .end local v1    # "distance":F
    .end local v7    # "secondaryPhotoMover":Landroid/animation/ObjectAnimator;
    :cond_7
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v8, :cond_8

    .line 1952
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

    .line 1955
    :cond_8
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v8, :cond_9

    .line 1956
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

    .line 1959
    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mergeCallerInfoForAnim()V

    .line 1961
    const-string v8, "vzw_volte_ui"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1962
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1963
    :cond_a
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1966
    :cond_b
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v9}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1967
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0041

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1968
    .local v2, "duration":I
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v10, v2

    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v8

    new-instance v9, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$3;

    invoke-direct {v9, p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$3;-><init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1986
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    .line 1987
    const-string v8, "voice_call_recording"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1988
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    .line 1990
    :cond_c
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 1991
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryCallMoreMenu()V

    goto/16 :goto_0

    .line 1919
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v2    # "duration":I
    .restart local v3    # "primaryCall":Lcom/android/incallui/Call;
    .restart local v5    # "secondaryCall":Lcom/android/incallui/Call;
    :cond_d
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBanner:Z

    .line 1920
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

    .line 1921
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

    .line 1922
    const-string v8, "MultiPartyCallCardFragment"

    const-string v9, "animateForMerge, mShowConferenceBanner is true"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method

.method protected animateForSwap()V
    .locals 18

    .prologue
    .line 1797
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1798
    const-string v13, "MultiPartyCallCardFragment"

    const-string v14, "animateForSwap...isRunning"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1887
    :goto_0
    return-void

    .line 1802
    :cond_0
    const-string v13, "feature_multisim_display_sim_icon"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1803
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

    .line 1804
    .local v2, "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    invoke-interface {v2}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->animateForSwap()V

    goto :goto_1

    .line 1808
    .end local v2    # "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    :cond_1
    const-string v13, "MultiPartyCallCardFragment"

    const-string v14, "animateForSwap..."

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1809
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v12

    .line 1810
    .local v12, "targetCall":Lcom/android/incallui/Call;
    if-eqz v12, :cond_2

    .line 1811
    invoke-virtual {v12}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTargetedCallIdforSwap:Ljava/lang/String;

    .line 1814
    :cond_2
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1815
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d005b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 1816
    .local v5, "duration":I
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getContainerHeight()I

    move-result v13

    int-to-float v4, v13

    .line 1817
    .local v4, "distance":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v13, :cond_3

    .line 1818
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v4, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 1819
    .local v9, "primaryPhotoMover":Landroid/animation/ObjectAnimator;
    int-to-long v14, v5

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1820
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1822
    .end local v9    # "primaryPhotoMover":Landroid/animation/ObjectAnimator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v13, :cond_4

    .line 1823
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

    .line 1824
    .local v11, "secondaryPhotoMover":Landroid/animation/ObjectAnimator;
    int-to-long v14, v5

    invoke-virtual {v11, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1825
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1828
    .end local v11    # "secondaryPhotoMover":Landroid/animation/ObjectAnimator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    .line 1829
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    .line 1830
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->swapCallerInfoForAnim()V

    .line 1831
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d005d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1832
    .local v7, "infoDuration":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d005c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1833
    .local v6, "infoDelay":I
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

    .line 1834
    .local v8, "primaryInfoAlpha":Landroid/animation/ObjectAnimator;
    int-to-long v14, v7

    invoke-virtual {v8, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v13

    int-to-long v14, v6

    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1835
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

    .line 1836
    .local v10, "secondaryInfoAlpha":Landroid/animation/ObjectAnimator;
    int-to-long v14, v7

    invoke-virtual {v10, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v13

    int-to-long v14, v6

    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1837
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1838
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1839
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v14, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v14}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1840
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v14, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;-><init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1877
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    .line 1878
    const-string v13, "vzw_volte_ui"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1879
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    .line 1880
    .local v3, "call":Lcom/android/incallui/Call;
    if-eqz v3, :cond_5

    .line 1881
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/android/incallui/UiAdapter;->updateCallButtons(Lcom/android/incallui/Call;)V

    .line 1884
    .end local v3    # "call":Lcom/android/incallui/Call;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    .line 1885
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryCallMoreMenu()V

    .line 1886
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->removeMultipartyCallButtons()V

    goto/16 :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x1

    .line 1560
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1562
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1568
    :goto_0
    return v2

    .line 1565
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1566
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1567
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected getConferenceCallManagerShowingState()Z
    .locals 1

    .prologue
    .line 2494
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v0

    return v0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1730
    new-instance v0, Lcom/android/incallui/InCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    .line 1732
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getMenuRes()I
    .locals 1

    .prologue
    .line 363
    const-string v0, "support_folder_single_lcd"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const v0, 0x7f120002

    .line 365
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f120001

    goto :goto_0
.end method

.method protected hideConferenceCallManager()V
    .locals 2

    .prologue
    .line 1328
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1329
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->showConferenceCallManager(Z)V

    .line 1330
    :cond_0
    return-void
.end method

.method protected inflateRecordInfo()V
    .locals 2

    .prologue
    .line 2313
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 2314
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    .line 2315
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 2316
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 2317
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100253

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mRecordIcon:Landroid/widget/ImageView;

    .line 2318
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100254

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mRecordText:Landroid/widget/TextView;

    .line 2319
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100255

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    .line 2322
    :cond_0
    return-void
.end method

.method public isManageConferenceVisible()Z
    .locals 1

    .prologue
    .line 2490
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

    .prologue
    .line 1996
    iget-boolean v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    return v0
.end method

.method public isSwapProcessing()Z
    .locals 1

    .prologue
    .line 2498
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

    .prologue
    const/4 v4, 0x0

    .line 1890
    iget-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v2, :cond_1

    .line 1898
    :cond_0
    :goto_0
    return-void

    .line 1892
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 1893
    .local v1, "primaryCall":Lcom/android/incallui/Call;
    invoke-direct {p0, v1, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConfCallDisplayName(Lcom/android/incallui/Call;Z)Ljava/lang/String;

    move-result-object v0

    .line 1894
    .local v0, "confCallName":Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 1895
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 1896
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09024c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 1897
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public needToShowMenu()Z
    .locals 2

    .prologue
    .line 1749
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->needToShowMenu()Z

    move-result v0

    .line 1750
    .local v0, "bShowMenu":Z
    iget-boolean v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v1, :cond_1

    .line 1751
    :cond_0
    const/4 v0, 0x0

    .line 1752
    :cond_1
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v8, 0x8

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1648
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 1649
    .local v3, "id":I
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

    .line 1651
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isAnimatorSetRunning()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->hasAnimationMsg()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1652
    :cond_0
    const-string v4, "MultiPartyCallCardFragment"

    const-string v5, "onClick : isAnimatorSetRunning or hasAnimationMsg, skip operation"

    invoke-static {v4, v5, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1716
    :cond_1
    :goto_0
    return-void

    .line 1655
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1656
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1657
    .local v2, "context":Landroid/content/Context;
    sparse-switch v3, :sswitch_data_0

    .line 1713
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 1659
    :sswitch_0
    const-string v4, "att_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1660
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoOneway()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1661
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMergeNotAllowDialog()V

    goto :goto_0

    .line 1663
    :cond_3
    const-string v4, "show_conference_maximum_participants_toast"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isMaxParticipants()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1664
    const-string v4, "MultiPartyCallCardFragment"

    const-string v6, "rechaed maximum participants toast"

    invoke-static {v4, v6, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1665
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

    .line 1668
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForMerge()V

    .line 1669
    const-string v4, "MPVC"

    const-string v6, "Merge"

    invoke-static {v2, v4, v6}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0903b2

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1673
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForSwap()V

    .line 1674
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->queryForSwappedCall()V

    .line 1675
    const-string v4, "MPVC"

    const-string v6, "Swap"

    invoke-static {v2, v4, v6}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090401

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1679
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1680
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->hideConferenceCallManager()V

    .line 1681
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1682
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1683
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->updateCallCardFragment()V

    .line 1685
    :cond_5
    const-string v4, "MPVC"

    const-string v6, "Hide"

    invoke-static {v2, v4, v6}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0903ab

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getChildCount(Lcom/android/incallui/Call;)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1688
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForManager()V

    .line 1689
    const-string v4, "MPVC"

    const-string v6, "Manage"

    invoke-static {v2, v4, v6}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0903ac

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getChildCount(Lcom/android/incallui/Call;)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1694
    :sswitch_3
    if-eqz v0, :cond_7

    invoke-virtual {v0, v8}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1695
    .local v1, "canSwap":Z
    :goto_1
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 1696
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForSwap()V

    goto/16 :goto_0

    .end local v1    # "canSwap":Z
    :cond_7
    move v1, v5

    .line 1694
    goto :goto_1

    .line 1700
    :sswitch_4
    const-string v4, "MultiPartyCallCardFragment"

    const-string v5, "onClick add call menu"

    invoke-static {v4, v5, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1701
    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_addCall(Lcom/android/incallui/Call;)V

    .line 1702
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1703
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->addCallClicked()V

    goto/16 :goto_0

    .line 1707
    :sswitch_5
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 1708
    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_resumeCall(Lcom/android/incallui/Call;)V

    .line 1709
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1657
    :sswitch_data_0
    .sparse-switch
        0x7f100099 -> :sswitch_1
        0x7f10009f -> :sswitch_0
        0x7f1002de -> :sswitch_2
        0x7f1002e8 -> :sswitch_3
        0x7f1002f7 -> :sswitch_5
        0x7f100419 -> :sswitch_4
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2330
    const-string v1, "onConfigurationChanged"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2331
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2333
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDisplaySize()V

    .line 2334
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateEri()V

    .line 2336
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2337
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$5;-><init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2347
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 209
    new-instance v0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    .line 210
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v0, Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    .line 212
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    .line 214
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTwoPhoneView:Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    .line 216
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTwoPhoneView:Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 222
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/CallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 223
    const v0, 0x7f0400ee

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1625
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onDestroy()V

    .line 1626
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "onDestroy..."

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1628
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->resetAllOfAnimation(Z)V

    .line 1629
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1630
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 1634
    const-string v0, "onDestroyView..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1636
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->onDestroyView()V

    .line 1637
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->onDestroyView()V

    .line 1639
    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1640
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    .line 1643
    :cond_0
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onDestroyView()V

    .line 1644
    return-void
.end method

.method public onMobileKeyboardChanged()V
    .locals 2

    .prologue
    .line 2351
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2352
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$6;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$6;-><init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2362
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1610
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1611
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onPause()V

    .line 1612
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "onPause..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1614
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0, p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->onPause(Lcom/android/incallui/fragment/CallCardFragment;)V

    .line 1615
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 1584
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1585
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.samsung.android.incalllui.rcsshareui.action.ACTION_MENU_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1586
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1587
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

    .line 1588
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    .line 1590
    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 1591
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    .line 1592
    .local v2, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 1593
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallActivity;->updateStatusBarColor(I)V

    .line 1594
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    .line 1595
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    .line 1598
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

    .line 1599
    .local v1, "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    invoke-interface {v1}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->onResume()V

    goto :goto_0

    .line 1601
    .end local v1    # "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateCallCardIndicatorArea()V

    .line 1602
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDisplaySize()V

    .line 1604
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onResume()V

    .line 1605
    const-string v4, "MultiPartyCallCardFragment"

    const-string v5, "onResume..."

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1606
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 1619
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onStop()V

    .line 1620
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "onStop..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1621
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 228
    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/CallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 230
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    iput-boolean v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isVZWConfInitiated:Z

    .line 234
    :cond_0
    const v2, 0x7f100246

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    .line 235
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateCallCardIndicatorArea()V

    .line 236
    const v2, 0x7f100289

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mNavigationBarArea:Landroid/view/View;

    .line 237
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateNavigationBar()V

    .line 239
    const v2, 0x7f1002e2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryContainer:Landroid/view/View;

    .line 240
    const v2, 0x7f1002e3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    .line 241
    const v2, 0x7f100198

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    .line 242
    const v2, 0x7f1000e9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    .line 243
    const v2, 0x7f10010e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    .line 244
    const v2, 0x7f1001da

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    .line 245
    const v2, 0x7f1000a5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    .line 246
    const v2, 0x7f1001db

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    .line 247
    const v2, 0x7f100197

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    .line 248
    const v2, 0x7f100199

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    .line 249
    const v2, 0x7f10025f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    .line 250
    const v2, 0x7f1002db

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    .line 251
    const v2, 0x7f1000a2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    .line 252
    const v2, 0x7f10018c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 253
    const v2, 0x7f1002dd

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    .line 254
    const v2, 0x7f1001d7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateContainer:Landroid/view/View;

    .line 255
    const v2, 0x7f100193

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    .line 257
    const v2, 0x7f1002e8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryContainer:Landroid/view/View;

    .line 258
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryContainer:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    :cond_1
    const v2, 0x7f1002e9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    .line 262
    const v2, 0x7f1002ed

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    .line 263
    const v2, 0x7f1002df

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    .line 264
    const v2, 0x7f1002e0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    .line 265
    const v2, 0x7f1002e1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    .line 266
    const v2, 0x7f1002f2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    .line 268
    const v2, 0x7f10009f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    .line 269
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    const v2, 0x7f100099

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    .line 271
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    const v2, 0x7f1002de

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    .line 273
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    const v2, 0x7f1002e7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mDivideLine:Landroid/view/View;

    .line 277
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 279
    const-string v2, "no_receiver_in_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 280
    const v2, 0x7f1002f6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    .line 281
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 282
    const v2, 0x7f1002f7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    .line 283
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    :cond_2
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 288
    const v2, 0x7f1002ef

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTimeLayout:Landroid/view/View;

    .line 289
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    if-nez v2, :cond_3

    .line 290
    const v2, 0x7f1002f0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    .line 292
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_4

    .line 293
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 294
    const v2, 0x7f100424

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    .line 295
    const v2, 0x7f100425

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    .line 298
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-nez v2, :cond_5

    .line 299
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1002f5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    .line 301
    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-eqz v2, :cond_6

    .line 302
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 303
    const v2, 0x7f1002d6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    .line 307
    :cond_6
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 308
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v1

    .line 309
    .local v1, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v1, :cond_7

    .line 310
    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    .line 314
    .end local v1    # "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    :cond_7
    const-string v2, "jansky_info_for_tmo"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 315
    const v2, 0x7f1002e4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineStub:Landroid/view/ViewStub;

    .line 316
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_8

    .line 317
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 319
    :cond_8
    const v2, 0x7f1002ea

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineStub:Landroid/view/ViewStub;

    .line 320
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_9

    .line 321
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 324
    :cond_9
    const v2, 0x7f100347

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineName:Landroid/widget/TextView;

    .line 325
    const v2, 0x7f100346

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineIcon:Landroid/widget/ImageView;

    .line 326
    const v2, 0x7f100351

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineName:Landroid/widget/TextView;

    .line 327
    const v2, 0x7f100350

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineIcon:Landroid/widget/ImageView;

    .line 330
    :cond_a
    const-string v2, "enable_conference_info_banner"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 331
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-nez v2, :cond_b

    .line 332
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1002f4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    .line 334
    :cond_b
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-eqz v2, :cond_c

    .line 335
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 336
    const v2, 0x7f10025a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    .line 338
    :cond_c
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 339
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfBanner:Landroid/view/ViewStub;

    if-nez v2, :cond_d

    .line 340
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1002e6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfBanner:Landroid/view/ViewStub;

    .line 342
    :cond_d
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfBanner:Landroid/view/ViewStub;

    if-eqz v2, :cond_e

    .line 343
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfBanner:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 344
    const v2, 0x7f100258

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    .line 346
    :cond_e
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfBanner:Landroid/view/ViewStub;

    if-nez v2, :cond_f

    .line 347
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1002f3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfBanner:Landroid/view/ViewStub;

    .line 349
    :cond_f
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfBanner:Landroid/view/ViewStub;

    if-eqz v2, :cond_10

    .line 350
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfBanner:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 351
    const v2, 0x7f100259

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    .line 354
    :cond_10
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showConferenceCallBannerForVZW()V

    .line 356
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

    .line 357
    .local v0, "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    invoke-interface {v0, p1}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->onViewCreated(Landroid/view/View;)V

    goto :goto_0

    .line 359
    .end local v0    # "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    :cond_12
    return-void
.end method

.method protected removeMultipartyCallButtons()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1548
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1549
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1551
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1552
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1554
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 1555
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1557
    :cond_2
    return-void
.end method

.method protected resetAllOfAnimation(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 2234
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v0, :cond_1

    .line 2268
    :cond_0
    :goto_0
    return-void

    .line 2236
    :cond_1
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "resetAllOfAnimation..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2237
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2238
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2246
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->endAllOfAnimatorSet()V

    .line 2247
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    .line 2248
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateDivideLine()V

    .line 2250
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2251
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2252
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2254
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 2255
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2257
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 2258
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 2259
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2260
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2262
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 2263
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2264
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2266
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 2267
    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0
.end method

.method protected resetMergeAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 2186
    const-string v1, "MultiPartyCallCardFragment"

    const-string v2, "resetMergeAnimation..."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2188
    iput-boolean v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    .line 2189
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2190
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2191
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2196
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateCallerInfo()V

    .line 2197
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    .line 2198
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateDivideLine()V

    .line 2200
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryCallMoreMenu()V

    .line 2201
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showSecondaryContainer(Z)V

    .line 2203
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->updateIcon()V

    .line 2204
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2205
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2206
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2207
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 2208
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 2209
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 2211
    :cond_7
    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2212
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    .line 2213
    .local v0, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v0, :cond_8

    .line 2214
    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    .line 2217
    .end local v0    # "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    :cond_8
    return-void

    .line 2193
    :cond_9
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected resetSplitAnimation()V
    .locals 3

    .prologue
    .line 2221
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "resetSplitAnimation..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2222
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    .line 2223
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2224
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2225
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 2226
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2228
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->hideConferenceCallManager()V

    .line 2229
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForManager()V

    .line 2231
    :cond_3
    return-void
.end method

.method protected resetSwapAnimation()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 2164
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "resetSwapAnimation..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    .line 2167
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateCallerInfo()V

    .line 2168
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    .line 2169
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->swapCallerInfoForAnim()V

    .line 2170
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryCallMoreMenu()V

    .line 2171
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v0, :cond_0

    .line 2172
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->updateIcon()V

    .line 2175
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2176
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2177
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2178
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2179
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2180
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2181
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2182
    :cond_7
    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
    .locals 23
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
    .line 856
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

    .line 858
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v18

    .line 859
    .local v18, "isMultipartyCall":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v14

    .line 860
    .local v14, "call":Lcom/android/incallui/Call;
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

    .line 861
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

    .line 863
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    .line 864
    const-string v4, "MultiPartyCallCardFragment"

    const-string v5, "setCallState: current state is ONHOLD and merge is processing"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 977
    :goto_0
    return-void

    .line 868
    :cond_0
    const-string v4, "support_smart_call"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 869
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 870
    :cond_1
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

    .line 871
    .local v16, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v16, :cond_2

    .line 872
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    move-object/from16 v22, v0

    .line 873
    .local v22, "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    if-eqz v22, :cond_2

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getSmartCallLogInfoUpdated()Z

    move-result v4

    if-nez v4, :cond_2

    .line 874
    const/4 v4, 0x1

    invoke-virtual {v14, v4}, Lcom/android/incallui/Call;->setSmartCallLogInfoUpdated(Z)V

    .line 875
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_7

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    :goto_1
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    if-eqz v6, :cond_8

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    :goto_2
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    if-eqz v7, :cond_9

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    :goto_3
    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    if-eqz v8, :cond_a

    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    :goto_4
    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderName:Ljava/lang/String;

    if-eqz v9, :cond_b

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderName:Ljava/lang/String;

    :goto_5
    move-object/from16 v0, v22

    iget-object v10, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderImageUrl:Ljava/lang/String;

    if-eqz v10, :cond_c

    move-object/from16 v0, v22

    iget-object v10, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderImageUrl:Ljava/lang/String;

    :goto_6
    move-object/from16 v0, v22

    iget-object v11, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    if-eqz v11, :cond_d

    move-object/from16 v0, v22

    iget-object v11, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    :goto_7
    move-object/from16 v0, v22

    iget-object v12, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    if-eqz v12, :cond_e

    move-object/from16 v0, v22

    iget-object v12, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    :goto_8
    invoke-virtual/range {v4 .. v12}, Lcom/android/incallui/TelecomAdapter;->setSmartCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    .end local v16    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v22    # "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    if-eqz v14, :cond_3

    .line 889
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_f

    const v4, 0x3ecccccd    # 0.4f

    :goto_9
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 892
    :cond_3
    if-eqz p9, :cond_5

    if-nez v18, :cond_5

    const/16 v4, 0xb

    move/from16 v0, p1

    if-ne v0, v4, :cond_4

    if-eqz v14, :cond_4

    .line 893
    invoke-virtual {v14}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_5

    .line 894
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    .line 897
    :cond_5
    const-string v4, "enable_conference_info_banner"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 898
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showConferenceCallBannerForVZW()V

    .line 903
    :goto_a
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isOnlyExistDisconnectConferenceCall()Z

    move-result v4

    if-nez v4, :cond_11

    .line 904
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 905
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->hideCallButtonsForManager(Z)V

    .line 907
    :cond_6
    const-string v4, "MultiPartyCallCardFragment"

    const-string v5, "setCallState: current state is not multi-party"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 875
    .restart local v16    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .restart local v22    # "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_7
    const-string v5, ""

    goto/16 :goto_1

    :cond_8
    const-string v6, ""

    goto/16 :goto_2

    :cond_9
    const-string v7, ""

    goto/16 :goto_3

    :cond_a
    const-string v8, ""

    goto/16 :goto_4

    :cond_b
    const-string v9, ""

    goto/16 :goto_5

    :cond_c
    const-string v10, ""

    goto/16 :goto_6

    :cond_d
    const-string v11, ""

    goto/16 :goto_7

    :cond_e
    const-string v12, ""

    goto/16 :goto_8

    .line 889
    .end local v16    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v22    # "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_f
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_9

    .line 900
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMergeComplete(Lcom/android/incallui/Call;)V

    goto :goto_a

    .line 911
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-eqz v4, :cond_1c

    .line 912
    const-string v4, "MultiPartyCallCardFragment"

    const-string v5, "setCallState: swap is processing"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 917
    :cond_12
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getCallStateLabelFromState(ILandroid/telecom/DisconnectCause;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 918
    .local v15, "callStateLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateCallStateLabelForCallState(ILjava/lang/CharSequence;)V

    .line 919
    const/16 v4, 0x8

    move/from16 v0, p1

    if-ne v0, v4, :cond_1d

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showOnHoldText(Z)V

    .line 920
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateDisplayChildCallChanged()V

    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    .line 922
    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryCallMoreMenu(I)V

    .line 923
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateContainerLayout()V

    .line 924
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForEndCall(I)V

    .line 925
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateEri()V

    .line 926
    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateTextColor(I)V

    .line 927
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateJanskyInfo()V

    .line 928
    const-string v4, "no_receiver_in_call"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 929
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->arrangeBelowButtonLayout(I)V

    .line 932
    :cond_13
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 933
    if-eqz v14, :cond_14

    .line 934
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMessageVoiceFromvideo(Lcom/android/incallui/Call;)V

    .line 936
    :cond_14
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isVZWConfInitiated:Z

    .line 940
    :cond_15
    if-eqz v14, :cond_1e

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1e

    .line 941
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_1e

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getSecondActiveCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_1e

    const/16 v17, 0x1

    .line 942
    .local v17, "isGSMMultiActiveCall":Z
    :goto_d
    if-eqz v18, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-nez v4, :cond_1f

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing()Z

    move-result v4

    if-nez v4, :cond_1f

    const/16 v21, 0x1

    .line 943
    .local v21, "showSecondary":Z
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showSecondaryContainer(Z)V

    .line 944
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mDivideLine:Landroid/view/View;

    if-eqz v4, :cond_17

    .line 945
    if-nez v21, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_16
    const/16 v19, 0x1

    .line 946
    .local v19, "isShowLine":Z
    :goto_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mDivideLine:Landroid/view/View;

    if-eqz v19, :cond_21

    const/4 v4, 0x0

    :goto_10
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 950
    .end local v19    # "isShowLine":Z
    :cond_17
    const/16 v20, 0x1

    .line 951
    .local v20, "resetAnimations":Z
    const-string v4, "ims_voice_conference_vzw"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 952
    invoke-static {v14}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 953
    const/16 v20, 0x0

    .line 959
    :cond_18
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 960
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 961
    const/16 v20, 0x0

    .line 964
    :cond_19
    if-eqz v20, :cond_1a

    .line 965
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->resetAllOfAnimation(Z)V

    .line 968
    :cond_1a
    invoke-static {v14}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/16 v4, 0x9

    move/from16 v0, p1

    if-eq v0, v4, :cond_1b

    const/16 v4, 0xa

    move/from16 v0, p1

    if-ne v0, v4, :cond_22

    .line 969
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->hideConferenceCallManager()V

    .line 970
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    goto/16 :goto_0

    .line 913
    .end local v15    # "callStateLabel":Ljava/lang/CharSequence;
    .end local v17    # "isGSMMultiActiveCall":Z
    .end local v20    # "resetAnimations":Z
    .end local v21    # "showSecondary":Z
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v4, :cond_12

    .line 914
    const-string v4, "MultiPartyCallCardFragment"

    const-string v5, "setCallState: merge is processing"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_b

    .line 919
    .restart local v15    # "callStateLabel":Ljava/lang/CharSequence;
    :cond_1d
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 941
    :cond_1e
    const/16 v17, 0x0

    goto/16 :goto_d

    .line 942
    .restart local v17    # "isGSMMultiActiveCall":Z
    :cond_1f
    const/16 v21, 0x0

    goto/16 :goto_e

    .line 945
    .restart local v21    # "showSecondary":Z
    :cond_20
    const/16 v19, 0x0

    goto :goto_f

    .line 946
    .restart local v19    # "isShowLine":Z
    :cond_21
    const/4 v4, 0x4

    goto :goto_10

    .line 973
    .end local v19    # "isShowLine":Z
    .restart local v20    # "resetAnimations":Z
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;

    .line 974
    .local v13, "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    move/from16 v0, p1

    invoke-interface {v13, v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->setCallState(I)V

    goto :goto_11

    .line 976
    .end local v13    # "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    :cond_23
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOldCallState:I

    goto/16 :goto_0
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 18
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "isConference"    # Z
    .param p5, "canManageConference"    # Z
    .param p6, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p7, "isWorkCall"    # Z

    .prologue
    .line 643
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

    .line 645
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    .line 647
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

    .line 648
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x68

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 651
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 652
    const-string v13, "MultiPartyCallCardFragment"

    const-string v16, "setPrimary: current state is not multi-party"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v13, v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 762
    :cond_1
    :goto_0
    return-void

    .line 656
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-eqz v13, :cond_e

    .line 657
    const-string v13, "MultiPartyCallCardFragment"

    const-string v16, "setPrimary: swap is processing"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v13, v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 663
    :cond_3
    const/4 v10, 0x0

    .line 664
    .local v10, "label":Ljava/lang/String;
    const/4 v11, 0x0

    .line 665
    .local v11, "photo":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    .line 666
    .local v8, "isPersonalPhotoAvailable":Z
    const-wide/16 v14, 0x0

    .line 668
    .local v14, "userType":J
    if-eqz p6, :cond_4

    .line 669
    move-object/from16 v0, p6

    iget-object v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 670
    move-object/from16 v0, p6

    iget-object v11, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 671
    move-object/from16 v0, p6

    iget-boolean v8, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    .line 672
    move-object/from16 v0, p6

    iget-wide v14, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    .line 675
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v13

    check-cast v13, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v13}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v5

    .line 676
    .local v5, "call":Lcom/android/incallui/Call;
    const/4 v9, 0x0

    .line 677
    .local v9, "isSrvccConferenceCall":Z
    if-eqz v5, :cond_5

    .line 678
    invoke-virtual {v5}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/util/CallTypeUtils;->isSrvccConference(Ljava/lang/String;)Z

    move-result v9

    .line 680
    :cond_5
    if-nez p4, :cond_6

    if-eqz v9, :cond_10

    .line 681
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConfCallDisplayName(Lcom/android/incallui/Call;Z)Ljava/lang/String;

    move-result-object p2

    .line 682
    const/16 p1, 0x0

    .line 683
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v7

    .line 684
    .local v7, "countString":Ljava/lang/String;
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

    .line 685
    if-eqz v9, :cond_f

    .line 686
    const/4 v10, 0x0

    .line 705
    .end local v7    # "countString":Ljava/lang/String;
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 706
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    .line 708
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v13, :cond_8

    .line 709
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 710
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 716
    :cond_8
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 717
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    .line 720
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 721
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    .line 723
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v8}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 724
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setProfileIcon(J)V

    .line 725
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDisplaySize()V

    .line 727
    const-string v13, "tablet_device"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 728
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->needToShowVolumeButton()Z

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showVolumeButton(Z)V

    .line 732
    :cond_9
    const/4 v12, 0x1

    .line 733
    .local v12, "resetAnimations":Z
    const-string v13, "ims_voice_conference_vzw"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 734
    invoke-static {v5}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 735
    const/4 v12, 0x0

    .line 741
    :cond_a
    const-string v13, "vzw_volte_ui"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 743
    const/4 v12, 0x0

    .line 746
    :cond_b
    if-eqz v12, :cond_c

    .line 747
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->resetAllOfAnimation(Z)V

    .line 750
    :cond_c
    invoke-static {v5}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 751
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

    .line 752
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v13

    if-nez v13, :cond_d

    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForManager()V

    .line 755
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    goto/16 :goto_0

    .line 658
    .end local v5    # "call":Lcom/android/incallui/Call;
    .end local v8    # "isPersonalPhotoAvailable":Z
    .end local v9    # "isSrvccConferenceCall":Z
    .end local v10    # "label":Ljava/lang/String;
    .end local v11    # "photo":Landroid/graphics/drawable/Drawable;
    .end local v12    # "resetAnimations":Z
    .end local v14    # "userType":J
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v13, :cond_3

    .line 659
    const-string v13, "MultiPartyCallCardFragment"

    const-string v16, "setPrimary: merge is processing"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v13, v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 688
    .restart local v5    # "call":Lcom/android/incallui/Call;
    .restart local v7    # "countString":Ljava/lang/String;
    .restart local v8    # "isPersonalPhotoAvailable":Z
    .restart local v9    # "isSrvccConferenceCall":Z
    .restart local v10    # "label":Ljava/lang/String;
    .restart local v11    # "photo":Landroid/graphics/drawable/Drawable;
    .restart local v14    # "userType":J
    :cond_f
    move-object v10, v7

    goto/16 :goto_1

    .line 690
    .end local v7    # "countString":Ljava/lang/String;
    :cond_10
    if-eqz v5, :cond_7

    if-eqz p6, :cond_7

    move-object/from16 v0, p6

    iget-boolean v13, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v13, :cond_7

    .line 692
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v13

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v6

    .line 693
    .local v6, "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    if-eqz v6, :cond_7

    .line 694
    iget-object v13, v6, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_11

    .line 695
    iget-object v0, v6, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    move-object/from16 p2, v0

    .line 697
    :cond_11
    iget-object v13, v6, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_7

    .line 698
    iget-object v11, v6, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    .line 699
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 712
    .end local v6    # "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 759
    .restart local v12    # "resetAnimations":Z
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

    .line 760
    .local v4, "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    move-object/from16 v0, p6

    invoke-interface {v4, v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_3
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 5
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1156
    if-eqz p1, :cond_2

    .line 1157
    iput-object p2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    .line 1158
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1159
    .local v0, "call":Lcom/android/incallui/Call;
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1161
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1162
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1163
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1166
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getCallTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setTTS(JLandroid/view/View;)V

    .line 1173
    .end local v0    # "call":Lcom/android/incallui/Call;
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1174
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, p1, p2}, Lcom/android/incallui/InCallActivity;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    .line 1176
    :cond_1
    return-void

    .line 1171
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setPrimaryCallMoreMenu()V
    .locals 4

    .prologue
    .line 1259
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1260
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1261
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

    .line 1262
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryCallMoreMenu(I)V

    .line 1264
    :cond_0
    return-void
.end method

.method protected setPrimaryCallMoreMenu(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1267
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->needToShowMenu()Z

    move-result v0

    .line 1268
    .local v0, "needToShowMenu":Z
    iget-boolean v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v1, :cond_1

    .line 1269
    :cond_0
    const/4 v0, 0x0

    .line 1271
    :cond_1
    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    const/16 v1, 0xa

    if-ne p1, v1, :cond_3

    .line 1272
    :cond_2
    const/4 v0, 0x0

    .line 1274
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMenu(Z)V

    .line 1275
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1276
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallActivity;->setPrimaryCallMenuForDialpad(Z)V

    .line 1278
    :cond_4
    return-void
.end method

.method public declared-synchronized setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 12
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isPersonalPhotoAvailable"    # Z

    .prologue
    const/4 v8, 0x0

    .line 400
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

    .line 401
    .local v1, "call":Lcom/android/incallui/Call;
    if-nez v1, :cond_1

    .line 467
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 403
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 404
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_3

    .line 405
    if-eqz p2, :cond_2

    move-object v8, p1

    :cond_2
    invoke-virtual {v0, v8}, Lcom/android/incallui/InCallActivity;->updateGradientColor(Landroid/graphics/drawable/Drawable;)V

    .line 408
    :cond_3
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    .line 409
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a035a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v2, v8

    .line 415
    .local v2, "diameter":I
    if-nez p2, :cond_5

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v8, :cond_5

    .line 417
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020399

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 418
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1, v2}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 419
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v8, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 420
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPhotoTag(Landroid/view/View;ILjava/lang/Integer;)V

    .line 423
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v8}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v7

    .line 424
    .local v7, "primaryCall":Lcom/android/incallui/Call;
    invoke-virtual {v1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {v7}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 425
    :cond_6
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPhotoTag(Landroid/view/View;I)Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020397

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 429
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1, v2}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 430
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v8, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 431
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPhotoTag(Landroid/view/View;ILjava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 400
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    .end local v1    # "call":Lcom/android/incallui/Call;
    .end local v2    # "diameter":I
    .end local v7    # "primaryCall":Lcom/android/incallui/Call;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 432
    .restart local v0    # "activity":Lcom/android/incallui/InCallActivity;
    .restart local v1    # "call":Lcom/android/incallui/Call;
    .restart local v2    # "diameter":I
    .restart local v7    # "primaryCall":Lcom/android/incallui/Call;
    :cond_7
    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    .line 433
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    .line 434
    .local v5, "imgHashCode":I
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v9, 0x2

    invoke-direct {p0, v8, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPhotoTag(Landroid/view/View;I)Ljava/lang/Integer;

    move-result-object v6

    .line 435
    .local v6, "photoTag":Ljava/lang/Integer;
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v5, :cond_0

    .line 438
    :cond_8
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v9, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v8, v9, v10}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPhotoTag(Landroid/view/View;ILjava/lang/Integer;)V

    .line 439
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1, v2}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 440
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v8, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 442
    .end local v5    # "imgHashCode":I
    .end local v6    # "photoTag":Ljava/lang/Integer;
    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    .line 443
    .local v4, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    const/4 v3, 0x0

    .line 444
    .local v3, "displayName":Ljava/lang/String;
    if-eqz v4, :cond_a

    iget-boolean v8, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v8, :cond_a

    .line 445
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

    .line 446
    iget-object v8, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 449
    :cond_a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 450
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v8, :cond_b

    .line 451
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 453
    :cond_b
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 454
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 458
    :cond_c
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPhotoTag(Landroid/view/View;I)Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_0

    .line 461
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 462
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1, v2}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 463
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v8, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 464
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
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 551
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z

    .prologue
    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, "nameDirection":I
    if-eqz p2, :cond_1

    .line 392
    const/4 v0, 0x3

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 537
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumberLocator"    # Ljava/lang/String;

    .prologue
    .line 1290
    return-void
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 15
    .param p1, "show"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "providerLabel"    # Ljava/lang/String;
    .param p5, "providerIcon"    # Landroid/graphics/drawable/Drawable;
    .param p6, "isConference"    # Z
    .param p7, "canManageConference"    # Z
    .param p8, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 768
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

    .line 770
    const/4 v5, 0x0

    .line 771
    .local v5, "label":Ljava/lang/String;
    const/4 v7, 0x0

    .line 772
    .local v7, "photo":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 773
    .local v4, "isPersonalPhotoAvailable":Z
    const-wide/16 v10, 0x0

    .line 775
    .local v10, "userType":J
    if-eqz p8, :cond_0

    .line 776
    move-object/from16 v0, p8

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 777
    move-object/from16 v0, p8

    iget-object v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 778
    move-object/from16 v0, p8

    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    .line 779
    move-object/from16 v0, p8

    iget-wide v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    .line 780
    move-object/from16 v0, p8

    iget-boolean v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v9, :cond_3

    .line 781
    move-object/from16 v0, p8

    iget-object v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    .line 782
    move-object/from16 v0, p8

    iget-object v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    .line 789
    :cond_0
    :goto_0
    if-eqz p6, :cond_4

    .line 790
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v9

    check-cast v9, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v9}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v8

    .line 791
    .local v8, "secondaryCall":Lcom/android/incallui/Call;
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

    .line 792
    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConfCallDisplayName(Lcom/android/incallui/Call;Z)Ljava/lang/String;

    move-result-object p2

    .line 794
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    .line 795
    invoke-direct {p0, v8}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    .line 796
    .local v3, "countString":Ljava/lang/String;
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

    .line 797
    if-eqz v3, :cond_1

    .line 798
    iput-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    .line 814
    .end local v3    # "countString":Ljava/lang/String;
    .end local v8    # "secondaryCall":Lcom/android/incallui/Call;
    :cond_1
    :goto_1
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryName(Ljava/lang/String;Z)V

    .line 815
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    .line 817
    invoke-virtual {p0, v7, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 818
    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryProfileIcon(J)V

    .line 820
    const-string v9, "vzw_volte_ui"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 821
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f090047

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 822
    .local v6, "onHoldText":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v6, v12, v13

    invoke-static {v9, v12}, Lcom/android/incallui/util/GraphicResourceUtils;->setDescriptionToView(Landroid/view/View;[Ljava/lang/String;)V

    .line 825
    .end local v6    # "onHoldText":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->resetAllOfAnimation(Z)V

    .line 826
    return-void

    .line 784
    :cond_3
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    .line 785
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 800
    :cond_4
    if-eqz p8, :cond_1

    move-object/from16 v0, p8

    iget-boolean v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v9, :cond_1

    .line 802
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v9

    move-object/from16 v0, p8

    iget-object v12, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v2

    .line 803
    .local v2, "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    if-eqz v2, :cond_1

    .line 804
    iget-object v9, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 805
    iget-object v0, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    move-object/from16 p2, v0

    .line 807
    :cond_5
    iget-object v9, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1

    .line 808
    iget-object v7, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    .line 809
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public setSecondaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 6
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x0

    .line 1180
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1181
    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v2, :cond_1

    .line 1182
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTimeLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1183
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1184
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCallTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setTTS(JLandroid/view/View;)V

    .line 1186
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1187
    .local v1, "timeText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1188
    .local v0, "onHoldText":Ljava/lang/String;
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

    .line 1189
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1196
    .end local v0    # "onHoldText":Ljava/lang/String;
    .end local v1    # "timeText":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTimeLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1192
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1193
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public declared-synchronized setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 10
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isPersonalPhotoAvailable"    # Z

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/incallui/CallList;->getBgCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 471
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 531
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 473
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 474
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 478
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a035a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v1, v7

    .line 480
    .local v1, "diameter":I
    if-nez p2, :cond_3

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    .line 481
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020399

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 482
    invoke-static {p1, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 483
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v7, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 484
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPhotoTag(Landroid/view/View;ILjava/lang/Integer;)V

    .line 487
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v7}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v6

    .line 488
    .local v6, "secondaryCall":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 489
    :cond_4
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPhotoTag(Landroid/view/View;I)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_0

    .line 492
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020397

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 493
    invoke-static {p1, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 494
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v7, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 495
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPhotoTag(Landroid/view/View;ILjava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 470
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "diameter":I
    .end local v6    # "secondaryCall":Lcom/android/incallui/Call;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 496
    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v1    # "diameter":I
    .restart local v6    # "secondaryCall":Lcom/android/incallui/Call;
    :cond_5
    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    .line 497
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 498
    .local v4, "imgHashcode":I
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v8, 0x2

    invoke-direct {p0, v7, v8}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPhotoTag(Landroid/view/View;I)Ljava/lang/Integer;

    move-result-object v5

    .line 499
    .local v5, "photoTag":Ljava/lang/Integer;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v4, :cond_0

    .line 502
    :cond_6
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v8, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPhotoTag(Landroid/view/View;ILjava/lang/Integer;)V

    .line 503
    invoke-static {p1, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 504
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v7, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 506
    .end local v4    # "imgHashcode":I
    .end local v5    # "photoTag":Ljava/lang/Integer;
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    .line 507
    .local v3, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    const/4 v2, 0x0

    .line 508
    .local v2, "displayName":Ljava/lang/String;
    if-eqz v3, :cond_8

    iget-boolean v7, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v7, :cond_8

    .line 509
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

    .line 510
    iget-object v7, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 513
    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 514
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    if-eqz v7, :cond_9

    .line 515
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 517
    :cond_9
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 518
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 522
    :cond_a
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPhotoTag(Landroid/view/View;I)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020399

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 526
    invoke-static {p1, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 527
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v7, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 528
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
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z

    .prologue
    .line 829
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    :goto_0
    return-void

    .line 832
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    const/4 v0, 0x0

    .line 836
    .local v0, "nameDirection":I
    if-eqz p2, :cond_1

    .line 837
    const/4 v0, 0x3

    .line 839
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 371
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "setVisible - - getView() == null"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 380
    :goto_0
    return-void

    .line 375
    :cond_0
    if-eqz p1, :cond_1

    .line 376
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 378
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected showConferenceCallManager()V
    .locals 1

    .prologue
    .line 2325
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->showConferenceCallManager()V

    .line 2326
    return-void
.end method

.method public showConferenceStateInfoBanner(ZLjava/lang/String;)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1218
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

    .line 1219
    if-eqz p1, :cond_2

    .line 1220
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1221
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1222
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    goto :goto_0

    .line 1224
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 10
    .param p1, "visible"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2412
    iget-boolean v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v7, :cond_1

    .line 2451
    :cond_0
    :goto_0
    return-void

    .line 2413
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

    .line 2415
    if-nez p1, :cond_2

    const-string v7, "vzw_volte_ui"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2416
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 2420
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2421
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 2422
    const/16 v7, 0x80

    invoke-virtual {v0, v7}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    .line 2424
    .local v1, "canManageConference":Z
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    .line 2425
    .local v2, "isConference":Z
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v7, :cond_0

    .line 2426
    if-eqz v2, :cond_a

    if-eqz v1, :cond_a

    move v3, v4

    .line 2427
    .local v3, "showManageButton":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v7

    if-nez v7, :cond_b

    :goto_2
    and-int/2addr v3, v4

    .line 2429
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 2431
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->hideConferenceCallManager()V

    .line 2433
    :cond_3
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2434
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPreviousParentId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2435
    :cond_4
    const/4 v3, 0x1

    .line 2438
    :cond_5
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v7, 0x9

    if-eq v4, v7, :cond_6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v7, 0xa

    if-ne v4, v7, :cond_7

    .line 2439
    :cond_6
    const/4 v3, 0x0

    .line 2441
    :cond_7
    iget-boolean v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isVZWConfInitiated:Z

    if-eqz v4, :cond_8

    .line 2442
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2443
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPrimaryConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2444
    const/4 v3, 0x1

    .line 2445
    :cond_8
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v3, :cond_c

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2446
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    if-eqz v4, :cond_9

    .line 2447
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2449
    :cond_9
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateManageAndHideConferenceCallButton(Z)V

    goto/16 :goto_0

    .end local v3    # "showManageButton":Z
    :cond_a
    move v3, v5

    .line 2426
    goto :goto_1

    .restart local v3    # "showManageButton":Z
    :cond_b
    move v4, v5

    .line 2427
    goto :goto_2

    :cond_c
    move v5, v6

    .line 2445
    goto :goto_3
.end method

.method public showMenu(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 1737
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->showMenu(Z)V

    .line 1738
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1739
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "showMenu : fragment is detached from activity, return"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1745
    :cond_0
    :goto_0
    return-void

    .line 1742
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v0, :cond_0

    .line 1743
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0, p0, p1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showMenu(Lcom/android/incallui/fragment/CallCardFragment;Z)V

    goto :goto_0
.end method

.method protected showMergeNotAllowDialog()V
    .locals 3

    .prologue
    .line 2634
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2635
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0905a9

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2636
    const v1, 0x7f090046

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$7;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$7;-><init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2641
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 2642
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2643
    return-void
.end method

.method public showModifyStateInfoBanner(ZLjava/lang/String;)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1199
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

    .line 1200
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 1201
    if-eqz p1, :cond_1

    .line 1202
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1204
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1205
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1208
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showMtConferenceBanner(ZZLjava/lang/String;)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "isPrimary"    # Z
    .param p3, "strBanner"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1229
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1246
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-nez v0, :cond_3

    .line 1232
    if-eqz p2, :cond_2

    .line 1233
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1236
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1237
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1240
    :cond_3
    if-eqz p2, :cond_4

    .line 1241
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1243
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected showSecondaryContainer(Z)V
    .locals 7
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1129
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_0
    and-int/2addr p1, v2

    .line 1130
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1131
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz p1, :cond_5

    move v2, v4

    :goto_1
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1133
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1134
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz p1, :cond_6

    move v2, v4

    :goto_2
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1135
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz p1, :cond_7

    const v2, 0x3ecccccd    # 0.4f

    :goto_3
    invoke-virtual {v6, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1137
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1138
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz p1, :cond_2

    move v5, v4

    :cond_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1139
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1140
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1141
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f090047

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1142
    .local v1, "onHoldText":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    aput-object v6, v5, v4

    aput-object v1, v5, v3

    invoke-static {v2, v5}, Lcom/android/incallui/util/GraphicResourceUtils;->setDescriptionToView(Landroid/view/View;[Ljava/lang/String;)V

    .line 1145
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "onHoldText":Ljava/lang/String;
    :cond_3
    return-void

    :cond_4
    move v2, v4

    .line 1129
    goto :goto_0

    :cond_5
    move v2, v5

    .line 1131
    goto :goto_1

    :cond_6
    move v2, v5

    .line 1134
    goto :goto_2

    .line 1135
    :cond_7
    const/4 v2, 0x0

    goto :goto_3
.end method

.method protected swapCallerInfoForAnim()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1756
    iget-boolean v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-eqz v6, :cond_1

    .line 1794
    :cond_0
    :goto_0
    return-void

    .line 1757
    :cond_1
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    .line 1758
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1759
    :cond_2
    const-string v5, "MultiPartyCallCardFragment"

    const-string v6, "swapCallerInfoForAnim...name is empty"

    invoke-static {v5, v6, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1762
    :cond_3
    const-string v6, "MultiPartyCallCardFragment"

    const-string v7, "swapCallerInfoForAnim..."

    invoke-static {v6, v7, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1763
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    .line 1764
    .local v2, "secondaryName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    .line 1765
    .local v3, "secondaryNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    .line 1766
    .local v1, "secondaryLabel":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1767
    .local v0, "nameIsNumber":Z
    if-eqz v2, :cond_4

    .line 1768
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1770
    :cond_4
    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 1771
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 1772
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 1773
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v6, :cond_5

    .line 1774
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1775
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1780
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    .line 1782
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1780
    :goto_2
    invoke-virtual {p0, v6, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryName(Ljava/lang/String;Z)V

    .line 1783
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    .line 1784
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    .line 1785
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    .line 1786
    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    .line 1787
    iput-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    .line 1788
    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    .line 1790
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1792
    iput-boolean v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBanner:Z

    goto :goto_0

    .line 1777
    :cond_6
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move v4, v5

    .line 1782
    goto :goto_2
.end method

.method public updateDisplayChildCallChanged()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2366
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2408
    :cond_0
    :goto_0
    return-void

    .line 2367
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 2368
    iget-boolean v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-nez v4, :cond_0

    .line 2370
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2371
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v9, :cond_2

    .line 2372
    invoke-virtual {p0, v10, v7}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 2373
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    .line 2374
    .local v2, "countString":Ljava/lang/String;
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

    .line 2376
    invoke-direct {p0, v0, v7}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConfCallDisplayName(Lcom/android/incallui/Call;Z)Ljava/lang/String;

    move-result-object v1

    .line 2377
    .local v1, "confCallName":Ljava/lang/String;
    invoke-virtual {p0, v1, v7}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 2378
    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    .line 2380
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

    .line 2382
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_2

    .line 2383
    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    .line 2384
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 2386
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 2387
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2391
    .end local v1    # "confCallName":Ljava/lang/String;
    .end local v2    # "countString":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v3

    .line 2392
    .local v3, "secondaryCall":Lcom/android/incallui/Call;
    if-eqz v3, :cond_0

    .line 2393
    invoke-virtual {v3}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v9, :cond_3

    .line 2394
    invoke-virtual {p0, v10, v7}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 2395
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    .line 2396
    .restart local v2    # "countString":Ljava/lang/String;
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

    .line 2398
    invoke-direct {p0, v3, v7}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConfCallDisplayName(Lcom/android/incallui/Call;Z)Ljava/lang/String;

    move-result-object v1

    .line 2399
    .restart local v1    # "confCallName":Ljava/lang/String;
    invoke-virtual {p0, v1, v7}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryName(Ljava/lang/String;Z)V

    .line 2400
    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    .line 2402
    if-eqz v2, :cond_3

    .line 2403
    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    .line 2406
    .end local v1    # "confCallName":Ljava/lang/String;
    .end local v2    # "countString":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    goto/16 :goto_0
.end method

.method public updateDivideLine()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1148
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mDivideLine:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1149
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

    .line 1150
    .local v0, "isShowLine":Z
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mDivideLine:Landroid/view/View;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1152
    .end local v0    # "isShowLine":Z
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1149
    goto :goto_0

    .line 1150
    .restart local v0    # "isShowLine":Z
    :cond_3
    const/4 v1, 0x4

    goto :goto_1
.end method

.method public updateEri()V
    .locals 1

    .prologue
    .line 2705
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    if-eqz v0, :cond_0

    .line 2706
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateEri()V

    .line 2708
    :cond_0
    return-void
.end method

.method public updateJanskyInfo()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const v9, 0x3ecccccd    # 0.4f

    const/4 v8, 0x0

    .line 2647
    const-string v5, "jansky_info_for_tmo"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2649
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v5}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 2650
    .local v1, "primaryCall":Lcom/android/incallui/Call;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v5}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v3

    .line 2651
    .local v3, "secondaryCall":Lcom/android/incallui/Call;
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

    .line 2652
    .local v2, "primaryEntry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
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

    .line 2654
    .local v4, "secondaryEntry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineName:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 2655
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

    .line 2656
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineName:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2657
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineName:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2659
    :cond_0
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineName:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineName:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 2660
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

    .line 2661
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineName:Landroid/widget/TextView;

    iget-object v6, v4, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2662
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineName:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2663
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineName:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2665
    :cond_1
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    .line 2666
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v2, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineIcon:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineColor:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/android/incallui/util/GraphicResourceUtils;->getJanskyLineIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2667
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 2668
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2669
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2674
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    .line 2675
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v4, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineIcon:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineColor:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/android/incallui/util/GraphicResourceUtils;->getJanskyLineIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2676
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5

    .line 2677
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2678
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2679
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2685
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "primaryCall":Lcom/android/incallui/Call;
    .end local v2    # "primaryEntry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    .end local v3    # "secondaryCall":Lcom/android/incallui/Call;
    .end local v4    # "secondaryEntry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    :cond_3
    :goto_1
    return-void

    .line 2671
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "primaryCall":Lcom/android/incallui/Call;
    .restart local v2    # "primaryEntry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    .restart local v3    # "secondaryCall":Lcom/android/incallui/Call;
    .restart local v4    # "secondaryEntry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    :cond_4
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2681
    :cond_5
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected updateManageAndHideConferenceCallButton(Z)V
    .locals 10
    .param p1, "showManageButton"    # Z

    .prologue
    const/16 v9, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 2454
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2455
    const-string v3, "MultiPartyCallCardFragment"

    const-string v5, "fragment is detached from activity, return"

    invoke-static {v3, v5, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2486
    :goto_0
    return-void

    .line 2458
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

    .line 2460
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v2

    .line 2461
    .local v2, "managerState":Z
    if-eqz v2, :cond_4

    .line 2462
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02038e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v8, v6, v8, v8}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2463
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2464
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090260

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2476
    :cond_1
    :goto_1
    const-string v3, "support_folder_hardkey"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2477
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v3, :cond_2

    .line 2478
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-nez v2, :cond_7

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2479
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v3, :cond_3

    .line 2480
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-nez v2, :cond_8

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2483
    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-static {v3, v8, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2484
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-eq v3, v9, :cond_9

    move v1, v4

    .line 2485
    .local v1, "manageEnable":Z
    :goto_4
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2465
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "manageEnable":Z
    :cond_4
    if-eqz p1, :cond_5

    .line 2466
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020392

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v8, v6, v8, v8}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2467
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2468
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090262

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2470
    :cond_5
    iget-boolean v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isVZWConfInitiated:Z

    if-eqz v3, :cond_6

    .line 2471
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2472
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPrimaryConferenceCall()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2473
    :cond_6
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move v3, v5

    .line 2478
    goto :goto_2

    :cond_8
    move v3, v5

    .line 2480
    goto :goto_3

    .restart local v0    # "call":Lcom/android/incallui/Call;
    :cond_9
    move v1, v5

    .line 2484
    goto :goto_4
.end method

.method protected updateMultipartyCallButtons()V
    .locals 9

    .prologue
    const/16 v5, 0xff

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1293
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

    .line 1294
    iget-boolean v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v3, :cond_1

    .line 1316
    :cond_0
    :goto_0
    return-void

    .line 1296
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1297
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1299
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

    .line 1301
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v2

    .line 1302
    .local v2, "isMultipartyCall":Z
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showSecondaryContainer(Z)V

    .line 1303
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateSwapCallButton(Lcom/android/incallui/Call;)V

    .line 1304
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMergeCallButton(Lcom/android/incallui/Call;)V

    .line 1305
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateManageButton(Lcom/android/incallui/Call;)V

    .line 1307
    if-eqz v2, :cond_0

    .line 1308
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v1

    .line 1309
    .local v1, "isManagerShowing":Z
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v6, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1311
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1312
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v1, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1313
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

    .line 1309
    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    move v3, v5

    .line 1312
    goto :goto_2

    :cond_6
    move v4, v5

    .line 1313
    goto :goto_3
.end method

.method public updateVolteView(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 2712
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v0, :cond_0

    .line 2713
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->setCallState(I)V

    .line 2715
    :cond_0
    return-void
.end method
