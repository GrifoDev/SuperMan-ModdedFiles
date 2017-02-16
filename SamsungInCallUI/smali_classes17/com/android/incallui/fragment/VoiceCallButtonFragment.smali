.class public Lcom/android/incallui/fragment/VoiceCallButtonFragment;
.super Lcom/android/incallui/fragment/CallButtonFragment;
.source "VoiceCallButtonFragment.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VoiceCallButtonFragment"

.field protected static mCurrentPageScrollState:I


# instance fields
.field protected mAddCallButton:Landroid/widget/Button;

.field protected mCallButtonContainer:Landroid/view/View;

.field protected mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

.field protected mClickListener:Landroid/view/View$OnClickListener;

.field private mConferenceInfoBanner:Landroid/view/ViewStub;

.field private mConferenceInfoText:Landroid/widget/TextView;

.field protected mContactButtonStub:Landroid/view/ViewStub;

.field protected mDialpadButton:Landroid/widget/Button;

.field protected mEndCallAnimatorSet:Landroid/animation/AnimatorSet;

.field private mEndCallButtonAnim:Landroid/view/ViewStub;

.field private mEndCallButtonBottom:Landroid/view/View;

.field private mEndCallButtonBottomHeight:I

.field protected mHoldButton:Landroid/widget/ToggleButton;

.field protected mInCallButtonLayout:Landroid/view/ViewGroup;

.field protected mInCallButtons:Landroid/view/View;

.field protected mIsEnabled:Z

.field private mIsSprWFCRegistered:Z

.field private mModifyErrorDialog:Landroid/app/AlertDialog;

.field protected mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

.field protected mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

.field protected mOneWayCameraButtonStub:Landroid/view/ViewStub;

.field protected mOutgoingButtonLayout:Landroid/view/ViewGroup;

.field protected mParentView:Landroid/view/View;

.field protected mPrevAudioMode:I

.field protected mPrevCallState:I

.field protected mPreviousInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

.field protected mPromotedButton:Landroid/widget/Button;

.field private mPromotedButtonStub:Landroid/view/ViewStub;

.field protected mShareButton:Landroid/widget/Button;

.field private mShareButtonStub:Landroid/view/ViewStub;

.field protected mSpeakerButton:Landroid/widget/ToggleButton;

.field protected mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

.field protected mSwitchCallButtonStub:Landroid/view/ViewStub;

.field private mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

.field protected mVoWifiStateListener:Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;

.field protected mVoiceCallButtonContainer:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCurrentPageScrollState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallButtonFragment;-><init>()V

    .line 119
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPreviousInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 139
    iput v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPrevAudioMode:I

    .line 140
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPrevCallState:I

    .line 143
    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    .line 144
    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    .line 164
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mIsSprWFCRegistered:Z

    .line 166
    new-instance v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$1;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoWifiStateListener:Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;

    .line 374
    new-instance v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/fragment/VoiceCallButtonFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mIsSprWFCRegistered:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonBottom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    .prologue
    .line 111
    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonBottomHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->arrangeIncomingCallScreen()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/fragment/VoiceCallButtonFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonFragment;
    .param p1, "x1"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->checkThenModify(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/fragment/VoiceCallButtonFragment;Lcom/android/incallui/Call;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonFragment;
    .param p1, "x1"    # Lcom/android/incallui/Call;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->switchToVideoCallClicked(Lcom/android/incallui/Call;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateHoldButton()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->animateForEndCall()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->emailClicked()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)Landroid/view/ViewStub;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonAnim:Landroid/view/ViewStub;

    return-object v0
.end method

.method private animateForEndCall()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1699
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1700
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1701
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    .line 1702
    return-void
.end method

.method private animateForOutgoingCall()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 1573
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->needToAnimateForOutgoingCall()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1677
    :goto_0
    return-void

    .line 1575
    :cond_0
    const-string v8, "VoiceCallButtonFragment"

    const-string v9, "animateForOutgoingCall"

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1576
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v9, 0x7f10027a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    iput-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonAnim:Landroid/view/ViewStub;

    .line 1577
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonAnim:Landroid/view/ViewStub;

    if-nez v8, :cond_1

    .line 1578
    const-string v8, "VoiceCallButtonFragment"

    const-string v9, "animateForOutgoingCall: can not find view"

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1581
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateEndCallButtonColor()V

    .line 1582
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1584
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonAnim:Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1585
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonAnim:Landroid/view/ViewStub;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1587
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a024f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 1588
    .local v5, "srcDiameter":F
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0266

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 1589
    .local v1, "dstDiameter":F
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a032e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 1590
    .local v6, "srcMarginBottom":F
    float-to-int v7, v6

    .line 1591
    .local v7, "startMarginBottom":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00a4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v2, v8

    .line 1593
    .local v2, "endMarginBottom":I
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v9, 0x7f10027b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1594
    .local v0, "backgroundFrame":Landroid/view/View;
    div-float v8, v5, v1

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleX(F)V

    .line 1595
    div-float v8, v5, v1

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleY(F)V

    .line 1596
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    .line 1597
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1598
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1599
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v8, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1601
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    .line 1602
    .local v4, "observer":Landroid/view/ViewTreeObserver;
    new-instance v8, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;

    invoke-direct {v8, p0, v7, v2, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;IILandroid/view/View;)V

    invoke-virtual {v4, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_0
.end method

.method private arrangeIncomingCallScreen()V
    .locals 2

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonBottom:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1749
    :cond_0
    :goto_0
    return-void

    .line 1747
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonBottomHeight:I

    .line 1748
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonBottomHeight:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/UiAdapter;->arrangeIncomingHandle(I)V

    goto :goto_0
.end method

.method private canExtraVolumeButton()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1527
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1528
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 1546
    :cond_0
    :goto_0
    return v1

    .line 1531
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1534
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1537
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1540
    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->isCallForwardingState()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1543
    const-string v3, "spr_vowifi_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    .line 1546
    goto :goto_0
.end method

.method private checkThenModify(I)V
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1311
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isVoLTESettingsEnabled()I

    move-result v1

    .line 1312
    .local v1, "enabled":I
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1313
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 1333
    :cond_0
    :goto_0
    return-void

    .line 1314
    :cond_1
    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Lcom/android/incallui/Call;->can(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v6

    if-nez v6, :cond_3

    move v2, v4

    .line 1315
    .local v2, "modifyPossible":Z
    :goto_1
    const-string v6, "VoiceCallButtonFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkThenModify, enabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", modifyPossible: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1317
    if-eqz v1, :cond_4

    if-ne v1, v9, :cond_2

    .line 1318
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1319
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "volteSettingErrorShowNeverAgain"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1320
    .local v3, "showNeverAgain":I
    if-nez v3, :cond_0

    .line 1321
    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->showVoLTESettingErrorDialog(I)V

    goto :goto_0

    .end local v2    # "modifyPossible":Z
    .end local v3    # "showNeverAgain":I
    :cond_3
    move v2, v5

    .line 1314
    goto :goto_1

    .line 1323
    .restart local v2    # "modifyPossible":Z
    :cond_4
    if-nez v2, :cond_5

    .line 1324
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->showModifyErrorDialog()V

    goto :goto_0

    .line 1326
    :cond_5
    const v5, 0x7f1003f2

    if-ne p1, v5, :cond_6

    .line 1327
    invoke-static {v9}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto :goto_0

    .line 1328
    :cond_6
    const v5, 0x7f1002fa

    if-ne p1, v5, :cond_0

    .line 1329
    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto :goto_0
.end method

.method private dismissUSAVoLTEDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1380
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1382
    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    .line 1384
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1385
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1386
    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    .line 1388
    :cond_1
    return-void
.end method

.method private emailClicked()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1072
    const/4 v6, 0x0

    .line 1073
    .local v6, "address":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v7

    .line 1074
    .local v7, "call":Lcom/android/incallui/Call;
    if-nez v7, :cond_0

    .line 1102
    :goto_0
    return-void

    .line 1075
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v10

    .line 1076
    .local v10, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v10, :cond_3

    iget-boolean v0, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v0, :cond_3

    .line 1077
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v12, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mimetype"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1081
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 1082
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1084
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1085
    const-string v0, "data1"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1086
    .local v8, "columnIndex":I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_1

    .line 1087
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1088
    const-string v0, "VoiceCallButtonFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emailClicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1092
    .end local v8    # "columnIndex":I
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1093
    const/4 v9, 0x0

    throw v0

    .line 1092
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1093
    const/4 v9, 0x0

    .line 1101
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_2
    invoke-static {v6}, Lcom/android/incallui/util/PackageHelpers;->launchEmail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1096
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private showModifyErrorDialog()V
    .locals 5

    .prologue
    .line 1336
    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getPrimaryCallerName()Ljava/lang/String;

    move-result-object v1

    .line 1337
    .local v1, "primaryName":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, "Other party"

    .line 1338
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1339
    .local v0, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1340
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1343
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1344
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/incallui/fragment/VoiceCallButtonFragment$8;

    invoke-direct {v4, p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$8;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    .line 1345
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1349
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    .line 1350
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1351
    return-void
.end method

.method private showVoLTESettingErrorDialog(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 1354
    const/4 v0, 0x0

    .line 1355
    .local v0, "message":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1369
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1370
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/incallui/fragment/VoiceCallButtonFragment$9;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$9;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    .line 1371
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1375
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    .line 1376
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1377
    return-void

    .line 1357
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1358
    goto :goto_0

    .line 1360
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1361
    goto :goto_0

    .line 1363
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1364
    goto :goto_0

    .line 1355
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private switchToVideoCallClicked(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v3, 0x1

    .line 1467
    const-string v0, "usa_gsm_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    .line 1468
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1469
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1470
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1471
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1472
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0902e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;I)V

    .line 1496
    :cond_2
    :goto_0
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1497
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    .line 1499
    :cond_3
    return-void

    .line 1474
    :cond_4
    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1475
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0902ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;I)V

    goto :goto_0

    .line 1477
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0902eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    .line 1478
    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getPrimaryCallerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1477
    invoke-static {v0, v3}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;I)V

    goto :goto_0

    .line 1481
    :cond_6
    invoke-static {}, Lcom/android/incallui/util/BatteryUtils;->isLowBatt()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/incallui/util/BatteryUtils;->isCriticalLowBatt()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1482
    :cond_7
    invoke-static {}, Lcom/android/incallui/util/BatteryUtils;->isCriticalLowBatt()Z

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/BatteryUtils;->showLowBattToast(Z)V

    goto :goto_0

    .line 1484
    :cond_8
    const-string v0, "canada_bmc_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1485
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->checkAndNotifyDataUsageLimit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1488
    :cond_9
    invoke-virtual {p1}, Lcom/android/incallui/Call;->setModifyRequestDummy()V

    goto :goto_0

    .line 1491
    :cond_a
    invoke-static {}, Lcom/android/incallui/util/BatteryUtils;->isLowBatt()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/android/incallui/util/BatteryUtils;->isCriticalLowBatt()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1492
    :cond_b
    invoke-static {}, Lcom/android/incallui/util/BatteryUtils;->isCriticalLowBatt()Z

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/BatteryUtils;->showLowBattToast(Z)V

    goto :goto_0

    .line 1493
    :cond_c
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->canUpgradeToVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1494
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto/16 :goto_0
.end method

.method private updateAudioButtons(I)V
    .locals 6
    .param p1, "supportedModes"    # I

    .prologue
    const/4 v5, 0x2

    .line 962
    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isAudio(I)Z

    move-result v0

    .line 963
    .local v0, "bluetoothEnabled":Z
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isAudio(I)Z

    move-result v1

    .line 965
    .local v1, "speakerEnabled":Z
    const-string v2, "VoiceCallButtonFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bluetoothEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string v2, "VoiceCallButtonFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "speakerEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_0

    .line 969
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 972
    :cond_0
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOutgoingCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 973
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isSupported(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 974
    const-string v2, "VoiceCallButtonFragment"

    const-string v3, "updateAudioButtons - bluetooth disabled for Bike mode call"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 979
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_3

    .line 980
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 983
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateMuteButton()V

    .line 984
    return-void
.end method

.method private updateEndCallButton()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1418
    const-string v4, "show_vowifi_endcall_button"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1419
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateEndCallButtonColor()V

    .line 1440
    :goto_0
    return-void

    .line 1423
    :cond_0
    const/4 v1, 0x0

    .line 1424
    .local v1, "show":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1425
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_2

    .line 1426
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    .line 1427
    :cond_1
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableVoWFi()Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v2

    .line 1433
    :cond_2
    :goto_1
    const-string v4, "VoiceCallButtonFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateEndCallButton = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v4, :cond_3

    const-string v4, "spr_vowifi_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1436
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->canExtraVolumeButton()Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1438
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->setEndCallButtonIcon(Z)V

    .line 1439
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateEndCallButtonColor()V

    goto :goto_0

    :cond_5
    move v1, v3

    .line 1427
    goto :goto_1

    .line 1429
    :cond_6
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v1, v2

    :goto_3
    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_3

    :cond_8
    move v2, v3

    .line 1436
    goto :goto_2
.end method

.method private updateExtraVolumeButtonAboutModeChanged()V
    .locals 3

    .prologue
    .line 1105
    const-string v1, "updateExtraVolumeButtonAboutModeChanged()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1106
    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->isUncertainExtraVolOn()Z

    move-result v0

    .line 1107
    .local v0, "isUncertainExtraVolOn":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- isUncertainExtraVolOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1109
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    .line 1110
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->showExtraVolumeToast()V

    .line 1111
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1113
    :cond_1
    return-void
.end method

.method private updateHoldButton()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1705
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1706
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_0

    .line 1707
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1708
    :cond_0
    return-void

    .line 1707
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateVideoBtnImage(I)V
    .locals 3
    .param p1, "setting"    # I

    .prologue
    const v2, 0x3ecccccd    # 0.4f

    const/4 v1, 0x1

    .line 1055
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDeviceOnLTE()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1057
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1058
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecVoiceButton;->setEnabled(Z)V

    .line 1059
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecVoiceButton;->setEnabled(Z)V

    .line 1064
    :goto_0
    return-void

    .line 1061
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/widget/SecVoiceButton;->setEnabledAndAlpha(ZF)V

    .line 1062
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/widget/SecVoiceButton;->setEnabledAndAlpha(ZF)V

    goto :goto_0
.end method

.method private updateVoiceCallButtons(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 554
    if-nez p1, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateAudioButtons(I)V

    .line 557
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateExtraVolumeButton()V

    .line 558
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateDiapadButton()V

    .line 559
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateHoldButton()V

    .line 560
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->enableVoiceCallButtons(Lcom/android/incallui/Call;)V

    .line 561
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 562
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateVolteButton(Lcom/android/incallui/Call;)V

    .line 564
    :cond_2
    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->canRecord(Lcom/android/incallui/Call;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateRecordButton(Z)V

    goto :goto_0
.end method

.method private updateVolteButton(Lcom/android/incallui/Call;)V
    .locals 14
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/16 v13, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 997
    if-nez p1, :cond_1

    .line 1052
    :cond_0
    :goto_0
    return-void

    .line 999
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/16 v11, 0xd

    if-eq v10, v11, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    invoke-static {v10}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_2
    move v2, v9

    .line 1000
    .local v2, "isDialing":Z
    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    if-ne v10, v13, :cond_8

    move v3, v9

    .line 1001
    .local v3, "isOnHold":Z
    :goto_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/android/incallui/CallList;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_3
    move v1, v9

    .line 1002
    .local v1, "isConference":Z
    :goto_3
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/UiAdapter;->isSwapProcessing()Z

    move-result v7

    .line 1003
    .local v7, "swapProcessing":Z
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isVoLTESettingsEnabled()I

    move-result v5

    .line 1005
    .local v5, "setting":I
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isVZWLTEVideoCallMenuShow()Z

    move-result v6

    .line 1007
    .local v6, "show":Z
    if-nez v2, :cond_a

    if-nez v3, :cond_a

    if-nez v1, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getSuppService()Z

    move-result v10

    if-nez v10, :cond_a

    .line 1008
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isSafetyAssistanceMode()Z

    move-result v10

    if-nez v10, :cond_a

    if-nez v7, :cond_a

    .line 1009
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasOtherCallTTYvalue()Z

    move-result v10

    if-nez v10, :cond_a

    .line 1010
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtySetting()I

    move-result v10

    if-nez v10, :cond_a

    .line 1011
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v10

    if-nez v10, :cond_a

    move v0, v9

    .line 1013
    .local v0, "enable":Z
    :goto_4
    const-string v11, "VoiceCallButtonFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateVolteButton() : isConference:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " InCallUISystemDB.getSuppService():"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getSuppService()Z

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " VOLTE_SETTING_ENABLED:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " swapProcessing:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " IsTTyOff:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1015
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtySetting()I

    move-result v10

    if-nez v10, :cond_b

    move v10, v9

    :goto_5
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1013
    invoke-static {v11, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v10, :cond_6

    .line 1018
    if-eqz v6, :cond_d

    .line 1019
    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v10, v8}, Lcom/android/incallui/widget/SecVoiceButton;->setVisibility(I)V

    .line 1020
    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    if-eqz v10, :cond_4

    .line 1021
    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v10, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1023
    :cond_4
    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v10, v8}, Lcom/android/incallui/widget/SecVoiceButton;->setVisibility(I)V

    .line 1025
    if-eqz v0, :cond_c

    .line 1026
    invoke-direct {p0, v5}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateVideoBtnImage(I)V

    .line 1031
    :goto_6
    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v10, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 1032
    :cond_5
    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v10, v13}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1044
    :cond_6
    :goto_7
    const-string v10, "vzw_volte_ui"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1045
    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v10, :cond_0

    .line 1046
    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1047
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtySetting()I

    move-result v10

    if-nez v10, :cond_10

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasOtherCallTTYvalue()Z

    move-result v10

    if-nez v10, :cond_10

    move v4, v9

    .line 1048
    .local v4, "preferredTtyMode":Z
    :goto_8
    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .end local v0    # "enable":Z
    .end local v1    # "isConference":Z
    .end local v2    # "isDialing":Z
    .end local v3    # "isOnHold":Z
    .end local v4    # "preferredTtyMode":Z
    .end local v5    # "setting":I
    .end local v6    # "show":Z
    .end local v7    # "swapProcessing":Z
    :cond_7
    move v2, v8

    .line 999
    goto/16 :goto_1

    .restart local v2    # "isDialing":Z
    :cond_8
    move v3, v8

    .line 1000
    goto/16 :goto_2

    .restart local v3    # "isOnHold":Z
    :cond_9
    move v1, v8

    .line 1001
    goto/16 :goto_3

    .restart local v1    # "isConference":Z
    .restart local v5    # "setting":I
    .restart local v6    # "show":Z
    .restart local v7    # "swapProcessing":Z
    :cond_a
    move v0, v8

    .line 1011
    goto/16 :goto_4

    .restart local v0    # "enable":Z
    :cond_b
    move v10, v8

    .line 1015
    goto :goto_5

    .line 1028
    :cond_c
    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v10, v8}, Lcom/android/incallui/widget/SecVoiceButton;->setEnabled(Z)V

    .line 1029
    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v10, v8}, Lcom/android/incallui/widget/SecVoiceButton;->setEnabled(Z)V

    goto :goto_6

    .line 1034
    :cond_d
    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v10, v13}, Lcom/android/incallui/widget/SecVoiceButton;->setVisibility(I)V

    .line 1035
    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    if-eqz v10, :cond_e

    .line 1036
    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v10, v13}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1038
    :cond_e
    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v10, v13}, Lcom/android/incallui/widget/SecVoiceButton;->setVisibility(I)V

    .line 1039
    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v10, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1040
    :cond_f
    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v10, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_7

    :cond_10
    move v4, v8

    .line 1047
    goto :goto_8
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1712
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1722
    :cond_0
    :goto_0
    return-void

    .line 1713
    :cond_1
    const-string v1, "VoiceCallButtonFragment"

    const-string v2, "animateForAnswerCall"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1715
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1716
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1717
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->setVisible(Z)V

    .line 1718
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1719
    .local v0, "inCallButtonAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1720
    new-instance v1, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1721
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public animateForManager(ZZ)V
    .locals 17
    .param p1, "showManager"    # Z
    .param p2, "direct"    # Z

    .prologue
    .line 1206
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-nez v12, :cond_1

    .line 1265
    :cond_0
    :goto_0
    return-void

    .line 1209
    :cond_1
    const-string v12, "VoiceCallButtonFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "animateForManager...showManager:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " direct:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1211
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/CallList;->isConferenceCall()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1212
    const-string v12, "VoiceCallButtonFragment"

    const-string v13, "animateForManager...isRunning"

    invoke-static {v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1216
    :cond_2
    if-eqz p2, :cond_e

    const/4 v4, 0x0

    .line 1218
    .local v4, "duration":I
    :goto_1
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    .line 1219
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1220
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v12, :cond_4

    .line 1221
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v15, v12, [F

    const/16 v16, 0x0

    if-eqz p1, :cond_f

    const/4 v12, 0x0

    :goto_2
    aput v12, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1222
    .local v6, "hideButtons":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v15, v12, [F

    const/16 v16, 0x0

    if-eqz p1, :cond_10

    const/4 v12, 0x0

    :goto_3
    aput v12, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 1223
    .local v8, "hideEndButtons":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v12, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1235
    .end local v6    # "hideButtons":Landroid/animation/ObjectAnimator;
    .end local v8    # "hideEndButtons":Landroid/animation/ObjectAnimator;
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    new-instance v13, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v13}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1236
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    int-to-long v14, v4

    invoke-virtual {v12, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1237
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 1239
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1240
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz p1, :cond_15

    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v13, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v12}, Lcom/android/incallui/widget/SecVoiceButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz p1, :cond_16

    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v13, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1242
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz p1, :cond_17

    const/4 v12, 0x0

    :goto_7
    invoke-virtual {v13, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1243
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v12}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz p1, :cond_18

    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v13, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1244
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v12}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz p1, :cond_19

    const/4 v12, 0x0

    :goto_9
    invoke-virtual {v13, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1245
    :cond_8
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v12

    if-nez v12, :cond_9

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1246
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v12}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz p1, :cond_1a

    const/4 v12, 0x0

    :goto_a
    invoke-virtual {v13, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1247
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v12}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz p1, :cond_1b

    const/4 v12, 0x0

    :goto_b
    invoke-virtual {v13, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1249
    :cond_a
    const-string v12, "voice_call_recording"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1250
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v12}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz p1, :cond_1c

    const/4 v12, 0x0

    :goto_c
    invoke-virtual {v13, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1252
    :cond_b
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v2

    .line 1253
    .local v2, "availablePSVT":Z
    const-string v12, "usa_gsm_volte_ui"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 1254
    const-string v12, "psvt_support"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    .line 1258
    :cond_c
    :goto_d
    const-string v12, "show_switch_icon_in_button"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    if-eqz v2, :cond_d

    .line 1259
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v12}, Lcom/android/incallui/widget/SecVoiceButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz p1, :cond_1e

    const/4 v12, 0x0

    :goto_e
    invoke-virtual {v13, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1261
    :cond_d
    const-string v12, "vzw_volte_ui"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1262
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v12}, Lcom/android/incallui/widget/SecVoiceButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz p1, :cond_1f

    const/4 v12, 0x0

    :goto_f
    invoke-virtual {v13, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_0

    .line 1216
    .end local v2    # "availablePSVT":Z
    .end local v4    # "duration":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d0042

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    goto/16 :goto_1

    .line 1221
    .restart local v4    # "duration":I
    :cond_f
    const/high16 v12, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 1222
    .restart local v6    # "hideButtons":Landroid/animation/ObjectAnimator;
    :cond_10
    const/high16 v12, 0x3f800000    # 1.0f

    goto/16 :goto_3

    .line 1226
    .end local v6    # "hideButtons":Landroid/animation/ObjectAnimator;
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-static {v12}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v13}, Landroid/widget/ImageButton;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    int-to-float v5, v12

    .line 1227
    .local v5, "endY":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUnder:Landroid/view/View;

    invoke-static {v12}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUnder:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    int-to-float v11, v12

    .line 1228
    .local v11, "startY":F
    sub-float v3, v5, v11

    .line 1230
    .local v3, "buttonDeltaY":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUnder:Landroid/view/View;

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    if-eqz p1, :cond_12

    .end local v3    # "buttonDeltaY":F
    :goto_10
    aput v3, v14, v15

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 1231
    .local v10, "inCallButtonsUnder":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v15, v12, [F

    const/16 v16, 0x0

    if-eqz p1, :cond_13

    const/4 v12, 0x0

    :goto_11
    aput v12, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1232
    .local v7, "hideDialpadButton":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v15, v12, [F

    const/16 v16, 0x0

    if-eqz p1, :cond_14

    const/4 v12, 0x0

    :goto_12
    aput v12, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 1233
    .local v9, "hideUpperButtons":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v12, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_4

    .line 1230
    .end local v7    # "hideDialpadButton":Landroid/animation/ObjectAnimator;
    .end local v9    # "hideUpperButtons":Landroid/animation/ObjectAnimator;
    .end local v10    # "inCallButtonsUnder":Landroid/animation/ObjectAnimator;
    .restart local v3    # "buttonDeltaY":F
    :cond_12
    const/4 v3, 0x0

    goto :goto_10

    .line 1231
    .end local v3    # "buttonDeltaY":F
    .restart local v10    # "inCallButtonsUnder":Landroid/animation/ObjectAnimator;
    :cond_13
    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_11

    .line 1232
    .restart local v7    # "hideDialpadButton":Landroid/animation/ObjectAnimator;
    :cond_14
    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_12

    .line 1240
    .end local v5    # "endY":F
    .end local v7    # "hideDialpadButton":Landroid/animation/ObjectAnimator;
    .end local v10    # "inCallButtonsUnder":Landroid/animation/ObjectAnimator;
    .end local v11    # "startY":F
    :cond_15
    const/16 v12, 0xff

    goto/16 :goto_5

    .line 1241
    :cond_16
    const/16 v12, 0xff

    goto/16 :goto_6

    .line 1242
    :cond_17
    const/16 v12, 0xff

    goto/16 :goto_7

    .line 1243
    :cond_18
    const/16 v12, 0xff

    goto/16 :goto_8

    .line 1244
    :cond_19
    const/16 v12, 0xff

    goto/16 :goto_9

    .line 1246
    :cond_1a
    const/16 v12, 0xff

    goto/16 :goto_a

    .line 1247
    :cond_1b
    const/16 v12, 0xff

    goto/16 :goto_b

    .line 1250
    :cond_1c
    const/16 v12, 0xff

    goto/16 :goto_c

    .line 1255
    .restart local v2    # "availablePSVT":Z
    :cond_1d
    const-string v12, "feature_multisim"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1256
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getDefaultVoiceSubscriptionId()I

    move-result v12

    invoke-static {v12}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT(I)Z

    move-result v2

    goto/16 :goto_d

    .line 1259
    :cond_1e
    const/16 v12, 0xff

    goto/16 :goto_e

    .line 1262
    :cond_1f
    const/16 v12, 0xff

    goto/16 :goto_f
.end method

.method public animateForMoveDialpad(Z)V
    .locals 7
    .param p1, "showDialpad"    # Z

    .prologue
    .line 1173
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1189
    :cond_0
    :goto_0
    return-void

    .line 1174
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1176
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1177
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 1180
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1181
    .local v0, "duration":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 1183
    .local v1, "inCallButtonDeltaY":F
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    .end local v1    # "inCallButtonDeltaY":F
    :goto_1
    aput v1, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1184
    .local v2, "moveInCallButton":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1185
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1186
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v4}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1187
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1188
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1183
    .end local v2    # "moveInCallButton":Landroid/animation/ObjectAnimator;
    .restart local v1    # "inCallButtonDeltaY":F
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public animateForRevealEndCallButton()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1286
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v5, :cond_0

    .line 1308
    :goto_0
    return-void

    .line 1287
    :cond_0
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1288
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1289
    .local v3, "scaleXAnimator":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1290
    .local v4, "scaleYAnimator":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1291
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1292
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0054

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1293
    .local v2, "duration":I
    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1294
    new-instance v5, Lcom/android/incallui/fragment/VoiceCallButtonFragment$7;

    invoke-direct {v5, p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$7;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1307
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public animateForRevealViews()V
    .locals 7

    .prologue
    .line 1392
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1397
    :goto_0
    return-void

    .line 1393
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1394
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1395
    .local v1, "duration":I
    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1396
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public enableDialpadButton(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1169
    :cond_0
    return-void
.end method

.method protected enableVoiceCallButtons(Lcom/android/incallui/Call;)V
    .locals 19
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 570
    if-nez p1, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    const/4 v12, 0x1

    .line 573
    .local v12, "isEnabled":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 574
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 575
    :cond_2
    const/4 v12, 0x0

    .line 577
    :cond_3
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 578
    const-string v17, "VoiceCallButtonFragment"

    const-string v18, "enableVoiceCallButtons - disable buttons becauase conference call is under disconnecting"

    invoke-static/range {v17 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const/4 v12, 0x0

    .line 582
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 583
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    :cond_5
    const/4 v11, 0x1

    .line 585
    .local v11, "isDialing":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_20

    const/4 v13, 0x1

    .line 587
    .local v13, "isHolding":Z
    :goto_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getHasBeenVideoCall()Z

    move-result v17

    if-nez v17, :cond_21

    const/4 v2, 0x1

    .line 588
    .local v2, "addEnabled":Z
    :goto_3
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v17

    if-eqz v17, :cond_22

    if-nez v11, :cond_22

    if-eqz v2, :cond_22

    const/4 v4, 0x1

    .line 589
    .local v4, "canAdd":Z
    :goto_4
    const/16 v17, 0x4

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 590
    const/4 v4, 0x0

    .line 592
    :cond_6
    const-string v17, "not_support_addcall_button"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 593
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 594
    const/4 v4, 0x0

    .line 596
    :cond_7
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 597
    const/4 v4, 0x0

    .line 600
    :cond_8
    const/16 v17, 0x40

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v17

    if-eqz v17, :cond_23

    if-nez v11, :cond_23

    if-nez v13, :cond_23

    const/4 v8, 0x1

    .line 601
    .local v8, "canMute":Z
    :goto_5
    const/16 v17, 0x10

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 602
    const/4 v8, 0x0

    .line 604
    :cond_9
    if-nez v11, :cond_24

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->canExtraVolumeButton()Z

    move-result v17

    if-eqz v17, :cond_24

    const/4 v5, 0x1

    .line 605
    .local v5, "canExtraVol":Z
    :goto_6
    const/16 v16, 0x1

    .line 606
    .local v16, "speakerEnabled":Z
    const/16 v17, 0x8

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 607
    const/16 v16, 0x0

    .line 609
    :cond_a
    if-nez v11, :cond_25

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v17

    if-eqz v17, :cond_25

    const/4 v6, 0x1

    .line 610
    .local v6, "canHold":Z
    :goto_7
    const/4 v3, 0x1

    .line 611
    .local v3, "bluetoothEnabled":Z
    const/16 v17, 0x20

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v17

    if-nez v17, :cond_b

    .line 612
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEncryptionMode()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 613
    :cond_b
    const/4 v3, 0x0

    .line 616
    :cond_c
    const/high16 v17, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v17

    if-eqz v17, :cond_26

    if-nez v11, :cond_26

    if-nez v13, :cond_26

    .line 617
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v17

    if-nez v17, :cond_26

    .line 618
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isSafetyAssistanceMode()Z

    move-result v17

    if-nez v17, :cond_26

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/UiAdapter;->isSwapProcessing()Z

    move-result v17

    if-nez v17, :cond_26

    const/4 v7, 0x1

    .line 619
    .local v7, "canModify":Z
    :goto_8
    move v10, v7

    .line 621
    .local v10, "enableModify":Z
    const-string v17, "usa_gsm_volte_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 622
    if-eqz v12, :cond_27

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_27

    .line 623
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->checkPrimaryEmergencyCall()Z

    move-result v17

    if-nez v17, :cond_27

    const/4 v7, 0x1

    .line 624
    :goto_9
    if-eqz v7, :cond_28

    const/high16 v17, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v17

    if-eqz v17, :cond_28

    const/4 v10, 0x1

    .line 627
    :cond_d
    :goto_a
    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->isCallForwardingState()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 628
    const/4 v5, 0x0

    .line 629
    const/16 v16, 0x0

    .line 630
    const/4 v3, 0x0

    .line 633
    :cond_e
    const-string v17, "support_nsri_secure"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 634
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isNsriSecureCallMode()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 635
    const/4 v8, 0x0

    .line 636
    const/16 v16, 0x0

    .line 637
    const/4 v3, 0x0

    .line 641
    :cond_f
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v17

    if-nez v17, :cond_10

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOutgoingCall()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 642
    :cond_10
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isSupported(I)Z

    move-result v17

    if-nez v17, :cond_11

    .line 643
    const-string v17, "VoiceCallButtonFragment"

    const-string v18, "bluetooth disabled for Bike mode call"

    invoke-static/range {v17 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const/4 v3, 0x0

    .line 647
    :cond_11
    const/4 v4, 0x0

    .line 650
    :cond_12
    if-nez v13, :cond_29

    const/4 v9, 0x1

    .line 651
    .local v9, "dialpadEnabled":Z
    :goto_b
    const-string v17, "ims_voice_conference_kddi"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 652
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v14

    .line 653
    .local v14, "isVoiceParty":Z
    if-nez v14, :cond_13

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 654
    :cond_13
    const/4 v4, 0x0

    .line 655
    const/4 v9, 0x0

    .line 659
    .end local v14    # "isVoiceParty":Z
    :cond_14
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v17, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-eqz v17, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->showSwitchCallButtonForRCS()V

    .line 661
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    if-eqz v12, :cond_2a

    if-eqz v4, :cond_2a

    const/16 v17, 0x1

    :goto_c
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 662
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_17

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    move-object/from16 v18, v0

    if-eqz v12, :cond_2b

    if-eqz v5, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mIsSprWFCRegistered:Z

    move/from16 v17, v0

    if-nez v17, :cond_2b

    const/16 v17, 0x1

    :goto_d
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 664
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    move-object/from16 v18, v0

    if-eqz v12, :cond_2c

    if-eqz v3, :cond_2c

    const/16 v17, 0x1

    :goto_e
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 665
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    move-object/from16 v18, v0

    if-eqz v12, :cond_2d

    if-eqz v16, :cond_2d

    const/16 v17, 0x1

    :goto_f
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 666
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    move-object/from16 v18, v0

    if-eqz v12, :cond_2e

    if-eqz v6, :cond_2e

    const/16 v17, 0x1

    :goto_10
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 667
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    if-eqz v12, :cond_2f

    if-eqz v9, :cond_2f

    const/16 v17, 0x1

    :goto_11
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 668
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    move-object/from16 v18, v0

    if-eqz v12, :cond_30

    if-eqz v8, :cond_30

    const/16 v17, 0x1

    :goto_12
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 669
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 670
    :cond_1d
    const-string v17, "usa_gsm_volte_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_32

    if-eqz v7, :cond_32

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    move-object/from16 v18, v0

    if-eqz v10, :cond_31

    const/high16 v17, 0x3f800000    # 1.0f

    :goto_13
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Lcom/android/incallui/widget/SecVoiceButton;->setEnabledAndAlpha(ZF)V

    .line 676
    :cond_1e
    :goto_14
    const-string v17, "voice_call_recording"

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 677
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v15

    .line 678
    .local v15, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    move-object/from16 v18, v0

    if-eqz v15, :cond_34

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->canRecord(Lcom/android/incallui/Call;)Z

    move-result v17

    if-eqz v17, :cond_34

    if-eqz v12, :cond_34

    const/16 v17, 0x1

    :goto_15
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 583
    .end local v2    # "addEnabled":Z
    .end local v3    # "bluetoothEnabled":Z
    .end local v4    # "canAdd":Z
    .end local v5    # "canExtraVol":Z
    .end local v6    # "canHold":Z
    .end local v7    # "canModify":Z
    .end local v8    # "canMute":Z
    .end local v9    # "dialpadEnabled":Z
    .end local v10    # "enableModify":Z
    .end local v11    # "isDialing":Z
    .end local v13    # "isHolding":Z
    .end local v15    # "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    .end local v16    # "speakerEnabled":Z
    :cond_1f
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 585
    .restart local v11    # "isDialing":Z
    :cond_20
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 587
    .restart local v13    # "isHolding":Z
    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 588
    .restart local v2    # "addEnabled":Z
    :cond_22
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 600
    .restart local v4    # "canAdd":Z
    :cond_23
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 604
    .restart local v8    # "canMute":Z
    :cond_24
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 609
    .restart local v5    # "canExtraVol":Z
    .restart local v16    # "speakerEnabled":Z
    :cond_25
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 618
    .restart local v3    # "bluetoothEnabled":Z
    .restart local v6    # "canHold":Z
    :cond_26
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 623
    .restart local v7    # "canModify":Z
    .restart local v10    # "enableModify":Z
    :cond_27
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 624
    :cond_28
    const/4 v10, 0x0

    goto/16 :goto_a

    .line 650
    :cond_29
    const/4 v9, 0x0

    goto/16 :goto_b

    .line 661
    .restart local v9    # "dialpadEnabled":Z
    :cond_2a
    const/16 v17, 0x0

    goto/16 :goto_c

    .line 663
    :cond_2b
    const/16 v17, 0x0

    goto/16 :goto_d

    .line 664
    :cond_2c
    const/16 v17, 0x0

    goto/16 :goto_e

    .line 665
    :cond_2d
    const/16 v17, 0x0

    goto/16 :goto_f

    .line 666
    :cond_2e
    const/16 v17, 0x0

    goto/16 :goto_10

    .line 667
    :cond_2f
    const/16 v17, 0x0

    goto/16 :goto_11

    .line 668
    :cond_30
    const/16 v17, 0x0

    goto/16 :goto_12

    .line 671
    :cond_31
    const v17, 0x3ecccccd    # 0.4f

    goto :goto_13

    .line 673
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    move-object/from16 v18, v0

    if-eqz v12, :cond_33

    if-eqz v7, :cond_33

    const/16 v17, 0x1

    :goto_16
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecVoiceButton;->setEnabled(Z)V

    goto/16 :goto_14

    :cond_33
    const/16 v17, 0x0

    goto :goto_16

    .line 679
    .restart local v15    # "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    :cond_34
    const/16 v17, 0x0

    goto :goto_15
.end method

.method public extraVolumeClicked()V
    .locals 0

    .prologue
    .line 1067
    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->toggleExtraVolume()V

    .line 1068
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateExtraVolumeButton()V

    .line 1069
    return-void
.end method

.method public getAddCallButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getBluetoothButton()Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method public getEndCallButtonDiameter()I
    .locals 4

    .prologue
    .line 1737
    const/4 v0, 0x0

    .line 1738
    .local v0, "diameter":I
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 1739
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getHeight()I

    move-result v0

    .line 1741
    :cond_0
    const-string v1, "VoiceCallButtonFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEndCallButtonDiameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    return v0
.end method

.method public getEndCallButtonPivot()[I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1726
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-nez v4, :cond_0

    const/4 v1, 0x0

    .line 1732
    :goto_0
    return-object v1

    .line 1727
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-static {v4}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v3

    .line 1728
    .local v3, "top":I
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-static {v4}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionLeft(Landroid/view/View;)I

    move-result v0

    .line 1729
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getEndCallButtonDiameter()I

    move-result v4

    div-int/lit8 v2, v4, 0x2

    .line 1730
    .local v2, "radius":I
    const/4 v4, 0x2

    new-array v1, v4, [I

    add-int v4, v0, v2

    aput v4, v1, v7

    add-int v4, v3, v2

    aput v4, v1, v8

    .line 1731
    .local v1, "pivot":[I
    const-string v4, "VoiceCallButtonFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEndCallButtonPivot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPromotedButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPromotedButtonStub()Landroid/view/ViewStub;
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method public getShareButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getShareButtonStub()Landroid/view/ViewStub;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButtonStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method protected getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized inflateInCallButtons(Landroid/view/View;)V
    .locals 12
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 721
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    .line 722
    .local v3, "call":Lcom/android/incallui/Call;
    const v7, 0x7f1003f0

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    .line 723
    const v7, 0x7f1003f1

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    .line 724
    const v7, 0x7f1003fc

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUnder:Landroid/view/View;

    .line 726
    const v7, 0x7f100389

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    .line 727
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    :cond_0
    const v7, 0x7f1003f5

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ToggleButton;

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    .line 729
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_1

    .line 730
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 732
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    .line 734
    :cond_1
    const v7, 0x7f1003f8

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ToggleButton;

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    .line 735
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 736
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    .line 737
    const-string v7, "voice_call_recording"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 738
    const-string v7, "voice_call_recording_menu"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 739
    const v7, 0x7f1003f4

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewStub;

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    .line 740
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    if-eqz v7, :cond_6

    .line 741
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v7}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 742
    const v7, 0x7f100347

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ToggleButton;

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    .line 743
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 745
    :cond_2
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 746
    const-string v7, "hold_key_call_recording"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 747
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hold_key_record_calls_enable_sharedpref"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_14

    const/4 v5, 0x0

    .line 749
    .local v5, "isOn":Z
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v4

    .line 750
    .local v4, "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    const-string v7, "VoiceCallButtonFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hold_key_record_calls_enable_sharedpref : isOn - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 751
    if-eqz v5, :cond_5

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPreviousInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v4, v7, :cond_5

    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v4, v7, :cond_3

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPreviousInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, v8, :cond_4

    :cond_3
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v4, v7, :cond_5

    .line 755
    :cond_4
    const v7, 0x7f0900bc

    invoke-static {v7}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    .line 758
    :cond_5
    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPreviousInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 762
    .end local v4    # "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    .end local v5    # "isOn":Z
    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v6

    .line 763
    .local v6, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v6, :cond_7

    .line 764
    invoke-virtual {v6}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    .line 767
    :cond_7
    const-string v7, "automatic_answering_machine"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 768
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 769
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    .line 770
    .local v0, "ansMemoRecorderMgr":Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    if-eqz v0, :cond_8

    .line 771
    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->onAMRecorderStateChanged()V

    .line 777
    .end local v0    # "ansMemoRecorderMgr":Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    .end local v6    # "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    :cond_8
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v1

    .line 778
    .local v1, "availablePSVT":Z
    const-string v7, "usa_gsm_volte_ui"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 779
    const-string v7, "psvt_support"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    .line 783
    :cond_9
    :goto_1
    const-string v7, "show_switch_icon_in_button"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    if-eqz v1, :cond_16

    .line 784
    const v7, 0x7f10030d

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewStub;

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    .line 785
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    if-eqz v7, :cond_a

    .line 786
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v7}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 787
    const v7, 0x7f10035e

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/widget/SecVoiceButton;

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    .line 788
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/android/incallui/widget/SecVoiceButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 790
    :cond_a
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->showSwitchCallButton(Z)V

    .line 807
    :cond_b
    :goto_2
    const-string v7, "ims_rcs_bb"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 808
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/incallui/secrcs/RcsShareUI;->setExtraVolumeAvailable(Z)V

    .line 809
    const v7, 0x7f1003f3

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewStub;

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    .line 810
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    if-eqz v7, :cond_d

    .line 811
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v7}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 812
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 813
    const v7, 0x7f1001ab

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    .line 814
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-eqz v7, :cond_c

    const-string v7, "feature_org"

    .line 815
    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 816
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    if-eqz v7, :cond_c

    .line 817
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    const/4 v8, 0x0

    const v9, 0x7f020143

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 820
    :cond_c
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    if-eqz v7, :cond_d

    .line 821
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/incallui/fragment/VoiceCallButtonFragment$5;

    invoke-direct {v8, p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$5;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 830
    :cond_d
    const v7, 0x7f1003f7

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewStub;

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButtonStub:Landroid/view/ViewStub;

    .line 831
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButtonStub:Landroid/view/ViewStub;

    if-eqz v7, :cond_f

    .line 832
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v7}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 833
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButtonStub:Landroid/view/ViewStub;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 834
    const v7, 0x7f1001aa

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    .line 835
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-eqz v7, :cond_e

    const-string v7, "feature_org"

    .line 836
    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 837
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    if-eqz v7, :cond_e

    .line 838
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    const/4 v8, 0x0

    const v9, 0x7f020142

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 842
    :cond_e
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    if-eqz v7, :cond_f

    .line 843
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;

    invoke-direct {v8, p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 853
    :cond_f
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-eqz v7, :cond_10

    .line 854
    const-string v7, "VoiceCallButtonFragment"

    const-string v8, "onUiResume called"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 855
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/UiAdapter;->getCallButtonPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v2

    .line 856
    .local v2, "buttonPresenter":Lcom/android/incallui/CallButtonPresenter;
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->onUiResume()V

    .line 858
    .end local v2    # "buttonPresenter":Lcom/android/incallui/CallButtonPresenter;
    :cond_10
    const v7, 0x7f10037d

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ToggleButton;

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 859
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_11

    .line 860
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 861
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    .line 863
    :cond_11
    const-string v7, "no_receiver_in_call"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 864
    const v7, 0x7f100098

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ToggleButton;

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    .line 865
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_13

    .line 866
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 867
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 868
    if-eqz v3, :cond_12

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v9, 0x8

    if-ne v7, v9, :cond_1a

    const/4 v7, 0x1

    :goto_3
    invoke-virtual {v8, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 869
    :cond_12
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 872
    :cond_13
    const v7, 0x7f100097

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    .line 873
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 874
    const v7, 0x7f100096

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ToggleButton;

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    .line 875
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 877
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isDialpadVisible()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->returnButtonsForDialpad(Z)V

    .line 878
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->returnButtonsForManager(Z)V

    .line 880
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateEndCallButton()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    monitor-exit p0

    return-void

    .line 747
    .end local v1    # "availablePSVT":Z
    :cond_14
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 780
    .restart local v1    # "availablePSVT":Z
    :cond_15
    :try_start_1
    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 781
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getDefaultVoiceSubscriptionId()I

    move-result v7

    invoke-static {v7}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT(I)Z

    move-result v1

    goto/16 :goto_1

    .line 791
    :cond_16
    const-string v7, "vzw_volte_ui"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 792
    const v7, 0x7f1003f2

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/widget/SecVoiceButton;

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    .line 793
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/android/incallui/widget/SecVoiceButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 794
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/incallui/widget/SecVoiceButton;->setVisibility(I)V

    .line 795
    const v7, 0x7f1003f9

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewStub;

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    .line 796
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 797
    :cond_17
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_18

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 798
    :cond_18
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    if-eqz v7, :cond_19

    .line 799
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v7}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 800
    const v7, 0x7f1002fa

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/widget/SecVoiceButton;

    iput-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    .line 801
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/android/incallui/widget/SecVoiceButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/incallui/widget/SecVoiceButton;->setVisibility(I)V

    .line 804
    :cond_19
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateVolteButton(Lcom/android/incallui/Call;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 721
    .end local v1    # "availablePSVT":Z
    .end local v3    # "call":Lcom/android/incallui/Call;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 868
    .restart local v1    # "availablePSVT":Z
    .restart local v3    # "call":Lcom/android/incallui/Call;
    :cond_1a
    const/4 v7, 0x0

    goto/16 :goto_3
.end method

.method public isEnabledExtraPageTwoPhone()Z
    .locals 1

    .prologue
    .line 338
    const-string v0, "support_twophone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    :cond_1
    const/4 v0, 0x1

    .line 344
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needToAnimateForOutgoingCall()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1550
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 1551
    .local v1, "fgCall":Lcom/android/incallui/Call;
    if-eqz v1, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    invoke-static {v5}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1552
    :cond_0
    const-string v5, "VoiceCallButtonFragment"

    const-string v6, "needToAnimateForOutgoingCall: is not dialing"

    invoke-static {v5, v6, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1569
    :goto_0
    return v3

    .line 1555
    :cond_1
    invoke-static {v1}, Lcom/android/incallui/util/SecCallExtraUtils;->getOutgoingFromDialer(Lcom/android/incallui/Call;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1556
    const-string v5, "VoiceCallButtonFragment"

    const-string v6, "needToAnimateForOutgoingCall: skip"

    invoke-static {v5, v6, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1559
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-static {v5, v1, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1560
    .local v0, "bgCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_3

    .line 1561
    const-string v5, "VoiceCallButtonFragment"

    const-string v6, "needToAnimateForOutgoingCall: held call is exist"

    invoke-static {v5, v6, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1564
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/SecOpenThemeUtils;->getCurrentTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1565
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 1566
    const-string v5, "VoiceCallButtonFragment"

    const-string v6, "needToAnimateForOutgoingCall: theme"

    invoke-static {v5, v6, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    move v3, v4

    .line 1569
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 187
    const-string v0, "VoiceCallButtonFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUnder:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateVerticalMargin(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 191
    :cond_0
    const-string v0, "support_outgoing_dialer_animation"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->animateForOutgoingCall()V

    .line 194
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 349
    const-string v0, "VoiceCallButtonFragment"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallButtonFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 351
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUnder:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateVerticalMargin(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 354
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallButtonFragment;->onCreate(Landroid/os/Bundle;)V

    .line 199
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 247
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 248
    :cond_0
    const v1, 0x7f040161

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    .line 253
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f100289

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mNavigationBarArea:Landroid/view/View;

    .line 254
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateNavigationBar()V

    .line 256
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f1003e5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCallButtonContainer:Landroid/view/View;

    .line 258
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f1003cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    .line 259
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f100377

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    .line 261
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f100280

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    .line 262
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f10037c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    .line 263
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    const/16 v2, 0x5051

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setGravity(I)V

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateEndCallButtonColor()V

    .line 269
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f1003ef

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonBottom:Landroid/view/View;

    .line 270
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonBottom:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 271
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonBottom:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-nez v1, :cond_3

    .line 287
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f1003ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    .line 288
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 289
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 290
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->inflateInCallButtons(Landroid/view/View;)V

    .line 294
    :cond_3
    const-string v1, "enable_conference_info_banner"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 295
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-nez v1, :cond_4

    .line 296
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f1002f4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    .line 298
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-eqz v1, :cond_5

    .line 299
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 300
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f10025a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mConferenceInfoText:Landroid/widget/TextView;

    .line 304
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isShowDialpadRequested()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 306
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 307
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/incallui/fragment/VoiceCallButtonFragment$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$3;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 331
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 332
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 334
    :cond_7
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    return-object v1

    .line 250
    :cond_8
    const v1, 0x7f040160

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 203
    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onDestroy()V

    .line 204
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->dismissUSAVoLTEDialogs()V

    .line 205
    return-void
.end method

.method public onEmergencyModeChange(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 1281
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateVoiceCallButtons()V

    .line 1282
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onPause()V

    .line 231
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    const-string v1, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->isKinetoVowifiExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->unregisterForWfcRegistrationStatus()V

    .line 236
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onResume()V

    .line 210
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V

    .line 213
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    const-string v1, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->isKinetoVowifiExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoWifiStateListener:Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VoWifiStateTracker;->registerForWfcRegistrationStatus(Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mIsSprWFCRegistered:Z

    .line 216
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mIsSprWFCRegistered:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateEndCallButton(Z)V

    .line 219
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 223
    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onStart()V

    .line 224
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 240
    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onStop()V

    .line 241
    return-void
.end method

.method public queryForSwappedCall()V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method protected recordClicked()V
    .locals 5

    .prologue
    .line 987
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v1

    .line 988
    .local v1, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v1, :cond_1

    .line 990
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 991
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_record(Lcom/android/incallui/Call;Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V

    .line 992
    :cond_0
    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->toggleRecord()V

    .line 994
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    return-void
.end method

.method public returnButtonsForDialpad(Z)V
    .locals 3
    .param p1, "showDialpad"    # Z

    .prologue
    .line 1193
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1194
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1196
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1197
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    .line 1200
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 1201
    .local v0, "inCallButtonDeltaY":F
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz p1, :cond_3

    .end local v0    # "inCallButtonDeltaY":F
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .restart local v0    # "inCallButtonDeltaY":F
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public returnButtonsForManager(Z)V
    .locals 5
    .param p1, "showManager"    # Z

    .prologue
    .line 1269
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUnder:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-nez v3, :cond_1

    .line 1277
    :cond_0
    :goto_0
    return-void

    .line 1270
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1271
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 1273
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-static {v3}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v1, v3

    .line 1274
    .local v1, "endY":F
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUnder:Landroid/view/View;

    invoke-static {v3}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUnder:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v2, v3

    .line 1275
    .local v2, "startY":F
    sub-float v0, v1, v2

    .line 1276
    .local v0, "buttonDeltaY":F
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUnder:Landroid/view/View;

    if-eqz p1, :cond_3

    .end local v0    # "buttonDeltaY":F
    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .restart local v0    # "buttonDeltaY":F
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setAudio(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 920
    iget v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPrevAudioMode:I

    if-eq v1, p1, :cond_2

    .line 921
    iget v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPrevAudioMode:I

    if-eqz v1, :cond_0

    .line 922
    const/4 v0, 0x0

    .line 923
    .local v0, "stringId":I
    packed-switch p1, :pswitch_data_0

    .line 934
    .end local v0    # "stringId":I
    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateAudioButtons(I)V

    .line 935
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateExtraVolumeButtonAboutModeChanged()V

    .line 937
    iput p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPrevAudioMode:I

    .line 941
    :cond_1
    :goto_0
    return-void

    .line 938
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isFolerClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 939
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateAudioButtons(I)V

    goto :goto_0

    .line 923
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 497
    iput-boolean p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mIsEnabled:Z

    .line 499
    if-nez p1, :cond_a

    .line 500
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 503
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 504
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 505
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 506
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 507
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 508
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecVoiceButton;->setEnabled(Z)V

    .line 509
    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecVoiceButton;->setEnabled(Z)V

    .line 510
    :cond_9
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 511
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 514
    :cond_a
    return-void
.end method

.method public setEndCallButtonIcon(Z)V
    .locals 2
    .param p1, "showVoWiFi"    # Z

    .prologue
    .line 1443
    const v0, 0x7f02025b

    .line 1444
    .local v0, "resId":I
    if-eqz p1, :cond_0

    .line 1445
    const-string v1, "spr_vowifi_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1446
    const v0, 0x7f0202a2

    .line 1451
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1452
    return-void

    .line 1448
    :cond_1
    const v0, 0x7f020054

    goto :goto_0
.end method

.method public setFocusInCallButton(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 1456
    const-string v0, "VoiceCallButtonFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusInCallButton flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1458
    if-eqz p1, :cond_1

    .line 1459
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1464
    :cond_0
    :goto_0
    return-void

    .line 1461
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateMuteButton()V

    .line 886
    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0
    .param p1, "modeMask"    # I

    .prologue
    .line 945
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateAudioButtons(I)V

    .line 946
    return-void
.end method

.method public setViewStateBeforeOutgoingAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1401
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1403
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1404
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1406
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 1407
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1409
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1410
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1412
    :cond_2
    return-void
.end method

.method public setupRcsCallButtons()V
    .locals 7

    .prologue
    .line 357
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    :cond_0
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v0, :cond_2

    .line 359
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButtonStub:Landroid/view/ViewStub;

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    invoke-virtual/range {v0 .. v6}, Lcom/android/incallui/secrcs/RcsShareUI;->setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/view/ViewStub;Landroid/widget/Button;)V

    .line 368
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->showSwitchCallButtonForRCS()V

    .line 369
    return-void

    .line 363
    :cond_2
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButtonStub:Landroid/view/ViewStub;

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    invoke-virtual/range {v0 .. v6}, Lcom/android/incallui/secrcs/RcsShareUI;->setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/view/ViewStub;Landroid/widget/Button;)V

    goto :goto_0
.end method

.method public showConferenceStateInfoBanner(ZLjava/lang/String;)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1502
    const-string v0, "VoiceCallButtonFragment"

    const-string v1, "showConferenceStateInfoBanner"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1504
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 1505
    if-eqz p1, :cond_1

    .line 1506
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mConferenceInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1508
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mConferenceInfoText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1516
    :cond_0
    :goto_0
    return-void

    .line 1511
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mConferenceInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1512
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mConferenceInfoText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showSwitchCallButton(Z)V
    .locals 7
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 699
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v0

    .line 700
    .local v0, "availablePSVT":Z
    const-string v4, "usa_gsm_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 701
    const-string v4, "psvt_support"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    .line 705
    :cond_0
    :goto_0
    const-string v4, "show_switch_icon_in_button"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_3

    .line 718
    :cond_1
    :goto_1
    return-void

    .line 702
    :cond_2
    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 703
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getDefaultVoiceSubscriptionId()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT(I)Z

    move-result v0

    goto :goto_0

    .line 709
    :cond_3
    const-string v4, "VoiceCallButtonFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showSwitchCallButton show = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 710
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v4

    if-nez p1, :cond_6

    :goto_2
    invoke-virtual {v4, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->setNoShowVolumeAvailable(Z)V

    .line 712
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_4

    .line 713
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    if-eqz p1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 714
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v1, :cond_5

    .line 715
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz p1, :cond_8

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Lcom/android/incallui/widget/SecVoiceButton;->setVisibility(I)V

    .line 716
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    .line 717
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz p1, :cond_9

    :goto_5
    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_1

    :cond_6
    move v1, v2

    .line 710
    goto :goto_2

    :cond_7
    move v1, v3

    .line 713
    goto :goto_3

    :cond_8
    move v1, v3

    .line 715
    goto :goto_4

    :cond_9
    move v3, v2

    .line 717
    goto :goto_5
.end method

.method public showSwitchCallButtonForRCS()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 690
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    .line 691
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 692
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->showSwitchCallButton(Z)V

    .line 696
    :goto_0
    return-void

    .line 694
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->showSwitchCallButton(Z)V

    goto :goto_0
.end method

.method public updateAudioButton()V
    .locals 2

    .prologue
    .line 950
    const-string v0, "VoiceCallButtonFragment"

    const-string v1, "updateAudioButton()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateAudioButtons(I)V

    .line 952
    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 518
    if-nez p1, :cond_0

    .line 546
    :goto_0
    return-void

    .line 519
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    .line 520
    .local v2, "state":I
    const/4 v0, 0x0

    .line 523
    .local v0, "isAnsweringMachineOn":Z
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 524
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 525
    const-string v4, "VoiceCallButtonFragment"

    const-string v7, "updateCallButtons - answering machine is on ."

    invoke-static {v4, v7, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 526
    const/4 v0, 0x1

    .line 529
    :cond_1
    if-nez v0, :cond_6

    iget v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPrevCallState:I

    const/16 v7, 0x9

    if-ne v4, v7, :cond_2

    .line 530
    invoke-static {v2}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 531
    :cond_2
    invoke-static {v2}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v2}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 532
    :cond_3
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 533
    :cond_4
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 534
    .local v1, "isShowManager":Z
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 535
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v1, :cond_8

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/view/View;->setAlpha(F)V

    .line 538
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v4, :cond_6

    .line 539
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 540
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v1, :cond_9

    :goto_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 543
    .end local v1    # "isShowManager":Z
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateVoiceCallButtons(Lcom/android/incallui/Call;)V

    .line 544
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateEndCallButton()V

    .line 545
    iput v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPrevCallState:I

    goto :goto_0

    :cond_7
    move v1, v3

    .line 533
    goto :goto_1

    .restart local v1    # "isShowManager":Z
    :cond_8
    move v4, v6

    .line 536
    goto :goto_2

    :cond_9
    move v5, v6

    .line 540
    goto :goto_3
.end method

.method public updateDiapadButton()V
    .locals 5

    .prologue
    .line 1138
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isDialpadVisible()Z

    move-result v1

    .line 1139
    .local v1, "visible":Z
    const-string v2, "VoiceCallButtonFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDiapadButton..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 1146
    if-eqz v1, :cond_2

    .line 1147
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1148
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1149
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    const v3, 0x7f090255

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1151
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1163
    :cond_1
    :goto_0
    return-void

    .line 1153
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1154
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1155
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    const v3, 0x7f090256

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1157
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090256

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1159
    :catch_0
    move-exception v0

    .line 1160
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VoiceCallButtonFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDiapadButton: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public updateEndCallButton(Z)V
    .locals 2
    .param p1, "imson"    # Z

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 1521
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->canExtraVolumeButton()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1522
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->setEndCallButtonIcon(Z)V

    .line 1523
    :cond_1
    return-void

    .line 1521
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateEndCallButtonColor()V
    .locals 4

    .prologue
    .line 1752
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1753
    .local v0, "call":Lcom/android/incallui/Call;
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1754
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 1755
    :cond_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isDialpadVisible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1756
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const v2, 0x7f02019b

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1757
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0117

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1763
    :cond_1
    :goto_0
    return-void

    .line 1759
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const v2, 0x7f02019a

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1760
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0116

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public updateExtraVolumeButton()V
    .locals 3

    .prologue
    .line 1117
    const-string v1, "updateExtraVolumeButton()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1118
    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->isExtraVolOn()Z

    move-result v0

    .line 1119
    .local v0, "isExtraVolOn":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- isExtraVolOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1121
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    .line 1122
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1124
    :cond_0
    return-void
.end method

.method protected updateMuteButton()V
    .locals 4

    .prologue
    .line 1127
    const-string v1, "VoiceCallButtonFragment"

    const-string v2, "updateMuteButton()..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    .line 1129
    .local v0, "isMuted":Z
    const-string v1, "VoiceCallButtonFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- isMuted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    .line 1132
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1134
    :cond_0
    return-void
.end method

.method protected updateVoiceCallButtons()V
    .locals 4

    .prologue
    .line 549
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 550
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateVoiceCallButtons(Lcom/android/incallui/Call;)V

    .line 551
    return-void
.end method
