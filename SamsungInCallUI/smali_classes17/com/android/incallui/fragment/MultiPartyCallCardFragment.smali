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

    .line 102
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;-><init>()V

    .line 111
    new-instance v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$1;-><init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 127
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->MAX_CALLERS_IN_CONFERENCE:I

    .line 154
    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 155
    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    .line 156
    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 157
    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 158
    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 180
    iput-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBanner:Z

    .line 181
    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerBgCall:Lcom/android/incallui/Call;

    .line 182
    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerFgCall:Lcom/android/incallui/Call;

    .line 183
    iput-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceToast:Z

    .line 185
    iput-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowActiveConferenceBanner:Z

    .line 186
    iput-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowBackgroundConferenceBanner:Z

    .line 196
    iput-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isVZWConfInitiated:Z

    .line 198
    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTargetedCallIdforSwap:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTargetedCallIdforSwap:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateContainerLayout()V

    return-void
.end method

.method private animateForEndCall(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/16 v3, 0xa

    const/16 v2, 0x8

    .line 995
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOldCallState:I

    if-eq v1, v3, :cond_4

    if-ne p1, v3, :cond_4

    .line 998
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 999
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 1000
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->animateForHideBackground()V

    .line 1001
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateStatusBarColor(I)V

    .line 1002
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    .line 1003
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    .line 1006
    :cond_0
    const-string v1, "enable_conference_info_banner"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1007
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1008
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1009
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1011
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateEndImage()V

    .line 1013
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

    .line 1052
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-nez v4, :cond_1

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v0

    .line 1055
    .local v0, "isMultipartyCall":Z
    if-ne p1, v5, :cond_2

    if-nez v0, :cond_2

    move v1, v2

    .line 1056
    .local v1, "showResumeButton":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 1057
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1058
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1059
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1060
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .end local v1    # "showResumeButton":Z
    :cond_2
    move v1, v3

    .line 1055
    goto :goto_1

    .line 1063
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

    .line 1064
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1065
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1559
    if-nez p2, :cond_1

    .line 1567
    :cond_0
    :goto_0
    return-void

    .line 1560
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1561
    .local v0, "eventText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1562
    .local v1, "size":I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1564
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1565
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private endAllOfAnimatorSet()V
    .locals 1

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2267
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 2269
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2270
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 2272
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2273
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 2275
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2276
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 2278
    :cond_3
    return-void
.end method

.method private getActiveConferenceGroupCount()I
    .locals 2

    .prologue
    .line 590
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 591
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 595
    :goto_0
    return v1

    .line 593
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 595
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
    .line 1071
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1072
    :cond_0
    const-string v2, "MultiPartyCallCardFragment"

    const-string v3, "getCallStateLabelFromState getView() or context is empty: "

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    const/4 v0, 0x0

    .line 1092
    :cond_1
    :goto_0
    :pswitch_0
    return-object v0

    .line 1075
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1076
    .local v1, "context":Landroid/content/Context;
    const/4 v0, 0x0

    .line 1078
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 1082
    :pswitch_2
    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1083
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1084
    const v2, 0x7f0900cb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1085
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1086
    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1078
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
    .line 630
    const/4 v0, 0x0

    .line 631
    .local v0, "childCallCount":I
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->getIMSConfCallLiveParticipantCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 633
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->getIMSConfCallLiveParticipantCount()I

    move-result v0

    .line 637
    :goto_0
    return v0

    .line 635
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
    .line 2508
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2509
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method private getConferenceGroupCount(Lcom/android/incallui/Call;)I
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 609
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 611
    :goto_0
    return v0

    .line 610
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 611
    .local v0, "childCallCount":I
    goto :goto_0
.end method

.method private getConferenceGroupString(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 7
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 615
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 624
    :goto_0
    return-object v1

    .line 617
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getChildCount(Lcom/android/incallui/Call;)I

    move-result v0

    .line 620
    .local v0, "childCallCount":I
    if-ge v0, v5, :cond_1

    .line 621
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v2

    .line 622
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "secConferenceCallLabel"

    .line 621
    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 622
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 621
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 624
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v2

    .line 625
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "secConferenceCallLabel"

    .line 624
    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 625
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 624
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getContainerHeight()I
    .locals 14

    .prologue
    const-wide v12, 0x3fdccccccccccccdL    # 0.45

    .line 1397
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

    .line 1398
    .local v3, "display":Landroid/view/Display;
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1399
    .local v9, "realDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v9}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1401
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v2, v10, Landroid/util/DisplayMetrics;->density:F

    .line 1402
    .local v2, "density":F
    iget v8, v9, Landroid/util/DisplayMetrics;->density:F

    .line 1404
    .local v8, "realDensity":F
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a01eb

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v5, v10

    .line 1405
    .local v5, "indicatorHeight":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0349

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v0, v10

    .line 1406
    .local v0, "callStateHeight":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a03f0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v1, v10

    .line 1407
    .local v1, "captionHeight":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0512

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v6, v10

    .line 1409
    .local v6, "minimumContainerHeight":I
    const/4 v7, 0x0

    .line 1410
    .local v7, "realContainerHeight":I
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1411
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

    .line 1420
    :goto_0
    const/4 v4, 0x0

    .line 1421
    .local v4, "height":I
    if-ge v7, v6, :cond_3

    .line 1422
    div-int/lit8 v4, v6, 0x2

    .line 1426
    :goto_1
    return v4

    .line 1412
    .end local v4    # "height":I
    :cond_0
    cmpl-float v10, v2, v8

    if-eqz v10, :cond_1

    .line 1413
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

    .line 1414
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1415
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

    .line 1417
    :cond_2
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v10, v12

    int-to-double v12, v0

    sub-double/2addr v10, v12

    double-to-int v7, v10

    goto :goto_0

    .line 1424
    .restart local v4    # "height":I
    :cond_3
    div-int/lit8 v4, v7, 0x2

    goto :goto_1
.end method

.method private getOnHoldConferenceGroupCount()I
    .locals 2

    .prologue
    .line 599
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 600
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 601
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 605
    :goto_0
    return v1

    .line 603
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 605
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
    .line 1430
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a035e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 1431
    .local v0, "photoSize":I
    sub-int v2, p1, v0

    div-int/lit8 v1, v2, 0x2

    .line 1432
    .local v1, "topMargin":I
    return v1
.end method

.method private getPhotoTag(Landroid/view/View;I)Ljava/lang/Integer;
    .locals 2
    .param p1, "holder"    # Landroid/view/View;
    .param p2, "photoType"    # I

    .prologue
    .line 561
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 564
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPrimaryContainerWidth()I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1436
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-nez v5, :cond_0

    .line 1449
    :goto_0
    return v0

    .line 1438
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a035b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 1439
    .local v2, "nameLeftWidth":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a035c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 1440
    .local v3, "oneButtonWidth":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1441
    .local v4, "panelWidth":I
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v1, 0x1

    .line 1443
    .local v1, "isShow":Z
    :goto_1
    const/4 v0, 0x0

    .line 1444
    .local v0, "infoWidth":I
    if-eqz v1, :cond_2

    .line 1445
    sub-int v5, v4, v2

    sub-int v0, v5, v3

    goto :goto_0

    .end local v0    # "infoWidth":I
    .end local v1    # "isShow":Z
    :cond_1
    move v1, v0

    .line 1441
    goto :goto_1

    .line 1447
    .restart local v0    # "infoWidth":I
    .restart local v1    # "isShow":Z
    :cond_2
    sub-int v0, v4, v2

    goto :goto_0
.end method

.method private getSecUiAdapter()Lcom/android/incallui/UiAdapter;
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    return-object v0
.end method

.method private getSecondaryContainerWidth()I
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1453
    iget-object v10, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-nez v10, :cond_1

    :cond_0
    move v0, v8

    .line 1471
    :goto_0
    return v0

    .line 1455
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a035b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v4, v10

    .line 1456
    .local v4, "nameLeftWidth":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0356

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v3, v10

    .line 1457
    .local v3, "marginEnd":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a035f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    .line 1458
    .local v7, "twoButtonWidth":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a035c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v5, v10

    .line 1459
    .local v5, "oneButtonWidth":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v6, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1460
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

    .line 1461
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

    .line 1463
    .local v1, "isBothShow":Z
    :goto_2
    const/4 v0, 0x0

    .line 1464
    .local v0, "infoWidth":I
    if-eqz v1, :cond_5

    .line 1465
    sub-int v8, v6, v4

    sub-int v0, v8, v7

    goto :goto_0

    .end local v0    # "infoWidth":I
    .end local v1    # "isBothShow":Z
    .end local v2    # "isShow":Z
    :cond_3
    move v2, v8

    .line 1460
    goto :goto_1

    .restart local v2    # "isShow":Z
    :cond_4
    move v1, v8

    .line 1461
    goto :goto_2

    .line 1466
    .restart local v0    # "infoWidth":I
    .restart local v1    # "isBothShow":Z
    :cond_5
    if-eqz v2, :cond_6

    .line 1467
    sub-int v8, v6, v4

    sub-int v0, v8, v5

    goto :goto_0

    .line 1469
    :cond_6
    sub-int v8, v6, v4

    sub-int v0, v8, v3

    goto :goto_0
.end method

.method private hideCallButtonsForManager(Z)V
    .locals 4
    .param p1, "direct"    # Z

    .prologue
    .line 1311
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1312
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 1313
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1314
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/incallui/CallButtonUi;->animateForManager(ZZ)V

    .line 1317
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_0
    return-void
.end method

.method private isAnimatorSetRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2281
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2293
    :cond_0
    :goto_0
    return v0

    .line 2284
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2287
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2290
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2293
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMaxParticipants()Z
    .locals 6

    .prologue
    const/4 v4, 0x5

    .line 2673
    const/4 v0, 0x0

    .line 2674
    .local v0, "isMax":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 2675
    .local v1, "primaryCall":Lcom/android/incallui/Call;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 2677
    .local v2, "secondaryCall":Lcom/android/incallui/Call;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupCount(Lcom/android/incallui/Call;)I

    move-result v3

    if-lt v3, v4, :cond_0

    .line 2678
    const/4 v0, 0x1

    .line 2680
    :cond_0
    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupCount(Lcom/android/incallui/Call;)I

    move-result v3

    if-lt v3, v4, :cond_1

    .line 2681
    const/4 v0, 0x1

    .line 2683
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

    .line 2685
    return v0
.end method

.method private isOtherCallTTYvalue()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2487
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 2488
    .local v1, "primaryCall":Lcom/android/incallui/Call;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 2490
    .local v2, "secondaryCall":Lcom/android/incallui/Call;
    const/4 v0, 0x0

    .line 2492
    .local v0, "otherCallTTYvalue":Z
    if-eqz v1, :cond_0

    .line 2493
    invoke-static {v1}, Lcom/android/incallui/util/SecCallExtraUtils;->getTtyType(Lcom/android/incallui/Call;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 2494
    const-string v3, "MultiPartyCallCardFragment"

    const-string v4, "Primary call\'s TTY value is ON"

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2495
    const/4 v0, 0x1

    .line 2498
    :cond_0
    if-eqz v2, :cond_1

    .line 2499
    invoke-static {v2}, Lcom/android/incallui/util/SecCallExtraUtils;->getTtyType(Lcom/android/incallui/Call;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 2500
    const-string v3, "MultiPartyCallCardFragment"

    const-string v4, "Secondary call\'s TTY value is ON"

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2501
    const/4 v0, 0x1

    .line 2504
    :cond_1
    return v0
.end method

.method private queryForSwappedCall()V
    .locals 2

    .prologue
    .line 1706
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1707
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 1708
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1709
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/CallButtonUi;->queryForSwappedCall()V

    .line 1712
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_0
    return-void
.end method

.method private resetAllHandler()V
    .locals 5

    .prologue
    const/16 v4, 0x67

    const/16 v3, 0x66

    .line 2256
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "resetAllHandler..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2257
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2258
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2259
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2260
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2263
    :cond_1
    return-void
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1273
    if-nez p1, :cond_0

    .line 1274
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "view is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    :goto_0
    return-void

    .line 1277
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

    .line 568
    if-nez p1, :cond_0

    .line 587
    :goto_0
    return-void

    .line 569
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 570
    .local v0, "tagValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 571
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 573
    :pswitch_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 577
    :pswitch_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 581
    :pswitch_2
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 571
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
    const v12, 0x7f090095

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2545
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-static {v6, v11, v9}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v4

    .line 2546
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

    .line 2548
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMergeComplete(Lcom/android/incallui/Call;)V

    .line 2551
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-static {v6, v11, v9}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2552
    .local v0, "activeCall":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/android/incallui/CallList;->getBgCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v2

    .line 2553
    .local v2, "backgroundCall":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 2554
    .local v1, "activeCallMtConf":Z
    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v3

    .line 2555
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

    .line 2556
    iget-boolean v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-eqz v6, :cond_0

    .line 2557
    const-string v6, "MultiPartyCallCardFragment"

    const-string v7, "showConferenceCallBannerForVZW mIsSwapProcessing"

    invoke-static {v6, v7, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2594
    :goto_0
    return-void

    .line 2561
    :cond_0
    if-eqz v0, :cond_1

    .line 2562
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

    .line 2563
    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 2564
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%s"

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2565
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

    .line 2566
    invoke-virtual {p0, v10, v10, v5}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMtConferenceBanner(ZZLjava/lang/String;)V

    .line 2567
    iput-boolean v10, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowActiveConferenceBanner:Z

    .line 2568
    invoke-direct {p0, v0, v10}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updatePrimaryForMtConference(Lcom/android/incallui/Call;Z)V

    .line 2576
    .end local v5    # "strBanner":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v2, :cond_5

    .line 2577
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

    .line 2578
    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 2579
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%s"

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2580
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

    .line 2581
    invoke-virtual {p0, v10, v9, v5}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMtConferenceBanner(ZZLjava/lang/String;)V

    .line 2582
    iput-boolean v10, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowBackgroundConferenceBanner:Z

    .line 2583
    invoke-direct {p0, v2, v10}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateSecondaryForMtConference(Lcom/android/incallui/Call;Z)V

    goto/16 :goto_0

    .line 2569
    .end local v5    # "strBanner":Ljava/lang/String;
    :cond_2
    iget-boolean v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowActiveConferenceBanner:Z

    if-eqz v6, :cond_1

    .line 2570
    const-string v6, "NONE"

    invoke-virtual {p0, v9, v10, v6}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMtConferenceBanner(ZZLjava/lang/String;)V

    .line 2571
    iput-boolean v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowActiveConferenceBanner:Z

    .line 2572
    invoke-direct {p0, v0, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updatePrimaryForMtConference(Lcom/android/incallui/Call;Z)V

    goto :goto_1

    .line 2584
    :cond_3
    iget-boolean v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowBackgroundConferenceBanner:Z

    if-eqz v6, :cond_4

    .line 2585
    const-string v6, "NONE"

    invoke-virtual {p0, v9, v9, v6}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMtConferenceBanner(ZZLjava/lang/String;)V

    .line 2586
    iput-boolean v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowBackgroundConferenceBanner:Z

    .line 2587
    invoke-direct {p0, v2, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateSecondaryForMtConference(Lcom/android/incallui/Call;Z)V

    goto/16 :goto_0

    .line 2589
    :cond_4
    const-string v6, "NONE"

    invoke-virtual {p0, v9, v9, v6}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMtConferenceBanner(ZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 2592
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

    .line 2513
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2514
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

    .line 2515
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

    .line 2522
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

    .line 2524
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerFgCall:Lcom/android/incallui/Call;

    .line 2525
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 2526
    :cond_1
    const-string v1, "enable_conference_info_banner"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2528
    iget-boolean v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBanner:Z

    if-eqz v1, :cond_2

    .line 2529
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090094

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v5}, Lcom/android/incallui/UiAdapter;->showConferenceStateMessage(ZLjava/lang/String;Z)V

    .line 2530
    iput-boolean v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBanner:Z

    .line 2531
    const-string v1, "MultiPartyCallCardFragment"

    const-string v2, "Show Merged banner"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2542
    :cond_2
    :goto_0
    return-void

    .line 2534
    :cond_3
    iget-boolean v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceToast:Z

    if-eqz v1, :cond_2

    .line 2535
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090240

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2536
    .local v0, "str":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2537
    iput-boolean v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceToast:Z

    goto :goto_0
.end method

.method private showMessageVoiceFromvideo(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v3, 0x0

    .line 1241
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getMessageVoiceFromVideo()I

    move-result v0

    .line 1242
    .local v0, "message":I
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 1243
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/UiAdapter;->showVoiceCallModifyStateMessage(ZI)V

    .line 1244
    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    .line 1248
    :cond_0
    :goto_0
    return-void

    .line 1245
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 1246
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

    .line 979
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 980
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v0

    .line 981
    .local v0, "isMultipartyCall":Z
    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    .line 982
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 983
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 984
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 985
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f05001f

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 986
    .local v1, "startAnimation":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 988
    .end local v1    # "startAnimation":Landroid/view/animation/Animation;
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 989
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 990
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCallStateLabelForCallState(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "callStateLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 1096
    iget v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOldCallState:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    .line 1097
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    :goto_0
    return-void

    .line 1100
    :cond_0
    iput-object p2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    .line 1101
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->manageCallEndTimeBlink(I)V

    .line 1102
    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    .line 1103
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->removeMessageForBlinkTime()V

    .line 1109
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1110
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1111
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "not update stateLabel for blink call time"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1113
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1115
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1118
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1119
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "not update stateLabel for blink call time"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1121
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCallerInfo()V
    .locals 3

    .prologue
    .line 2142
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

    .line 2143
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 2144
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 2145
    return-void

    .line 2142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateContainerLayout()V
    .locals 12

    .prologue
    .line 1475
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getContainerHeight()I

    move-result v0

    .line 1477
    .local v0, "containerHeight":I
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 1478
    .local v6, "primaryLp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 1479
    .local v9, "secondaryLp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1480
    .local v4, "mergeLp":Landroid/widget/RelativeLayout$LayoutParams;
    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1481
    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1482
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1484
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryContainer:Landroid/view/View;

    invoke-virtual {v11, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1485
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryContainer:Landroid/view/View;

    invoke-virtual {v11, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1486
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    invoke-virtual {v11, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1488
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPhotoMargin(I)I

    move-result v5

    .line 1489
    .local v5, "photoTopMargin":I
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1490
    .local v7, "primaryPhotoLp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1491
    .local v10, "secondaryPhotoLp":Landroid/widget/RelativeLayout$LayoutParams;
    iput v5, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1492
    iput v5, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1493
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v11, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1494
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1496
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPrimaryContainerWidth()I

    move-result v1

    .line 1497
    .local v1, "infoWidth":I
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1498
    .local v2, "mPrimaryLp":Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1499
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v11, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1501
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getSecondaryContainerWidth()I

    move-result v8

    .line 1502
    .local v8, "secondaryContainerWidth":I
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1503
    .local v3, "mSecondaryLp":Landroid/widget/RelativeLayout$LayoutParams;
    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1504
    iget-object v11, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v11, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1505
    return-void
.end method

.method private updateEndImage()V
    .locals 10

    .prologue
    const v9, 0x7f0201e7

    const/4 v8, 0x0

    .line 1016
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1017
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 1049
    :cond_0
    :goto_0
    return-void

    .line 1019
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

    .line 1020
    .local v3, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v3, :cond_0

    .line 1022
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a035e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    .line 1023
    .local v1, "diameter":I
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1025
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v6}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v5

    .line 1026
    .local v5, "primaryCall":Lcom/android/incallui/Call;
    const/4 v4, 0x0

    .line 1027
    .local v4, "image":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1028
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020399

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1029
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v1}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1030
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1031
    :cond_3
    iget-boolean v6, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-nez v6, :cond_0

    .line 1032
    const/4 v2, 0x0

    .line 1033
    .local v2, "displayName":Ljava/lang/String;
    iget-boolean v6, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v6, :cond_4

    .line 1034
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

    .line 1035
    iget-object v6, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 1038
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1039
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 1040
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0151

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1041
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1044
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02039b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1045
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v1}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1046
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private updateManageButton(Lcom/android/incallui/Call;)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v3, 0x1

    .line 1508
    const/16 v4, 0x80

    invoke-virtual {p1, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    .line 1509
    .local v0, "canManageConference":Z
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    .line 1510
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

    .line 1512
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v4, :cond_6

    .line 1513
    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    move v2, v3

    .line 1515
    .local v2, "showManageButton":Z
    :goto_0
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1516
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/TelecomAdapter;->getParticipantsCount()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 1517
    const/4 v2, 0x1

    .line 1519
    :cond_0
    invoke-static {p1}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1520
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getPreviousParentId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1521
    :cond_1
    const/4 v2, 0x1

    .line 1523
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1525
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->hideConferenceCallManager()V

    .line 1527
    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_5

    .line 1528
    :cond_4
    const/4 v2, 0x0

    .line 1530
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateManageAndHideConferenceCallButton(Z)V

    .line 1532
    .end local v2    # "showManageButton":Z
    :cond_6
    return-void

    .line 1513
    :cond_7
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateMergeCallButton(Lcom/android/incallui/Call;)V
    .locals 7
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v6, 0x1

    .line 1356
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallList;->getBgCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v2

    .line 1358
    .local v2, "secondaryCall":Lcom/android/incallui/Call;
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    .line 1359
    .local v1, "canMerge":Z
    const-string v3, "support_merge_call"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1360
    invoke-static {}, Lcom/android/incallui/InCallUIConfig;->isSEATELSIM()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1361
    :cond_0
    const-string v3, "MultiPartyCallCardFragment"

    const-string v4, "updateMultipartyCallButtons Not support merge"

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1362
    const/4 v1, 0x0

    .line 1365
    :cond_1
    const-string v3, "ims_only_conf_initiator_can_merge"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1366
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 1367
    .local v0, "callList":Lcom/android/incallui/CallList;
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasImsConferenceParticipant()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1368
    const-string v3, "MultiPartyCallCardFragment"

    const-string v4, "updateMultipartyCallButtons Not support merge, has IMS conference participant"

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1369
    const/4 v1, 0x0

    .line 1373
    .end local v0    # "callList":Lcom/android/incallui/CallList;
    :cond_2
    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1374
    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVolteConference(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1375
    const-string v3, "MultiPartyCallCardFragment"

    const-string v4, "Initiator is not allowed to merge another conference call to the N-way call "

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1376
    const/4 v1, 0x0

    .line 1378
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtySetting()I

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isOtherCallTTYvalue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1379
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

    .line 1380
    const/4 v1, 0x0

    .line 1385
    :cond_5
    const-string v3, "show_conference_maximum_participants_toast"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v1, :cond_6

    if-eqz v2, :cond_6

    .line 1386
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isMaxParticipants()Z

    move-result v1

    .line 1389
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

    .line 1390
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v3, :cond_7

    .line 1391
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v1, :cond_8

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1392
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1394
    :cond_7
    return-void

    .line 1391
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

    .line 1325
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1343
    :cond_0
    :goto_0
    return-void

    .line 1327
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1328
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1329
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1330
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1331
    .local v2, "primaryPhotoAlpha":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a035e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0359

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float v0, v3, v4

    .line 1332
    .local v0, "distance":F
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v8, [F

    neg-float v6, v0

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1333
    .local v1, "primaryInfoMover":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1334
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1335
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1337
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

    .line 1338
    .restart local v2    # "primaryPhotoAlpha":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1339
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1340
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private updatePrimaryForMtConference(Lcom/android/incallui/Call;Z)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "mtConference"    # Z

    .prologue
    .line 2597
    if-nez p1, :cond_1

    .line 2605
    :cond_0
    :goto_0
    return-void

    .line 2598
    :cond_1
    if-eqz p2, :cond_2

    .line 2599
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 2601
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

    .line 2602
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    .line 2603
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
    .line 2608
    if-nez p1, :cond_1

    .line 2616
    :cond_0
    :goto_0
    return-void

    .line 2609
    :cond_1
    if-eqz p2, :cond_2

    .line 2610
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 2612
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

    .line 2613
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    .line 2614
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

    .line 1346
    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    .line 1347
    .local v0, "canSwap":Z
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 1348
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1349
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1350
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1351
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1353
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 1348
    goto :goto_0
.end method


# virtual methods
.method public animateForHideManager(Z)V
    .locals 23
    .param p1, "showPhoto"    # Z

    .prologue
    .line 2051
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isAdded()Z

    move-result v18

    if-nez v18, :cond_0

    .line 2052
    const-string v18, "MultiPartyCallCardFragment"

    const-string v19, "animateForHideManager : fragment is detached from activity, return"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2139
    :goto_0
    return-void

    .line 2056
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 2057
    const-string v18, "MultiPartyCallCardFragment"

    const-string v19, "animateForHideManager...isRunning"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2060
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 2061
    const-string v18, "MultiPartyCallCardFragment"

    const-string v19, "animateForHideManager...cancel manage animation"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/AnimatorSet;->end()V

    .line 2064
    :cond_2
    const-string v18, "MultiPartyCallCardFragment"

    const-string v19, "animateForHideManager..."

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2066
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v7

    .line 2067
    .local v7, "isMultipartyCall":Z
    new-instance v18, Landroid/animation/AnimatorSet;

    invoke-direct/range {v18 .. v18}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2068
    if-eqz p1, :cond_8

    .line 2069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 2070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    move-object/from16 v18, v0

    sget-object v19, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    aput v22, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 2071
    .local v12, "primaryPhotoAlpha":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2073
    .end local v12    # "primaryPhotoAlpha":Landroid/animation/ObjectAnimator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 2074
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v4

    .line 2075
    .local v4, "call":Lcom/android/incallui/Call;
    if-eqz v4, :cond_7

    .line 2076
    const/16 v18, 0x80

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v17

    .line 2077
    .local v17, "showManageButton":Z
    const-string v18, "vzw_volte_ui"

    invoke-static/range {v18 .. v18}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 2078
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 2079
    const-string v18, "MultiPartyCallCardFragment"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "animateForHideManager childCalls Size:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2080
    const/16 v17, 0x0

    .line 2082
    :cond_4
    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 2083
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_5

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getPreviousParentId()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_6

    .line 2084
    :cond_5
    const/16 v17, 0x1

    .line 2087
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateManageAndHideConferenceCallButton(Z)V

    .line 2091
    .end local v4    # "call":Lcom/android/incallui/Call;
    .end local v17    # "showManageButton":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 2092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setAlpha(F)V

    .line 2094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    move-object/from16 v18, v0

    sget-object v19, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    aput v22, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 2095
    .local v9, "manageButtonAlpha":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2098
    .end local v9    # "manageButtonAlpha":Landroid/animation/ObjectAnimator;
    :cond_8
    const-string v18, "vzw_volte_ui"

    invoke-static/range {v18 .. v18}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 2099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 2100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    sget-object v19, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    aput v22, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 2101
    .local v10, "primaryConfBanner":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2103
    .end local v10    # "primaryConfBanner":Landroid/animation/ObjectAnimator;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 2104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    sget-object v19, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    aput v22, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 2105
    .local v13, "secondaryConfBanner":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2108
    .end local v13    # "secondaryConfBanner":Landroid/animation/ObjectAnimator;
    :cond_a
    const-string v18, "enable_conference_info_banner"

    invoke-static/range {v18 .. v18}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 2109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 2110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    sget-object v19, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    aput v22, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 2111
    .local v5, "confBanner":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2114
    .end local v5    # "confBanner":Landroid/animation/ObjectAnimator;
    :cond_b
    if-eqz v7, :cond_d

    .line 2115
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showSecondaryContainer(Z)V

    .line 2116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    move-object/from16 v18, v0

    sget-object v19, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    aput v22, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 2117
    .local v14, "secondaryContainer":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    move-object/from16 v18, v0

    sget-object v19, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    aput v22, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 2118
    .local v15, "secondaryPanel":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    move-object/from16 v18, v0

    sget-object v19, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x3ecccccd    # 0.4f

    aput v22, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 2119
    .local v16, "secondaryPhoto":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2121
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 2122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    const/16 v19, 0xff

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2123
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    const/16 v19, 0xff

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2126
    .end local v14    # "secondaryContainer":Landroid/animation/ObjectAnimator;
    .end local v15    # "secondaryPanel":Landroid/animation/ObjectAnimator;
    .end local v16    # "secondaryPhoto":Landroid/animation/ObjectAnimator;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    .line 2127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    move-object/from16 v18, v0

    sget-object v19, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v22, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 2128
    .local v11, "primaryInfoMover":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2130
    .end local v11    # "primaryInfoMover":Landroid/animation/ObjectAnimator;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mDivideLine:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    .line 2131
    if-nez v7, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v18

    if-eqz v18, :cond_11

    :cond_f
    const/4 v8, 0x1

    .line 2132
    .local v8, "isShowLine":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mDivideLine:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v8, :cond_12

    const/16 v18, 0x0

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2135
    .end local v8    # "isShowLine":Z
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d003e

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 2136
    .local v6, "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    new-instance v19, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct/range {v19 .. v19}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual/range {v18 .. v19}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    int-to-long v0, v6

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 2131
    .end local v6    # "duration":I
    :cond_11
    const/4 v8, 0x0

    goto :goto_1

    .line 2132
    .restart local v8    # "isShowLine":Z
    :cond_12
    const/16 v18, 0x4

    goto :goto_2
.end method

.method protected animateForManager()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1982
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1983
    const-string v8, "MultiPartyCallCardFragment"

    const-string v9, "animateForManager...isRunning"

    invoke-static {v8, v9, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2047
    :cond_0
    :goto_0
    return-void

    .line 1986
    :cond_1
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1987
    const-string v8, "MultiPartyCallCardFragment"

    const-string v9, "animateForManager...cancel hide manage animation"

    invoke-static {v8, v9, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1988
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->end()V

    .line 1990
    :cond_2
    const-string v8, "MultiPartyCallCardFragment"

    const-string v9, "animateForManager..."

    invoke-static {v8, v9, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1991
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1993
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    if-eqz v8, :cond_3

    .line 1994
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1995
    .local v2, "manageButtonAlpha":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1997
    .end local v2    # "manageButtonAlpha":Landroid/animation/ObjectAnimator;
    :cond_3
    const-string v8, "vzw_volte_ui"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1998
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    .line 1999
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2000
    .local v3, "primaryConfBanner":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2002
    .end local v3    # "primaryConfBanner":Landroid/animation/ObjectAnimator;
    :cond_4
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    if-eqz v8, :cond_5

    .line 2003
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2004
    .local v4, "secondaryConfBanner":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2007
    .end local v4    # "secondaryConfBanner":Landroid/animation/ObjectAnimator;
    :cond_5
    const-string v8, "enable_conference_info_banner"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2008
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    if-eqz v8, :cond_6

    .line 2009
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2010
    .local v0, "confBanner":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2013
    .end local v0    # "confBanner":Landroid/animation/ObjectAnimator;
    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2014
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 2015
    .local v5, "secondaryContainer":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 2016
    .local v6, "secondaryPanel":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 2017
    .local v7, "secondaryPhoto":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2019
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2020
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2021
    :cond_7
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2024
    .end local v5    # "secondaryContainer":Landroid/animation/ObjectAnimator;
    .end local v6    # "secondaryPanel":Landroid/animation/ObjectAnimator;
    .end local v7    # "secondaryPhoto":Landroid/animation/ObjectAnimator;
    :cond_8
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mDivideLine:Landroid/view/View;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mDivideLine:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2026
    :cond_9
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v9}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2027
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d003d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2028
    .local v1, "duration":I
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v10, v1

    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v8

    new-instance v9, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$4;

    invoke-direct {v9, p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$4;-><init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2041
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 2042
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showConferenceCallManager()V

    .line 2044
    const-string v8, "support_mobile_keyboard"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2045
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/android/incallui/InCallPresenter;->addMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    goto/16 :goto_0
.end method

.method protected animateForMerge()V
    .locals 14

    .prologue
    .line 1883
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1884
    const-string v8, "MultiPartyCallCardFragment"

    const-string v9, "animateForMerge...isRunning"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1974
    :goto_0
    return-void

    .line 1887
    :cond_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceToast:Z

    .line 1888
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerFgCall:Lcom/android/incallui/Call;

    .line 1889
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/incallui/CallList;->getBgCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBannerBgCall:Lcom/android/incallui/Call;

    .line 1890
    const-string v8, "enable_conference_info_banner"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1891
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v8}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v3

    .line 1892
    .local v3, "primaryCall":Lcom/android/incallui/Call;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v8}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v5

    .line 1896
    .local v5, "secondaryCall":Lcom/android/incallui/Call;
    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupCount(Lcom/android/incallui/Call;)I

    move-result v8

    const/4 v9, 0x5

    if-ge v8, v9, :cond_2

    :cond_1
    if-eqz v5, :cond_d

    .line 1897
    invoke-direct {p0, v5}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupCount(Lcom/android/incallui/Call;)I

    move-result v8

    const/4 v9, 0x5

    if-lt v8, v9, :cond_d

    .line 1898
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBanner:Z

    .line 1899
    const-string v8, "MultiPartyCallCardFragment"

    const-string v9, "animateForMerge, mShowConferenceBanner is false"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1908
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

    .line 1909
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_4

    .line 1910
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    .line 1913
    :cond_4
    const-string v8, "MultiPartyCallCardFragment"

    const-string v9, "animateForMerge..."

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1914
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1916
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v8, :cond_5

    .line 1917
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1918
    .local v4, "primaryInfoAlpha":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1919
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1922
    .end local v4    # "primaryInfoAlpha":Landroid/animation/ObjectAnimator;
    :cond_5
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v8, :cond_6

    .line 1923
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1924
    .local v6, "secondaryInfoAlpha":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1927
    .end local v6    # "secondaryInfoAlpha":Landroid/animation/ObjectAnimator;
    :cond_6
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v8, :cond_7

    .line 1928
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getContainerHeight()I

    move-result v8

    int-to-float v1, v8

    .line 1929
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

    .line 1930
    .local v7, "secondaryPhotoMover":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1933
    .end local v1    # "distance":F
    .end local v7    # "secondaryPhotoMover":Landroid/animation/ObjectAnimator;
    :cond_7
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v8, :cond_8

    .line 1934
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

    .line 1937
    :cond_8
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v8, :cond_9

    .line 1938
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

    .line 1941
    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mergeCallerInfoForAnim()V

    .line 1943
    const-string v8, "vzw_volte_ui"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1944
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1945
    :cond_a
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1948
    :cond_b
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v9}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1949
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0041

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1950
    .local v2, "duration":I
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v10, v2

    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v8

    new-instance v9, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$3;

    invoke-direct {v9, p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$3;-><init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1968
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    .line 1969
    const-string v8, "voice_call_recording"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1970
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    .line 1972
    :cond_c
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 1973
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryCallMoreMenu()V

    goto/16 :goto_0

    .line 1901
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v2    # "duration":I
    .restart local v3    # "primaryCall":Lcom/android/incallui/Call;
    .restart local v5    # "secondaryCall":Lcom/android/incallui/Call;
    :cond_d
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBanner:Z

    .line 1902
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

    .line 1903
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

    .line 1904
    const-string v8, "MultiPartyCallCardFragment"

    const-string v9, "animateForMerge, mShowConferenceBanner is true"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method

.method protected animateForSwap()V
    .locals 18

    .prologue
    .line 1784
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1785
    const-string v13, "MultiPartyCallCardFragment"

    const-string v14, "animateForSwap...isRunning"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1869
    :goto_0
    return-void

    .line 1789
    :cond_0
    const-string v13, "feature_multisim_display_sim_icon"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1790
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

    .line 1791
    .local v2, "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    invoke-interface {v2}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->animateForSwap()V

    goto :goto_1

    .line 1795
    .end local v2    # "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    :cond_1
    const-string v13, "MultiPartyCallCardFragment"

    const-string v14, "animateForSwap..."

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1796
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v12

    .line 1797
    .local v12, "targetCall":Lcom/android/incallui/Call;
    if-eqz v12, :cond_2

    .line 1798
    invoke-virtual {v12}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTargetedCallIdforSwap:Ljava/lang/String;

    .line 1801
    :cond_2
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1802
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d005b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 1803
    .local v5, "duration":I
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getContainerHeight()I

    move-result v13

    int-to-float v4, v13

    .line 1804
    .local v4, "distance":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v13, :cond_3

    .line 1805
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v4, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 1806
    .local v9, "primaryPhotoMover":Landroid/animation/ObjectAnimator;
    int-to-long v14, v5

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1807
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1809
    .end local v9    # "primaryPhotoMover":Landroid/animation/ObjectAnimator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v13, :cond_4

    .line 1810
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

    .line 1811
    .local v11, "secondaryPhotoMover":Landroid/animation/ObjectAnimator;
    int-to-long v14, v5

    invoke-virtual {v11, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1812
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1815
    .end local v11    # "secondaryPhotoMover":Landroid/animation/ObjectAnimator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    .line 1816
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    .line 1817
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->swapCallerInfoForAnim()V

    .line 1818
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d005d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1819
    .local v7, "infoDuration":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d005c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1820
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

    .line 1821
    .local v8, "primaryInfoAlpha":Landroid/animation/ObjectAnimator;
    int-to-long v14, v7

    invoke-virtual {v8, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v13

    int-to-long v14, v6

    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1822
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

    .line 1823
    .local v10, "secondaryInfoAlpha":Landroid/animation/ObjectAnimator;
    int-to-long v14, v7

    invoke-virtual {v10, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v13

    int-to-long v14, v6

    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1824
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1825
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1826
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v14, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v14}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1827
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v14, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;-><init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1859
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    .line 1860
    const-string v13, "vzw_volte_ui"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1861
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    .line 1862
    .local v3, "call":Lcom/android/incallui/Call;
    if-eqz v3, :cond_5

    .line 1863
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/android/incallui/UiAdapter;->updateCallButtons(Lcom/android/incallui/Call;)V

    .line 1866
    .end local v3    # "call":Lcom/android/incallui/Call;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    .line 1867
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryCallMoreMenu()V

    .line 1868
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->removeMultipartyCallButtons()V

    goto/16 :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x1

    .line 1547
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1548
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1549
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1555
    :goto_0
    return v2

    .line 1552
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1553
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1554
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected getConferenceCallManagerShowingState()Z
    .locals 1

    .prologue
    .line 2479
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v0

    return v0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1717
    new-instance v0, Lcom/android/incallui/InCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    .line 1719
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getMenuRes()I
    .locals 1

    .prologue
    .line 362
    const-string v0, "support_folder_single_lcd"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const v0, 0x7f120002

    .line 364
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f120001

    goto :goto_0
.end method

.method protected hideConferenceCallManager()V
    .locals 2

    .prologue
    .line 1320
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1321
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->showConferenceCallManager(Z)V

    .line 1322
    :cond_0
    return-void
.end method

.method protected inflateRecordInfo()V
    .locals 2

    .prologue
    .line 2298
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 2299
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    .line 2300
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 2301
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 2302
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100253

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mRecordIcon:Landroid/widget/ImageView;

    .line 2303
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100254

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mRecordText:Landroid/widget/TextView;

    .line 2304
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100255

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    .line 2307
    :cond_0
    return-void
.end method

.method public isManageConferenceVisible()Z
    .locals 1

    .prologue
    .line 2475
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
    .line 1978
    iget-boolean v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    return v0
.end method

.method public isSwapProcessing()Z
    .locals 1

    .prologue
    .line 2483
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

    .line 1872
    iget-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v2, :cond_1

    .line 1880
    :cond_0
    :goto_0
    return-void

    .line 1874
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 1875
    .local v1, "primaryCall":Lcom/android/incallui/Call;
    invoke-direct {p0, v1, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConfCallDisplayName(Lcom/android/incallui/Call;Z)Ljava/lang/String;

    move-result-object v0

    .line 1876
    .local v0, "confCallName":Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 1877
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 1878
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090241

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 1879
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public needToShowMenu()Z
    .locals 2

    .prologue
    .line 1736
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->needToShowMenu()Z

    move-result v0

    .line 1737
    .local v0, "bShowMenu":Z
    iget-boolean v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v1, :cond_1

    .line 1738
    :cond_0
    const/4 v0, 0x0

    .line 1739
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

    .line 1635
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 1636
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

    .line 1638
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isAnimatorSetRunning()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->hasAnimationMsg()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1639
    :cond_0
    const-string v4, "MultiPartyCallCardFragment"

    const-string v5, "onClick : isAnimatorSetRunning or hasAnimationMsg, skip operation"

    invoke-static {v4, v5, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1703
    :cond_1
    :goto_0
    return-void

    .line 1642
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1643
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1644
    .local v2, "context":Landroid/content/Context;
    sparse-switch v3, :sswitch_data_0

    .line 1700
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 1646
    :sswitch_0
    const-string v4, "att_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1647
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoOneway()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1648
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMergeNotAllowDialog()V

    goto :goto_0

    .line 1650
    :cond_3
    const-string v4, "show_conference_maximum_participants_toast"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isMaxParticipants()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1651
    const-string v4, "MultiPartyCallCardFragment"

    const-string v6, "rechaed maximum participants toast"

    invoke-static {v4, v6, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1652
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    const v6, 0x7f0900d8

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

    .line 1655
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForMerge()V

    .line 1656
    const-string v4, "MPVC"

    const-string v6, "Merge"

    invoke-static {v2, v4, v6}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0903a8

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1660
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForSwap()V

    .line 1661
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->queryForSwappedCall()V

    .line 1662
    const-string v4, "MPVC"

    const-string v6, "Swap"

    invoke-static {v2, v4, v6}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0903f7

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1666
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1667
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->hideConferenceCallManager()V

    .line 1668
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1669
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1670
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->updateCallCardFragment()V

    .line 1672
    :cond_5
    const-string v4, "MPVC"

    const-string v6, "Hide"

    invoke-static {v2, v4, v6}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0903a1

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getChildCount(Lcom/android/incallui/Call;)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1675
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForManager()V

    .line 1676
    const-string v4, "MPVC"

    const-string v6, "Manage"

    invoke-static {v2, v4, v6}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0903a2

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getChildCount(Lcom/android/incallui/Call;)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1681
    :sswitch_3
    if-eqz v0, :cond_7

    invoke-virtual {v0, v8}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1682
    .local v1, "canSwap":Z
    :goto_1
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 1683
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForSwap()V

    goto/16 :goto_0

    .end local v1    # "canSwap":Z
    :cond_7
    move v1, v5

    .line 1681
    goto :goto_1

    .line 1687
    :sswitch_4
    const-string v4, "MultiPartyCallCardFragment"

    const-string v5, "onClick add call menu"

    invoke-static {v4, v5, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1688
    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_addCall(Lcom/android/incallui/Call;)V

    .line 1689
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1690
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->addCallClicked()V

    goto/16 :goto_0

    .line 1694
    :sswitch_5
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 1695
    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_resumeCall(Lcom/android/incallui/Call;)V

    .line 1696
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1644
    :sswitch_data_0
    .sparse-switch
        0x7f100099 -> :sswitch_1
        0x7f10009f -> :sswitch_0
        0x7f1002de -> :sswitch_2
        0x7f1002e8 -> :sswitch_3
        0x7f1002f7 -> :sswitch_5
        0x7f100417 -> :sswitch_4
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2315
    const-string v1, "onConfigurationChanged"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2316
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2318
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDisplaySize()V

    .line 2319
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateEri()V

    .line 2321
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2322
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$5;-><init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2332
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 208
    new-instance v0, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    .line 209
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v0, Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    .line 211
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    .line 213
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;-><init>(Lcom/android/incallui/fragment/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTwoPhoneView:Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    .line 215
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mViewAdapters:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTwoPhoneView:Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 221
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/CallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 222
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

    .line 1612
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onDestroy()V

    .line 1613
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "onDestroy..."

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1615
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->resetAllOfAnimation(Z)V

    .line 1616
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mViewAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1617
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 1621
    const-string v0, "onDestroyView..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1623
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->onDestroyView()V

    .line 1624
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMultiSimView:Lcom/android/incallui/fragment/view/CallCardMultiSimView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->onDestroyView()V

    .line 1626
    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1627
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    .line 1630
    :cond_0
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onDestroyView()V

    .line 1631
    return-void
.end method

.method public onMobileKeyboardChanged()V
    .locals 2

    .prologue
    .line 2336
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2337
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$6;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$6;-><init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2347
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1597
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1598
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onPause()V

    .line 1599
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "onPause..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1601
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0, p0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->onPause(Lcom/android/incallui/fragment/CallCardFragment;)V

    .line 1602
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 1571
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1572
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.samsung.android.incalllui.rcsshareui.action.ACTION_MENU_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1573
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1574
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

    .line 1575
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    .line 1577
    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 1578
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    .line 1579
    .local v2, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 1580
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallActivity;->updateStatusBarColor(I)V

    .line 1581
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    .line 1582
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    .line 1585
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

    .line 1586
    .local v1, "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    invoke-interface {v1}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->onResume()V

    goto :goto_0

    .line 1588
    .end local v1    # "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateCallCardIndicatorArea()V

    .line 1589
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDisplaySize()V

    .line 1591
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onResume()V

    .line 1592
    const-string v4, "MultiPartyCallCardFragment"

    const-string v5, "onResume..."

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1593
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 1606
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onStop()V

    .line 1607
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "onStop..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1608
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 227
    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/CallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 229
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    iput-boolean v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isVZWConfInitiated:Z

    .line 233
    :cond_0
    const v2, 0x7f100246

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    .line 234
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateCallCardIndicatorArea()V

    .line 235
    const v2, 0x7f100289

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mNavigationBarArea:Landroid/view/View;

    .line 236
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateNavigationBar()V

    .line 238
    const v2, 0x7f1002e2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryContainer:Landroid/view/View;

    .line 239
    const v2, 0x7f1002e3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    .line 240
    const v2, 0x7f100198

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    .line 241
    const v2, 0x7f1000e9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    .line 242
    const v2, 0x7f10010e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    .line 243
    const v2, 0x7f1001da

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    .line 244
    const v2, 0x7f1000a5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    .line 245
    const v2, 0x7f1001db

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    .line 246
    const v2, 0x7f100197

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    .line 247
    const v2, 0x7f100199

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    .line 248
    const v2, 0x7f10025f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdForwardSlash:Landroid/widget/TextView;

    .line 249
    const v2, 0x7f1002db

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mOnholdText:Landroid/widget/TextView;

    .line 250
    const v2, 0x7f1000a2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    .line 251
    const v2, 0x7f10018c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 252
    const v2, 0x7f1002dd

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    .line 253
    const v2, 0x7f1001d7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateContainer:Landroid/view/View;

    .line 254
    const v2, 0x7f100193

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    .line 256
    const v2, 0x7f1002e8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryContainer:Landroid/view/View;

    .line 257
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryContainer:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    :cond_1
    const v2, 0x7f1002e9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    .line 261
    const v2, 0x7f1002ed

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    .line 262
    const v2, 0x7f1002df

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    .line 263
    const v2, 0x7f1002e0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    .line 264
    const v2, 0x7f1002e1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    .line 265
    const v2, 0x7f1002f2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    .line 267
    const v2, 0x7f10009f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    .line 268
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    const v2, 0x7f100099

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    .line 270
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    const v2, 0x7f1002de

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    .line 272
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    const v2, 0x7f1002e7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mDivideLine:Landroid/view/View;

    .line 276
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 278
    const-string v2, "no_receiver_in_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 279
    const v2, 0x7f1002f6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    .line 280
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 281
    const v2, 0x7f1002f7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    .line 282
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    :cond_2
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 287
    const v2, 0x7f1002ef

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTimeLayout:Landroid/view/View;

    .line 288
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    if-nez v2, :cond_3

    .line 289
    const v2, 0x7f1002f0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    .line 291
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_4

    .line 292
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 293
    const v2, 0x7f100422

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    .line 294
    const v2, 0x7f100423

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    .line 297
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-nez v2, :cond_5

    .line 298
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1002f5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    .line 300
    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-eqz v2, :cond_6

    .line 301
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 302
    const v2, 0x7f1002d6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    .line 306
    :cond_6
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 307
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v1

    .line 308
    .local v1, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v1, :cond_7

    .line 309
    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    .line 313
    .end local v1    # "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    :cond_7
    const-string v2, "jansky_info_for_tmo"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 314
    const v2, 0x7f1002e4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineStub:Landroid/view/ViewStub;

    .line 315
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_8

    .line 316
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 318
    :cond_8
    const v2, 0x7f1002ea

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineStub:Landroid/view/ViewStub;

    .line 319
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_9

    .line 320
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 323
    :cond_9
    const v2, 0x7f100346

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineName:Landroid/widget/TextView;

    .line 324
    const v2, 0x7f100345

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineIcon:Landroid/widget/ImageView;

    .line 325
    const v2, 0x7f100350

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineName:Landroid/widget/TextView;

    .line 326
    const v2, 0x7f10034f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineIcon:Landroid/widget/ImageView;

    .line 329
    :cond_a
    const-string v2, "enable_conference_info_banner"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 330
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-nez v2, :cond_b

    .line 331
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1002f4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    .line 333
    :cond_b
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-eqz v2, :cond_c

    .line 334
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 335
    const v2, 0x7f10025a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    .line 337
    :cond_c
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 338
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfBanner:Landroid/view/ViewStub;

    if-nez v2, :cond_d

    .line 339
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1002e6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfBanner:Landroid/view/ViewStub;

    .line 341
    :cond_d
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfBanner:Landroid/view/ViewStub;

    if-eqz v2, :cond_e

    .line 342
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfBanner:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 343
    const v2, 0x7f100258

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    .line 345
    :cond_e
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfBanner:Landroid/view/ViewStub;

    if-nez v2, :cond_f

    .line 346
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1002f3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfBanner:Landroid/view/ViewStub;

    .line 348
    :cond_f
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfBanner:Landroid/view/ViewStub;

    if-eqz v2, :cond_10

    .line 349
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfBanner:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 350
    const v2, 0x7f100259

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    .line 353
    :cond_10
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showConferenceCallBannerForVZW()V

    .line 355
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

    .line 356
    .local v0, "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    invoke-interface {v0, p1}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->onViewCreated(Landroid/view/View;)V

    goto :goto_0

    .line 358
    .end local v0    # "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    :cond_12
    return-void
.end method

.method protected removeMultipartyCallButtons()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1535
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1538
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1539
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1541
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 1542
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1544
    :cond_2
    return-void
.end method

.method protected resetAllOfAnimation(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 2220
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v0, :cond_1

    .line 2253
    :cond_0
    :goto_0
    return-void

    .line 2222
    :cond_1
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "resetAllOfAnimation..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2223
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2224
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2232
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->endAllOfAnimatorSet()V

    .line 2233
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    .line 2235
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2236
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2237
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2239
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 2240
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2242
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 2243
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 2244
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2245
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2247
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 2248
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2249
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2251
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 2252
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

    .line 2171
    const-string v1, "MultiPartyCallCardFragment"

    const-string v2, "resetMergeAnimation..."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2173
    iput-boolean v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    .line 2174
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateCallerInfo()V

    .line 2176
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2177
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2178
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2183
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    .line 2184
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v1, :cond_1

    .line 2185
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->updateIcon()V

    .line 2187
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryCallMoreMenu()V

    .line 2189
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2190
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2191
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2192
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 2193
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 2194
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 2195
    :cond_7
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showSecondaryContainer(Z)V

    .line 2197
    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2198
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    .line 2199
    .local v0, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v0, :cond_8

    .line 2200
    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    .line 2203
    .end local v0    # "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    :cond_8
    return-void

    .line 2180
    :cond_9
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected resetSplitAnimation()V
    .locals 3

    .prologue
    .line 2207
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "resetSplitAnimation..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2208
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    .line 2209
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2210
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2211
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 2212
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2214
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->hideConferenceCallManager()V

    .line 2215
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForManager()V

    .line 2217
    :cond_3
    return-void
.end method

.method protected resetSwapAnimation()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 2149
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "resetSwapAnimation..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    .line 2152
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateCallerInfo()V

    .line 2153
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    .line 2154
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->swapCallerInfoForAnim()V

    .line 2155
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryCallMoreMenu()V

    .line 2156
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v0, :cond_0

    .line 2157
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->updateIcon()V

    .line 2160
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2161
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2162
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2163
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2164
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2165
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2166
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2167
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
    .line 855
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

    .line 857
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v18

    .line 858
    .local v18, "isMultipartyCall":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v14

    .line 859
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

    .line 860
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

    .line 862
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    .line 863
    const-string v4, "MultiPartyCallCardFragment"

    const-string v5, "setCallState: current state is ONHOLD and merge is processing"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 976
    :goto_0
    return-void

    .line 867
    :cond_0
    const-string v4, "support_smart_call"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 868
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 869
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

    .line 870
    .local v16, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v16, :cond_2

    .line 871
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    move-object/from16 v22, v0

    .line 872
    .local v22, "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    if-eqz v22, :cond_2

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getSmartCallLogInfoUpdated()Z

    move-result v4

    if-nez v4, :cond_2

    .line 873
    const/4 v4, 0x1

    invoke-virtual {v14, v4}, Lcom/android/incallui/Call;->setSmartCallLogInfoUpdated(Z)V

    .line 874
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

    .line 887
    .end local v16    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v22    # "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    if-eqz v14, :cond_3

    .line 888
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_f

    const v4, 0x3ecccccd    # 0.4f

    :goto_9
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 891
    :cond_3
    if-eqz p9, :cond_5

    if-nez v18, :cond_5

    const/16 v4, 0xb

    move/from16 v0, p1

    if-ne v0, v4, :cond_4

    if-eqz v14, :cond_4

    .line 892
    invoke-virtual {v14}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_5

    .line 893
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    .line 896
    :cond_5
    const-string v4, "enable_conference_info_banner"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 897
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showConferenceCallBannerForVZW()V

    .line 902
    :goto_a
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isOnlyExistDisconnectConferenceCall()Z

    move-result v4

    if-nez v4, :cond_11

    .line 903
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 904
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->hideCallButtonsForManager(Z)V

    .line 906
    :cond_6
    const-string v4, "MultiPartyCallCardFragment"

    const-string v5, "setCallState: current state is not multi-party"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 874
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

    .line 888
    .end local v16    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v22    # "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_f
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_9

    .line 899
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMergeComplete(Lcom/android/incallui/Call;)V

    goto :goto_a

    .line 910
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-eqz v4, :cond_1c

    .line 911
    const-string v4, "MultiPartyCallCardFragment"

    const-string v5, "setCallState: swap is processing"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 916
    :cond_12
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getCallStateLabelFromState(ILandroid/telecom/DisconnectCause;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 917
    .local v15, "callStateLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateCallStateLabelForCallState(ILjava/lang/CharSequence;)V

    .line 918
    const/16 v4, 0x8

    move/from16 v0, p1

    if-ne v0, v4, :cond_1d

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showOnHoldText(Z)V

    .line 919
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateDisplayChildCallChanged()V

    .line 920
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    .line 921
    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryCallMoreMenu(I)V

    .line 922
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateContainerLayout()V

    .line 923
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForEndCall(I)V

    .line 924
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateEri()V

    .line 925
    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateTextColor(I)V

    .line 926
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateJanskyInfo()V

    .line 927
    const-string v4, "no_receiver_in_call"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 928
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->arrangeBelowButtonLayout(I)V

    .line 931
    :cond_13
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 932
    if-eqz v14, :cond_14

    .line 933
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMessageVoiceFromvideo(Lcom/android/incallui/Call;)V

    .line 935
    :cond_14
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isVZWConfInitiated:Z

    .line 939
    :cond_15
    if-eqz v14, :cond_1e

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1e

    .line 940
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

    .line 941
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

    .line 942
    .local v21, "showSecondary":Z
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showSecondaryContainer(Z)V

    .line 943
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mDivideLine:Landroid/view/View;

    if-eqz v4, :cond_17

    .line 944
    if-nez v21, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_16
    const/16 v19, 0x1

    .line 945
    .local v19, "isShowLine":Z
    :goto_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mDivideLine:Landroid/view/View;

    if-eqz v19, :cond_21

    const/4 v4, 0x0

    :goto_10
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 949
    .end local v19    # "isShowLine":Z
    :cond_17
    const/16 v20, 0x1

    .line 950
    .local v20, "resetAnimations":Z
    const-string v4, "ims_voice_conference_vzw"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 951
    invoke-static {v14}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 952
    const/16 v20, 0x0

    .line 958
    :cond_18
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 959
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 960
    const/16 v20, 0x0

    .line 963
    :cond_19
    if-eqz v20, :cond_1a

    .line 964
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->resetAllOfAnimation(Z)V

    .line 967
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

    .line 968
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->hideConferenceCallManager()V

    .line 969
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    goto/16 :goto_0

    .line 912
    .end local v15    # "callStateLabel":Ljava/lang/CharSequence;
    .end local v17    # "isGSMMultiActiveCall":Z
    .end local v20    # "resetAnimations":Z
    .end local v21    # "showSecondary":Z
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v4, :cond_12

    .line 913
    const-string v4, "MultiPartyCallCardFragment"

    const-string v5, "setCallState: merge is processing"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_b

    .line 918
    .restart local v15    # "callStateLabel":Ljava/lang/CharSequence;
    :cond_1d
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 940
    :cond_1e
    const/16 v17, 0x0

    goto/16 :goto_d

    .line 941
    .restart local v17    # "isGSMMultiActiveCall":Z
    :cond_1f
    const/16 v21, 0x0

    goto/16 :goto_e

    .line 944
    .restart local v21    # "showSecondary":Z
    :cond_20
    const/16 v19, 0x0

    goto :goto_f

    .line 945
    .restart local v19    # "isShowLine":Z
    :cond_21
    const/4 v4, 0x4

    goto :goto_10

    .line 972
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

    .line 973
    .local v13, "adapter":Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
    move/from16 v0, p1

    invoke-interface {v13, v0}, Lcom/android/incallui/fragment/view/ICallCardViewAdapter;->setCallState(I)V

    goto :goto_11

    .line 975
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
    .line 642
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

    .line 644
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    .line 646
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

    .line 647
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x68

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 650
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 651
    const-string v13, "MultiPartyCallCardFragment"

    const-string v16, "setPrimary: current state is not multi-party"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v13, v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 761
    :cond_1
    :goto_0
    return-void

    .line 655
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-eqz v13, :cond_e

    .line 656
    const-string v13, "MultiPartyCallCardFragment"

    const-string v16, "setPrimary: swap is processing"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v13, v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 662
    :cond_3
    const/4 v10, 0x0

    .line 663
    .local v10, "label":Ljava/lang/String;
    const/4 v11, 0x0

    .line 664
    .local v11, "photo":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    .line 665
    .local v8, "isPersonalPhotoAvailable":Z
    const-wide/16 v14, 0x0

    .line 667
    .local v14, "userType":J
    if-eqz p6, :cond_4

    .line 668
    move-object/from16 v0, p6

    iget-object v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 669
    move-object/from16 v0, p6

    iget-object v11, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 670
    move-object/from16 v0, p6

    iget-boolean v8, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    .line 671
    move-object/from16 v0, p6

    iget-wide v14, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    .line 674
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v13

    check-cast v13, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v13}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v5

    .line 675
    .local v5, "call":Lcom/android/incallui/Call;
    const/4 v9, 0x0

    .line 676
    .local v9, "isSrvccConferenceCall":Z
    if-eqz v5, :cond_5

    .line 677
    invoke-virtual {v5}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/util/CallTypeUtils;->isSrvccConference(Ljava/lang/String;)Z

    move-result v9

    .line 679
    :cond_5
    if-nez p4, :cond_6

    if-eqz v9, :cond_10

    .line 680
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConfCallDisplayName(Lcom/android/incallui/Call;Z)Ljava/lang/String;

    move-result-object p2

    .line 681
    const/16 p1, 0x0

    .line 682
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v7

    .line 683
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

    .line 684
    if-eqz v9, :cond_f

    .line 685
    const/4 v10, 0x0

    .line 704
    .end local v7    # "countString":Ljava/lang/String;
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 705
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    .line 707
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v13, :cond_8

    .line 708
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 709
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 715
    :cond_8
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 716
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    .line 719
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 720
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    .line 722
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v8}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 723
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setProfileIcon(J)V

    .line 724
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDisplaySize()V

    .line 726
    const-string v13, "tablet_device"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->needToShowVolumeButton()Z

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showVolumeButton(Z)V

    .line 731
    :cond_9
    const/4 v12, 0x1

    .line 732
    .local v12, "resetAnimations":Z
    const-string v13, "ims_voice_conference_vzw"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 733
    invoke-static {v5}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 734
    const/4 v12, 0x0

    .line 740
    :cond_a
    const-string v13, "vzw_volte_ui"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 741
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 742
    const/4 v12, 0x0

    .line 745
    :cond_b
    if-eqz v12, :cond_c

    .line 746
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->resetAllOfAnimation(Z)V

    .line 749
    :cond_c
    invoke-static {v5}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 750
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

    .line 751
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v13

    if-nez v13, :cond_d

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForManager()V

    .line 754
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    goto/16 :goto_0

    .line 657
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

    .line 658
    const-string v13, "MultiPartyCallCardFragment"

    const-string v16, "setPrimary: merge is processing"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v13, v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 687
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

    .line 689
    .end local v7    # "countString":Ljava/lang/String;
    :cond_10
    if-eqz v5, :cond_7

    if-eqz p6, :cond_7

    move-object/from16 v0, p6

    iget-boolean v13, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v13, :cond_7

    .line 691
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v13

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v6

    .line 692
    .local v6, "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    if-eqz v6, :cond_7

    .line 693
    iget-object v13, v6, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_11

    .line 694
    iget-object v0, v6, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    move-object/from16 p2, v0

    .line 696
    :cond_11
    iget-object v13, v6, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_7

    .line 697
    iget-object v11, v6, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    .line 698
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 711
    .end local v6    # "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 758
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

    .line 759
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

    .line 1148
    if-eqz p1, :cond_2

    .line 1149
    iput-object p2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    .line 1150
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1151
    .local v0, "call":Lcom/android/incallui/Call;
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1153
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1154
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1155
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1158
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1159
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getCallTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setTTS(JLandroid/view/View;)V

    .line 1165
    .end local v0    # "call":Lcom/android/incallui/Call;
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1166
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, p1, p2}, Lcom/android/incallui/InCallActivity;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    .line 1168
    :cond_1
    return-void

    .line 1163
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setPrimaryCallMoreMenu()V
    .locals 4

    .prologue
    .line 1251
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1252
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1253
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

    .line 1254
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryCallMoreMenu(I)V

    .line 1256
    :cond_0
    return-void
.end method

.method protected setPrimaryCallMoreMenu(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1259
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->needToShowMenu()Z

    move-result v0

    .line 1260
    .local v0, "needToShowMenu":Z
    iget-boolean v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v1, :cond_1

    .line 1261
    :cond_0
    const/4 v0, 0x0

    .line 1263
    :cond_1
    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    const/16 v1, 0xa

    if-ne p1, v1, :cond_3

    .line 1264
    :cond_2
    const/4 v0, 0x0

    .line 1266
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMenu(Z)V

    .line 1267
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1268
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallActivity;->setPrimaryCallMenuForDialpad(Z)V

    .line 1270
    :cond_4
    return-void
.end method

.method public declared-synchronized setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 12
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isPersonalPhotoAvailable"    # Z

    .prologue
    const/4 v8, 0x0

    .line 399
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

    .line 400
    .local v1, "call":Lcom/android/incallui/Call;
    if-nez v1, :cond_1

    .line 466
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 402
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 403
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_3

    .line 404
    if-eqz p2, :cond_2

    move-object v8, p1

    :cond_2
    invoke-virtual {v0, v8}, Lcom/android/incallui/InCallActivity;->updateGradientColor(Landroid/graphics/drawable/Drawable;)V

    .line 407
    :cond_3
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    .line 408
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a035e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v2, v8

    .line 414
    .local v2, "diameter":I
    if-nez p2, :cond_5

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v8, :cond_5

    .line 416
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02039a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 417
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1, v2}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 418
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v8, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 419
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPhotoTag(Landroid/view/View;ILjava/lang/Integer;)V

    .line 422
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v8}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v7

    .line 423
    .local v7, "primaryCall":Lcom/android/incallui/Call;
    invoke-virtual {v1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {v7}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 424
    :cond_6
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPhotoTag(Landroid/view/View;I)Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020398

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 428
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1, v2}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 429
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v8, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 430
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPhotoTag(Landroid/view/View;ILjava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 399
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    .end local v1    # "call":Lcom/android/incallui/Call;
    .end local v2    # "diameter":I
    .end local v7    # "primaryCall":Lcom/android/incallui/Call;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 431
    .restart local v0    # "activity":Lcom/android/incallui/InCallActivity;
    .restart local v1    # "call":Lcom/android/incallui/Call;
    .restart local v2    # "diameter":I
    .restart local v7    # "primaryCall":Lcom/android/incallui/Call;
    :cond_7
    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    .line 432
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    .line 433
    .local v5, "imgHashCode":I
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v9, 0x2

    invoke-direct {p0, v8, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPhotoTag(Landroid/view/View;I)Ljava/lang/Integer;

    move-result-object v6

    .line 434
    .local v6, "photoTag":Ljava/lang/Integer;
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v5, :cond_0

    .line 437
    :cond_8
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v9, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v8, v9, v10}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPhotoTag(Landroid/view/View;ILjava/lang/Integer;)V

    .line 438
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1, v2}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 439
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v8, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 441
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

    .line 442
    .local v4, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    const/4 v3, 0x0

    .line 443
    .local v3, "displayName":Ljava/lang/String;
    if-eqz v4, :cond_a

    iget-boolean v8, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v8, :cond_a

    .line 444
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

    .line 445
    iget-object v8, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 448
    :cond_a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 449
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v8, :cond_b

    .line 450
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    :cond_b
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 453
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 457
    :cond_c
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPhotoTag(Landroid/view/View;I)Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_0

    .line 460
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 461
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1, v2}, Lcom/android/incallui/util/SecOpenThemeUtils;->getContactsDefaultImageShape(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 462
    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v8, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 463
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
    .line 549
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 550
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 554
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
    .line 383
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, "nameDirection":I
    if-eqz p2, :cond_1

    .line 391
    const/4 v0, 0x3

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 536
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumberLocator"    # Ljava/lang/String;

    .prologue
    .line 1282
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
    .line 767
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

    .line 769
    const/4 v5, 0x0

    .line 770
    .local v5, "label":Ljava/lang/String;
    const/4 v7, 0x0

    .line 771
    .local v7, "photo":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 772
    .local v4, "isPersonalPhotoAvailable":Z
    const-wide/16 v10, 0x0

    .line 774
    .local v10, "userType":J
    if-eqz p8, :cond_0

    .line 775
    move-object/from16 v0, p8

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 776
    move-object/from16 v0, p8

    iget-object v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 777
    move-object/from16 v0, p8

    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    .line 778
    move-object/from16 v0, p8

    iget-wide v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    .line 779
    move-object/from16 v0, p8

    iget-boolean v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v9, :cond_3

    .line 780
    move-object/from16 v0, p8

    iget-object v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    .line 781
    move-object/from16 v0, p8

    iget-object v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    .line 788
    :cond_0
    :goto_0
    if-eqz p6, :cond_4

    .line 789
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v9

    check-cast v9, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v9}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v8

    .line 790
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

    .line 791
    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConfCallDisplayName(Lcom/android/incallui/Call;Z)Ljava/lang/String;

    move-result-object p2

    .line 793
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    .line 794
    invoke-direct {p0, v8}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    .line 795
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

    .line 796
    if-eqz v3, :cond_1

    .line 797
    iput-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    .line 813
    .end local v3    # "countString":Ljava/lang/String;
    .end local v8    # "secondaryCall":Lcom/android/incallui/Call;
    :cond_1
    :goto_1
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryName(Ljava/lang/String;Z)V

    .line 814
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    .line 816
    invoke-virtual {p0, v7, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 817
    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryProfileIcon(J)V

    .line 819
    const-string v9, "vzw_volte_ui"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 820
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f090047

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 821
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

    .line 824
    .end local v6    # "onHoldText":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->resetAllOfAnimation(Z)V

    .line 825
    return-void

    .line 783
    :cond_3
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    .line 784
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 799
    :cond_4
    if-eqz p8, :cond_1

    move-object/from16 v0, p8

    iget-boolean v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v9, :cond_1

    .line 801
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v9

    move-object/from16 v0, p8

    iget-object v12, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v2

    .line 802
    .local v2, "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    if-eqz v2, :cond_1

    .line 803
    iget-object v9, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 804
    iget-object v0, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    move-object/from16 p2, v0

    .line 806
    :cond_5
    iget-object v9, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1

    .line 807
    iget-object v7, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    .line 808
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

    .line 1172
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1173
    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v2, :cond_1

    .line 1174
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTimeLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1175
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1176
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCallTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setTTS(JLandroid/view/View;)V

    .line 1178
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1179
    .local v1, "timeText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1180
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

    .line 1181
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1188
    .end local v0    # "onHoldText":Ljava/lang/String;
    .end local v1    # "timeText":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1183
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTimeLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1184
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1185
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public declared-synchronized setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 10
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isPersonalPhotoAvailable"    # Z

    .prologue
    .line 469
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/incallui/CallList;->getBgCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 470
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 530
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 472
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 473
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a035e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v1, v7

    .line 479
    .local v1, "diameter":I
    if-nez p2, :cond_3

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    .line 480
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02039a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 481
    invoke-static {p1, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 482
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v7, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 483
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPhotoTag(Landroid/view/View;ILjava/lang/Integer;)V

    .line 486
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v7}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v6

    .line 487
    .local v6, "secondaryCall":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 488
    :cond_4
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPhotoTag(Landroid/view/View;I)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020398

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 492
    invoke-static {p1, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 493
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v7, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 494
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPhotoTag(Landroid/view/View;ILjava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 469
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "diameter":I
    .end local v6    # "secondaryCall":Lcom/android/incallui/Call;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 495
    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v1    # "diameter":I
    .restart local v6    # "secondaryCall":Lcom/android/incallui/Call;
    :cond_5
    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    .line 496
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 497
    .local v4, "imgHashcode":I
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v8, 0x2

    invoke-direct {p0, v7, v8}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPhotoTag(Landroid/view/View;I)Ljava/lang/Integer;

    move-result-object v5

    .line 498
    .local v5, "photoTag":Ljava/lang/Integer;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v4, :cond_0

    .line 501
    :cond_6
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v8, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPhotoTag(Landroid/view/View;ILjava/lang/Integer;)V

    .line 502
    invoke-static {p1, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 503
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v7, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 505
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

    .line 506
    .local v3, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    const/4 v2, 0x0

    .line 507
    .local v2, "displayName":Ljava/lang/String;
    if-eqz v3, :cond_8

    iget-boolean v7, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v7, :cond_8

    .line 508
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

    .line 509
    iget-object v7, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 512
    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 513
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    if-eqz v7, :cond_9

    .line 514
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 516
    :cond_9
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 517
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 521
    :cond_a
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPhotoTag(Landroid/view/View;I)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02039a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 525
    invoke-static {p1, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 526
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v7, p1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 527
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
    .line 828
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 829
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    :goto_0
    return-void

    .line 831
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    const/4 v0, 0x0

    .line 835
    .local v0, "nameDirection":I
    if-eqz p2, :cond_1

    .line 836
    const/4 v0, 0x3

    .line 838
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 370
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "setVisible - - getView() == null"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 379
    :goto_0
    return-void

    .line 374
    :cond_0
    if-eqz p1, :cond_1

    .line 375
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 377
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
    .line 2310
    invoke-direct {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->showConferenceCallManager()V

    .line 2311
    return-void
.end method

.method public showConferenceStateInfoBanner(ZLjava/lang/String;)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1218
    :cond_0
    :goto_0
    return-void

    .line 1210
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

    .line 1211
    if-eqz p1, :cond_2

    .line 1212
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1214
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    goto :goto_0

    .line 1216
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

    .line 2397
    iget-boolean v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v7, :cond_1

    .line 2436
    :cond_0
    :goto_0
    return-void

    .line 2398
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

    .line 2400
    if-nez p1, :cond_2

    const-string v7, "vzw_volte_ui"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2401
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 2405
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2406
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 2407
    const/16 v7, 0x80

    invoke-virtual {v0, v7}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    .line 2409
    .local v1, "canManageConference":Z
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    .line 2410
    .local v2, "isConference":Z
    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v7, :cond_0

    .line 2411
    if-eqz v2, :cond_a

    if-eqz v1, :cond_a

    move v3, v4

    .line 2412
    .local v3, "showManageButton":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v7

    if-nez v7, :cond_b

    :goto_2
    and-int/2addr v3, v4

    .line 2414
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 2416
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->hideConferenceCallManager()V

    .line 2418
    :cond_3
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2419
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPreviousParentId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2420
    :cond_4
    const/4 v3, 0x1

    .line 2423
    :cond_5
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v7, 0x9

    if-eq v4, v7, :cond_6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v7, 0xa

    if-ne v4, v7, :cond_7

    .line 2424
    :cond_6
    const/4 v3, 0x0

    .line 2426
    :cond_7
    iget-boolean v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isVZWConfInitiated:Z

    if-eqz v4, :cond_8

    .line 2427
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2428
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPrimaryConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2429
    const/4 v3, 0x1

    .line 2430
    :cond_8
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v3, :cond_c

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2431
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    if-eqz v4, :cond_9

    .line 2432
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2434
    :cond_9
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateManageAndHideConferenceCallButton(Z)V

    goto/16 :goto_0

    .end local v3    # "showManageButton":Z
    :cond_a
    move v3, v5

    .line 2411
    goto :goto_1

    .restart local v3    # "showManageButton":Z
    :cond_b
    move v4, v5

    .line 2412
    goto :goto_2

    :cond_c
    move v5, v6

    .line 2430
    goto :goto_3
.end method

.method public showMenu(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 1724
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->showMenu(Z)V

    .line 1725
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1726
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "showMenu : fragment is detached from activity, return"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1732
    :cond_0
    :goto_0
    return-void

    .line 1729
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v0, :cond_0

    .line 1730
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0, p0, p1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->showMenu(Lcom/android/incallui/fragment/CallCardFragment;Z)V

    goto :goto_0
.end method

.method protected showMergeNotAllowDialog()V
    .locals 3

    .prologue
    .line 2619
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2620
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0905aa

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2621
    const v1, 0x7f090046

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$7;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$7;-><init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2626
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 2627
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2628
    return-void
.end method

.method public showModifyStateInfoBanner(ZLjava/lang/String;)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1191
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

    .line 1192
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 1193
    if-eqz p1, :cond_1

    .line 1194
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1196
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1197
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 1205
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1201
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

    .line 1221
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1238
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-nez v0, :cond_3

    .line 1224
    if-eqz p2, :cond_2

    .line 1225
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1226
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1228
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1229
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1232
    :cond_3
    if-eqz p2, :cond_4

    .line 1233
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMtConfText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1235
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

    .line 1128
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_0
    and-int/2addr p1, v2

    .line 1129
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1130
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz p1, :cond_5

    move v2, v4

    :goto_1
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1133
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz p1, :cond_6

    move v2, v4

    :goto_2
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1134
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz p1, :cond_7

    const v2, 0x3ecccccd    # 0.4f

    :goto_3
    invoke-virtual {v6, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1136
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1137
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz p1, :cond_2

    move v5, v4

    :cond_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1138
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1139
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1140
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f090047

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1141
    .local v1, "onHoldText":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    aput-object v6, v5, v4

    aput-object v1, v5, v3

    invoke-static {v2, v5}, Lcom/android/incallui/util/GraphicResourceUtils;->setDescriptionToView(Landroid/view/View;[Ljava/lang/String;)V

    .line 1144
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "onHoldText":Ljava/lang/String;
    :cond_3
    return-void

    :cond_4
    move v2, v4

    .line 1128
    goto :goto_0

    :cond_5
    move v2, v5

    .line 1130
    goto :goto_1

    :cond_6
    move v2, v5

    .line 1133
    goto :goto_2

    .line 1134
    :cond_7
    const/4 v2, 0x0

    goto :goto_3
.end method

.method protected swapCallerInfoForAnim()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1743
    iget-boolean v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-eqz v6, :cond_1

    .line 1781
    :cond_0
    :goto_0
    return-void

    .line 1744
    :cond_1
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    .line 1745
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1746
    :cond_2
    const-string v5, "MultiPartyCallCardFragment"

    const-string v6, "swapCallerInfoForAnim...name is empty"

    invoke-static {v5, v6, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1749
    :cond_3
    const-string v6, "MultiPartyCallCardFragment"

    const-string v7, "swapCallerInfoForAnim..."

    invoke-static {v6, v7, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1750
    iget-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    .line 1751
    .local v2, "secondaryName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    .line 1752
    .local v3, "secondaryNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    .line 1753
    .local v1, "secondaryLabel":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1754
    .local v0, "nameIsNumber":Z
    if-eqz v2, :cond_4

    .line 1755
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1757
    :cond_4
    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 1758
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 1759
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 1760
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v6, :cond_5

    .line 1761
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1762
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1767
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    .line 1769
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1767
    :goto_2
    invoke-virtual {p0, v6, v4}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryName(Ljava/lang/String;Z)V

    .line 1770
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    .line 1771
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    .line 1772
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    .line 1773
    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    .line 1774
    iput-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    .line 1775
    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    .line 1777
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1779
    iput-boolean v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mShowConferenceBanner:Z

    goto :goto_0

    .line 1764
    :cond_6
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move v4, v5

    .line 1769
    goto :goto_2
.end method

.method public updateDisplayChildCallChanged()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2351
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2393
    :cond_0
    :goto_0
    return-void

    .line 2352
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 2353
    iget-boolean v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-nez v4, :cond_0

    .line 2355
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2356
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

    .line 2357
    invoke-virtual {p0, v10, v7}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 2358
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    .line 2359
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

    .line 2361
    invoke-direct {p0, v0, v7}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConfCallDisplayName(Lcom/android/incallui/Call;Z)Ljava/lang/String;

    move-result-object v1

    .line 2362
    .local v1, "confCallName":Ljava/lang/String;
    invoke-virtual {p0, v1, v7}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 2363
    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    .line 2365
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

    .line 2367
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_2

    .line 2368
    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    .line 2369
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 2371
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 2372
    iget-object v4, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2376
    .end local v1    # "confCallName":Ljava/lang/String;
    .end local v2    # "countString":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v3

    .line 2377
    .local v3, "secondaryCall":Lcom/android/incallui/Call;
    if-eqz v3, :cond_0

    .line 2378
    invoke-virtual {v3}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v9, :cond_3

    .line 2379
    invoke-virtual {p0, v10, v7}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 2380
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceGroupString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    .line 2381
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

    .line 2383
    invoke-direct {p0, v3, v7}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConfCallDisplayName(Lcom/android/incallui/Call;Z)Ljava/lang/String;

    move-result-object v1

    .line 2384
    .restart local v1    # "confCallName":Ljava/lang/String;
    invoke-virtual {p0, v1, v7}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->setSecondaryName(Ljava/lang/String;Z)V

    .line 2385
    iput-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    .line 2387
    if-eqz v2, :cond_3

    .line 2388
    iput-object v2, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    .line 2391
    .end local v1    # "confCallName":Ljava/lang/String;
    .end local v2    # "countString":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    goto/16 :goto_0
.end method

.method public updateEri()V
    .locals 1

    .prologue
    .line 2690
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    if-eqz v0, :cond_0

    .line 2691
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->updateEri()V

    .line 2693
    :cond_0
    return-void
.end method

.method public updateJanskyInfo()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const v9, 0x3ecccccd    # 0.4f

    const/4 v8, 0x0

    .line 2632
    const-string v5, "jansky_info_for_tmo"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2634
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v5}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 2635
    .local v1, "primaryCall":Lcom/android/incallui/Call;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v5}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v3

    .line 2636
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

    .line 2637
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

    .line 2639
    .local v4, "secondaryEntry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineName:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 2640
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

    .line 2641
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineName:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2642
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineName:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2644
    :cond_0
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineName:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineName:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 2645
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

    .line 2646
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineName:Landroid/widget/TextView;

    iget-object v6, v4, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2647
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineName:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2648
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineName:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2650
    :cond_1
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    .line 2651
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v2, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineIcon:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineColor:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/android/incallui/util/GraphicResourceUtils;->getJanskyLineIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2652
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 2653
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2654
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2659
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    .line 2660
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v4, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineIcon:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineColor:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/android/incallui/util/GraphicResourceUtils;->getJanskyLineIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2661
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5

    .line 2662
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2663
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2664
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2670
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "primaryCall":Lcom/android/incallui/Call;
    .end local v2    # "primaryEntry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    .end local v3    # "secondaryCall":Lcom/android/incallui/Call;
    .end local v4    # "secondaryEntry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    :cond_3
    :goto_1
    return-void

    .line 2656
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "primaryCall":Lcom/android/incallui/Call;
    .restart local v2    # "primaryEntry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    .restart local v3    # "secondaryCall":Lcom/android/incallui/Call;
    .restart local v4    # "secondaryEntry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    :cond_4
    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2666
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

    .line 2439
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2440
    const-string v3, "MultiPartyCallCardFragment"

    const-string v5, "fragment is detached from activity, return"

    invoke-static {v3, v5, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2471
    :goto_0
    return-void

    .line 2443
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

    .line 2445
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v2

    .line 2446
    .local v2, "managerState":Z
    if-eqz v2, :cond_4

    .line 2447
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02038f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v8, v6, v8, v8}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2448
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2449
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090255

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2461
    :cond_1
    :goto_1
    const-string v3, "support_folder_hardkey"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2462
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v3, :cond_2

    .line 2463
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-nez v2, :cond_7

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2464
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v3, :cond_3

    .line 2465
    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-nez v2, :cond_8

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2468
    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-static {v3, v8, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2469
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-eq v3, v9, :cond_9

    move v1, v4

    .line 2470
    .local v1, "manageEnable":Z
    :goto_4
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2450
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "manageEnable":Z
    :cond_4
    if-eqz p1, :cond_5

    .line 2451
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020393

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v8, v6, v8, v8}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2452
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2453
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090257

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2455
    :cond_5
    iget-boolean v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->isVZWConfInitiated:Z

    if-eqz v3, :cond_6

    .line 2456
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2457
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPrimaryConferenceCall()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2458
    :cond_6
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move v3, v5

    .line 2463
    goto :goto_2

    :cond_8
    move v3, v5

    .line 2465
    goto :goto_3

    .restart local v0    # "call":Lcom/android/incallui/Call;
    :cond_9
    move v1, v5

    .line 2469
    goto :goto_4
.end method

.method protected updateMultipartyCallButtons()V
    .locals 9

    .prologue
    const/16 v5, 0xff

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1285
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

    .line 1286
    iget-boolean v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v3, :cond_1

    .line 1308
    :cond_0
    :goto_0
    return-void

    .line 1288
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1289
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1291
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

    .line 1293
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v2

    .line 1294
    .local v2, "isMultipartyCall":Z
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showSecondaryContainer(Z)V

    .line 1295
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateSwapCallButton(Lcom/android/incallui/Call;)V

    .line 1296
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateMergeCallButton(Lcom/android/incallui/Call;)V

    .line 1297
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateManageButton(Lcom/android/incallui/Call;)V

    .line 1299
    if-eqz v2, :cond_0

    .line 1300
    invoke-virtual {p0}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v1

    .line 1301
    .local v1, "isManagerShowing":Z
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v6, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1303
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1304
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v1, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1305
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

    .line 1301
    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    move v3, v5

    .line 1304
    goto :goto_2

    :cond_6
    move v4, v5

    .line 1305
    goto :goto_3
.end method

.method public updateVolteView(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 2697
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    if-eqz v0, :cond_0

    .line 2698
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mVolteView:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->setCallState(I)V

    .line 2700
    :cond_0
    return-void
.end method
