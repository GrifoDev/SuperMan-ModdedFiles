.class public Lcom/android/incallui/fragment/VoiceCallButtonFragment;
.super Lcom/android/incallui/fragment/CallButtonFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/fragment/VoiceCallButtonFragment$ConnectivityReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VoiceCallButtonFragment"

.field protected static mCurrentPageScrollState:I


# instance fields
.field private isWiFiConnected:Z

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

.field protected mHoldButton:Landroid/widget/ToggleButton;

.field protected mInCallButtonLayout:Landroid/view/ViewGroup;

.field protected mInCallButtons:Landroid/view/View;

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

.field protected mVoiceCallCardDummyContainer:Landroid/view/View;

.field private networkStateReceiver:Lcom/android/incallui/fragment/VoiceCallButtonFragment$ConnectivityReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCurrentPageScrollState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/fragment/CallButtonFragment;-><init>()V

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPreviousInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iput v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPrevAudioMode:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPrevCallState:I

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->networkStateReceiver:Lcom/android/incallui/fragment/VoiceCallButtonFragment$ConnectivityReceiver;

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isWiFiConnected:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mIsSprWFCRegistered:Z

    new-instance v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$1;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoWifiStateListener:Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;

    new-instance v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/fragment/VoiceCallButtonFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mIsSprWFCRegistered:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/fragment/VoiceCallButtonFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->checkThenModify(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/fragment/VoiceCallButtonFragment;Lcom/android/incallui/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->switchToVideoCallClicked(Lcom/android/incallui/Call;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateHoldButton()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->animateForEndCall()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->emailClicked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/incallui/fragment/VoiceCallButtonFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateAudioButtons(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)Landroid/view/ViewStub;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonAnim:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isWiFiConnected:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/incallui/fragment/VoiceCallButtonFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isWiFiConnected:Z

    return p1
.end method

.method private animateForEndCall()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    return-void
.end method

.method private animateForOutgoingCall()V
    .locals 6

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToAnimateForOutgoingCall()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "VoiceCallButtonFragment"

    const-string v1, "animateForOutgoingCall"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100304

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonAnim:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonAnim:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    const-string v0, "VoiceCallButtonFragment"

    const-string v1, "animateForOutgoingCall: can not find view"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateEndCallButtonColor()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonAnim:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonAnim:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a056f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0342

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-float v3, v1, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v5, 0x7f100305

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    div-float v5, v0, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    div-float/2addr v0, v1

    invoke-virtual {v4, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$10;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;IILandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_0
.end method

.method private canExtraVolumeButton()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->isCallForwardingState()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "spr_vowifi_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->getInstance()Lcom/android/incallui/util/DesktopModeManager;

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopDockConnected()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private checkThenModify(I)V
    .locals 8

    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isVoLTESettingsEnabled()I

    move-result v3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    const-string v4, "VoiceCallButtonFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkThenModify, enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", modifyPossible: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v3, :cond_4

    if-ne v3, v7, :cond_2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volteSettingErrorShowNeverAgain"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->showVoLTESettingErrorDialog(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->showModifyErrorDialog()V

    goto :goto_0

    :cond_5
    const v0, 0x7f100489

    if-ne p1, v0, :cond_6

    invoke-static {v7}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto :goto_0

    :cond_6
    const v0, 0x7f100392

    if-ne p1, v0, :cond_0

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto :goto_0
.end method

.method private dismissUSAVoLTEDialogs()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    :cond_1
    return-void
.end method

.method private emailClicked()V
    .locals 8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v4, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-boolean v0, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "data1"

    aput-object v5, v2, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    move-object v0, v4

    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "data1"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VoiceCallButtonFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emailClicked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v4, v0

    :cond_3
    :goto_2
    invoke-static {v4}, Lcom/android/incallui/util/PackageHelpers;->launchEmail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private showModifyErrorDialog()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getPrimaryCallerName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Other party"

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090391

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090392

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/incallui/fragment/VoiceCallButtonFragment$8;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$8;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showVoLTESettingErrorDialog(I)V
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/incallui/fragment/VoiceCallButtonFragment$9;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$9;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090394

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090395

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090393

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

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

    const/4 v3, 0x1

    const-string v0, "usa_gsm_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09037b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    :cond_3
    return-void

    :cond_4
    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090383

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090382

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getPrimaryCallerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_GSM:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->checkAndNotifyDataUsageLimit()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_7
    invoke-virtual {p1}, Lcom/android/incallui/Call;->setModifyRequestDummy()V

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->canUpgradeToVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto :goto_0
.end method

.method private updateAudioButtons(I)V
    .locals 6

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isAudio(I)Z

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isAudio(I)Z

    move-result v1

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

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "VoiceCallButtonFragment"

    const-string v1, "updateAudioButtons - bluetooth disabled for Bike mode call"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateMuteButton()V

    return-void
.end method

.method private updateCallButtonWeight(Landroid/content/res/Configuration;)V
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

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0034

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    move v2, v1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoiceCallCardDummyContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoiceCallCardDummyContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoiceCallCardDummyContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0033

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    move v2, v1

    move v1, v0

    goto :goto_1
.end method

.method private updateEndCallButton()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "show_vowifi_endcall_button"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateEndCallButtonColor()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_7

    :cond_1
    const-string v3, "spr_vowifi_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableVoWFi()Z

    move-result v0

    :goto_1
    const-string v3, "att_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isWiFiConnected:Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isWiFiConnected:Z

    const-string v3, "VoiceCallButtonFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEndCallButton for SoftPhone isWiFiConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isWiFiConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v3, "VoiceCallButtonFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEndCallButton = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_4

    const-string v3, "spr_vowifi_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->canExtraVolumeButton()Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_c

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->setEndCallButtonIcon(Z)V

    goto/16 :goto_0

    :cond_5
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableVoWFi()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto/16 :goto_1

    :cond_6
    move v0, v2

    goto/16 :goto_1

    :cond_7
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v0, v1

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto/16 :goto_1

    :cond_a
    move v0, v2

    goto :goto_2

    :cond_b
    move v1, v2

    goto :goto_3

    :cond_c
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateEndCallButtonColor()V

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto/16 :goto_1
.end method

.method private updateExtraVolumeButtonAboutModeChanged()V
    .locals 3

    const-string v0, "updateExtraVolumeButtonAboutModeChanged()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->isUncertainExtraVolOn()Z

    move-result v0

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

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->showExtraVolumeToast()V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private updateFirstLineButtons()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isDialpadVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHoldButton()V
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateVideoBtnImage(I)V
    .locals 3

    const v2, 0x3ecccccd    # 0.4f

    const/4 v1, 0x1

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

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecVoiceButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecVoiceButton;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/widget/SecVoiceButton;->setEnabledAndAlpha(ZF)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/widget/SecVoiceButton;->setEnabledAndAlpha(ZF)V

    goto :goto_0
.end method

.method private updateVoiceCallButtons(Lcom/android/incallui/Call;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateAudioButtons(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateExtraVolumeButton()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateDiapadButton()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateHoldButton()V

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->enableVoiceCallButtons(Lcom/android/incallui/Call;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateFirstLineButtons()V

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateVolteButton(Lcom/android/incallui/Call;)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->canRecord(Lcom/android/incallui/Call;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateRecordButton(Z)V

    goto :goto_0
.end method

.method private updateVolteButton(Lcom/android/incallui/Call;)V
    .locals 11

    const/16 v10, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v10, :cond_8

    move v3, v2

    :goto_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/incallui/CallList;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_3
    move v4, v2

    :goto_3
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/UiAdapter;->isSwapProcessing()Z

    move-result v5

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isVoLTESettingsEnabled()I

    move-result v6

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isVZWLTEVideoCallMenuShow()Z

    move-result v7

    if-nez v0, :cond_a

    if-nez v3, :cond_a

    if-nez v4, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getSuppService()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isSafetyAssistanceMode()Z

    move-result v0

    if-nez v0, :cond_a

    if-nez v5, :cond_a

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasOtherCallTTYvalue()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtySetting()I

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallUIConfig;->isTempSimSwap()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    :goto_4
    const-string v8, "VoiceCallButtonFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateVolteButton() : isConference:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " InCallUISystemDB.getSuppService():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getSuppService()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " VOLTE_SETTING_ENABLED:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " swapProcessing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IsTTyOff:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtySetting()I

    move-result v3

    if-nez v3, :cond_b

    move v3, v2

    :goto_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v3, :cond_6

    if-eqz v7, :cond_d

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v3, v1}, Lcom/android/incallui/widget/SecVoiceButton;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v3, v1}, Lcom/android/incallui/widget/SecVoiceButton;->setVisibility(I)V

    if-eqz v0, :cond_c

    invoke-direct {p0, v6}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateVideoBtnImage(I)V

    :goto_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v10}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_6
    :goto_7
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtySetting()I

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasOtherCallTTYvalue()Z

    move-result v0

    if-nez v0, :cond_10

    :goto_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto/16 :goto_1

    :cond_8
    move v3, v1

    goto/16 :goto_2

    :cond_9
    move v4, v1

    goto/16 :goto_3

    :cond_a
    move v0, v1

    goto/16 :goto_4

    :cond_b
    move v3, v1

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecVoiceButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecVoiceButton;->setEnabled(Z)V

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0, v10}, Lcom/android/incallui/widget/SecVoiceButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v10}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0, v10}, Lcom/android/incallui/widget/SecVoiceButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_f
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_7

    :cond_10
    move v2, v1

    goto :goto_8
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "VoiceCallButtonFragment"

    const-string v1, "animateForAnswerCall"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/samsung/android/b/a/d;

    invoke-direct {v1}, Lcom/samsung/android/b/a/d;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public animateForManager(ZZ)V
    .locals 11

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/16 v5, 0xff

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "VoiceCallButtonFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animateForManager...showManager:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " direct:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "VoiceCallButtonFragment"

    const-string v1, "animateForManager...isRunning"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_f

    move v0, v1

    :goto_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v6, [F

    if-eqz p1, :cond_10

    move v2, v3

    :goto_2
    aput v2, v9, v1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v6, [F

    if-eqz p1, :cond_11

    :goto_3
    aput v3, v9, v1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/samsung/android/b/a/f;

    invoke-direct {v3}, Lcom/samsung/android/b/a/f;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    int-to-long v8, v0

    invoke-virtual {v2, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$6;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_16

    move v0, v1

    :goto_5
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0}, Lcom/android/incallui/widget/SecVoiceButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_17

    move v0, v1

    :goto_6
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_18

    move v0, v1

    :goto_7
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_19

    move v0, v1

    :goto_8
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_1a

    move v0, v1

    :goto_9
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_1b

    move v0, v1

    :goto_a
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_9
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_1c

    move v0, v1

    :goto_b
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_1d

    move v0, v1

    :goto_c
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_b
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_1e

    move v0, v1

    :goto_d
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_c
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v0

    const-string v2, "usa_gsm_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v0, v6

    :cond_d
    :goto_e
    const-string v2, "show_switch_icon_in_button"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0}, Lcom/android/incallui/widget/SecVoiceButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_20

    move v0, v1

    :goto_f
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_e
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0}, Lcom/android/incallui/widget/SecVoiceButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_21

    :goto_10
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0065

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto/16 :goto_1

    :cond_10
    move v2, v4

    goto/16 :goto_2

    :cond_11
    move v3, v4

    goto/16 :goto_3

    :cond_12
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-static {v2}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v2

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v2, v7

    int-to-float v2, v2

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUnder:Landroid/view/ViewGroup;

    invoke-static {v7}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUnder:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    sub-float/2addr v2, v7

    iget-object v7, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUnder:Landroid/view/ViewGroup;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v6, [F

    if-eqz p1, :cond_13

    :goto_11
    aput v2, v9, v1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v6, [F

    if-eqz p1, :cond_14

    move v2, v3

    :goto_12
    aput v2, v10, v1

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/ViewGroup;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v6, [F

    if-eqz p1, :cond_15

    :goto_13
    aput v3, v10, v1

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_4

    :cond_13
    move v2, v3

    goto :goto_11

    :cond_14
    move v2, v4

    goto :goto_12

    :cond_15
    move v3, v4

    goto :goto_13

    :cond_16
    move v0, v5

    goto/16 :goto_5

    :cond_17
    move v0, v5

    goto/16 :goto_6

    :cond_18
    move v0, v5

    goto/16 :goto_7

    :cond_19
    move v0, v5

    goto/16 :goto_8

    :cond_1a
    move v0, v5

    goto/16 :goto_9

    :cond_1b
    move v0, v5

    goto/16 :goto_a

    :cond_1c
    move v0, v5

    goto/16 :goto_b

    :cond_1d
    move v0, v5

    goto/16 :goto_c

    :cond_1e
    move v0, v5

    goto/16 :goto_d

    :cond_1f
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT(I)Z

    move-result v0

    goto/16 :goto_e

    :cond_20
    move v0, v5

    goto/16 :goto_f

    :cond_21
    move v1, v5

    goto/16 :goto_10
.end method

.method public animateForMoveDialpad(Z)V
    .locals 6

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0585

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    :goto_1
    aput v0, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/samsung/android/b/a/f;

    invoke-direct {v2}, Lcom/samsung/android/b/a/f;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public animateForRevealEndCallButton()V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v4, [F

    aput v5, v2, v6

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v4, [F

    aput v5, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v4, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$7;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$7;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public animateForRevealViews()V
    .locals 5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public enableDialpadButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected enableVoiceCallButtons(Lcom/android/incallui/Call;)V
    .locals 14

    const/high16 v12, 0x10000000

    const/16 v8, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_2
    move v0, v1

    :goto_1
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "VoiceCallButtonFragment"

    const-string v2, "enableVoiceCallButtons - disable buttons becauase conference call is under disconnecting"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v4, 0xd

    if-eq v2, v4, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_18

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v8, :cond_19

    move v4, v3

    :goto_3
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getHasBeenVideoCall()Z

    move-result v5

    if-nez v5, :cond_1a

    move v5, v3

    :goto_4
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v6

    if-eqz v6, :cond_1b

    if-nez v2, :cond_1b

    if-eqz v5, :cond_1b

    move v5, v3

    :goto_5
    const/4 v6, 0x4

    invoke-static {v6}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v6

    if-eqz v6, :cond_5

    move v5, v1

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v6

    if-eqz v6, :cond_6

    move v5, v1

    :cond_6
    const/16 v6, 0x40

    invoke-virtual {p1, v6}, Lcom/android/incallui/Call;->can(I)Z

    move-result v6

    if-eqz v6, :cond_1c

    if-nez v2, :cond_1c

    if-nez v4, :cond_1c

    move v6, v3

    :goto_6
    const/16 v7, 0x10

    invoke-static {v7}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v7

    if-eqz v7, :cond_32

    move v11, v1

    :goto_7
    if-nez v2, :cond_1d

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->canExtraVolumeButton()Z

    move-result v6

    if-eqz v6, :cond_1d

    move v6, v3

    :goto_8
    invoke-static {v8}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v7

    if-eqz v7, :cond_31

    move v10, v1

    :goto_9
    if-nez v2, :cond_1e

    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v7

    if-eqz v7, :cond_1e

    move v7, v3

    :goto_a
    const/16 v8, 0x20

    invoke-static {v8}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEncryptionMode()Z

    move-result v8

    if-eqz v8, :cond_30

    :cond_7
    move v8, v1

    :goto_b
    invoke-virtual {p1, v12}, Lcom/android/incallui/Call;->can(I)Z

    move-result v9

    if-eqz v9, :cond_1f

    if-nez v2, :cond_1f

    if-nez v4, :cond_1f

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isSafetyAssistanceMode()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isSwapProcessing()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isReserveBatteryOn()Z

    move-result v2

    if-nez v2, :cond_1f

    move v2, v3

    :goto_c
    const-string v9, "usa_gsm_volte_ui"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2f

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v9, 0x3

    if-ne v2, v9, :cond_20

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->checkPrimaryEmergencyCall()Z

    move-result v2

    if-nez v2, :cond_20

    move v9, v3

    :goto_d
    if-eqz v9, :cond_21

    invoke-virtual {p1, v12}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    if-eqz v2, :cond_21

    move v2, v3

    :goto_e
    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->isCallForwardingState()Z

    move-result v12

    if-eqz v12, :cond_2e

    move v8, v1

    move v6, v1

    move v10, v1

    :goto_f
    const-string v12, "support_nsri_secure"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isNsriSecureCallMode()Z

    move-result v12

    if-eqz v12, :cond_8

    move v8, v1

    move v6, v1

    move v11, v1

    :cond_8
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v12

    if-nez v12, :cond_9

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOutgoingCall()Z

    move-result v12

    if-nez v12, :cond_9

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v12

    if-eqz v12, :cond_b

    :cond_9
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isSupported(I)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeMode()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "VoiceCallButtonFragment"

    const-string v8, "bluetooth disabled for Bike mode call"

    invoke-static {v5, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v1

    :cond_a
    move v5, v1

    :cond_b
    if-nez v4, :cond_22

    move v4, v3

    :goto_10
    const-string v12, "feature_kdi"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-static {p1}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v12

    if-nez v12, :cond_c

    invoke-static {p1}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v12

    if-eqz v12, :cond_d

    :cond_c
    move v4, v1

    move v5, v1

    :cond_d
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v12, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-eqz v12, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->showSwitchCallButtonForRCS()V

    :cond_e
    iget-object v12, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v12, :cond_f

    iget-object v12, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_23

    if-eqz v5, :cond_23

    move v5, v3

    :goto_11
    invoke-virtual {v12, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_f
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v5, :cond_10

    iget-object v12, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_24

    if-eqz v10, :cond_24

    iget-boolean v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mIsSprWFCRegistered:Z

    if-nez v5, :cond_24

    move v5, v3

    :goto_12
    invoke-virtual {v12, v5}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_10
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v5, :cond_11

    iget-object v10, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_25

    if-eqz v8, :cond_25

    move v5, v3

    :goto_13
    invoke-virtual {v10, v5}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_11
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v5, :cond_12

    iget-object v8, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_26

    if-eqz v6, :cond_26

    move v5, v3

    :goto_14
    invoke-virtual {v8, v5}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_12
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    if-eqz v5, :cond_13

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_27

    if-eqz v7, :cond_27

    move v5, v3

    :goto_15
    invoke-virtual {v6, v5}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_13
    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_28

    if-eqz v4, :cond_28

    move v4, v3

    :goto_16
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_14
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v4, :cond_15

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_29

    if-eqz v11, :cond_29

    move v4, v3

    :goto_17
    invoke-virtual {v5, v4}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_15
    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_16
    const-string v4, "usa_gsm_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    if-eqz v9, :cond_2b

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v2, :cond_2a

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_18
    invoke-virtual {v4, v9, v2}, Lcom/android/incallui/widget/SecVoiceButton;->setEnabledAndAlpha(ZF)V

    :cond_17
    :goto_19
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_2d

    invoke-virtual {v2, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->canRecord(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_2d

    if-eqz v0, :cond_2d

    :goto_1a
    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_18
    move v2, v1

    goto/16 :goto_2

    :cond_19
    move v4, v1

    goto/16 :goto_3

    :cond_1a
    move v5, v1

    goto/16 :goto_4

    :cond_1b
    move v5, v1

    goto/16 :goto_5

    :cond_1c
    move v6, v1

    goto/16 :goto_6

    :cond_1d
    move v6, v1

    goto/16 :goto_8

    :cond_1e
    move v7, v1

    goto/16 :goto_a

    :cond_1f
    move v2, v1

    goto/16 :goto_c

    :cond_20
    move v9, v1

    goto/16 :goto_d

    :cond_21
    move v2, v1

    goto/16 :goto_e

    :cond_22
    move v4, v1

    goto/16 :goto_10

    :cond_23
    move v5, v1

    goto/16 :goto_11

    :cond_24
    move v5, v1

    goto/16 :goto_12

    :cond_25
    move v5, v1

    goto/16 :goto_13

    :cond_26
    move v5, v1

    goto/16 :goto_14

    :cond_27
    move v5, v1

    goto/16 :goto_15

    :cond_28
    move v4, v1

    goto/16 :goto_16

    :cond_29
    move v4, v1

    goto :goto_17

    :cond_2a
    const v2, 0x3ecccccd    # 0.4f

    goto :goto_18

    :cond_2b
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v2, :cond_17

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v0, :cond_2c

    if-eqz v9, :cond_2c

    move v2, v3

    :goto_1b
    invoke-virtual {v4, v2}, Lcom/android/incallui/widget/SecVoiceButton;->setEnabled(Z)V

    goto :goto_19

    :cond_2c
    move v2, v1

    goto :goto_1b

    :cond_2d
    move v3, v1

    goto :goto_1a

    :cond_2e
    move v13, v10

    move v10, v6

    move v6, v13

    goto/16 :goto_f

    :cond_2f
    move v9, v2

    goto/16 :goto_e

    :cond_30
    move v8, v3

    goto/16 :goto_b

    :cond_31
    move v10, v3

    goto/16 :goto_9

    :cond_32
    move v11, v6

    goto/16 :goto_7

    :cond_33
    move v0, v3

    goto/16 :goto_1
.end method

.method public extraVolumeClicked()V
    .locals 0

    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->toggleExtraVolume()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateExtraVolumeButton()V

    return-void
.end method

.method public getAddCallButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getBluetoothButton()Landroid/widget/ToggleButton;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method public getEndCallButtonDiameter()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHeight()I

    move-result v0

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

    return v0
.end method

.method public getEndCallButtonPivot()[I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionLeft(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getEndCallButtonDiameter()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    const/4 v0, 0x2

    new-array v0, v0, [I

    add-int/2addr v2, v3

    aput v2, v0, v4

    add-int/2addr v1, v3

    aput v1, v0, v5

    const-string v1, "VoiceCallButtonFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEndCallButtonPivot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getExtraVolumeButton()Landroid/widget/ToggleButton;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method public getPromotedButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPromotedButtonStub()Landroid/view/ViewStub;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method public getShareButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getShareButtonStub()Landroid/view/ViewStub;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButtonStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method protected declared-synchronized inflateInCallButtons(Landroid/view/View;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    const v0, 0x7f100487

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    const v0, 0x7f100488

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/ViewGroup;

    const v0, 0x7f100492

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUnder:Landroid/view/ViewGroup;

    const v0, 0x7f100424

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    const-string v0, "VoiceCallButtonFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inflateInCallButtons  mAddCallButton : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f10048c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    :cond_1
    const v0, 0x7f100420

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    :cond_2
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const v0, 0x7f10048b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f1003e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    const-string v0, "hold_key_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "hold_key_record_calls_enable_sharedpref"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1c

    move v0, v2

    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v4

    const-string v5, "VoiceCallButtonFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hold_key_record_calls_enable_sharedpref : isOn - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPreviousInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v4, v0, :cond_6

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v4, v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPreviousInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v5, :cond_5

    :cond_4
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v4, v0, :cond_6

    :cond_5
    const v0, 0x7f0900fa

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    :cond_6
    iput-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPreviousInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    :cond_7
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    :cond_8
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->onAMRecorderStateChanged()V

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->setCallButtonContainerVisibility(Z)V

    :cond_a
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v0

    const-string v4, "usa_gsm_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v0, "mmtel-video"

    invoke-static {v0}, Lcom/android/incallui/util/ImsCommonUtils;->isServiceAvailable(Ljava/lang/String;)Z

    move-result v0

    :cond_b
    :goto_1
    const-string v4, "show_switch_icon_in_button"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-nez v0, :cond_1e

    const v0, 0x7f1003a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f1003fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/SecVoiceButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcom/android/incallui/widget/SecVoiceButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->showSwitchCallButton(Z)V

    :cond_d
    :goto_2
    const-string v0, "ims_rcs_bb"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_e
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/incallui/secrcs/RcsShareUI;->setExtraVolumeAvailable(Z)V

    const v0, 0x7f10048a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    const-string v0, "VoiceCallButtonFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inflateInCallButtons mPromotedButtonStub : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    const v0, 0x7f100222

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-eqz v0, :cond_f

    const-string v0, "feature_org"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    const/4 v4, 0x0

    const v5, 0x7f0201b6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_f
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/incallui/fragment/VoiceCallButtonFragment$3;

    invoke-direct {v4, p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$3;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    const v0, 0x7f10048e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButtonStub:Landroid/view/ViewStub;

    const-string v0, "VoiceCallButtonFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inflateInCallButtons mShareButtonStub : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButtonStub:Landroid/view/ViewStub;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    const v0, 0x7f100221

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-eqz v0, :cond_11

    const-string v0, "feature_org"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    const/4 v4, 0x0

    const v5, 0x7f0201b5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_11
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;

    invoke-direct {v4, p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-eqz v0, :cond_13

    const-string v0, "VoiceCallButtonFragment"

    const-string v4, "onUiResume called"

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getCallButtonPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->onUiResume()V

    :cond_13
    const v0, 0x7f10041f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    new-instance v4, Lcom/android/incallui/fragment/VoiceCallButtonFragment$5;

    invoke-direct {v4, p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$5;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    :cond_14
    const-string v0, "no_receiver_in_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const v0, 0x7f1000c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    if-eqz v3, :cond_15

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-ne v0, v8, :cond_22

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_15
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_16
    const v0, 0x7f1000c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isDialpadVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->returnButtonsForDialpad(Z)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->returnButtonsForManager(Z)V

    invoke-static {}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->isKinetoVowifiExist()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mIsSprWFCRegistered:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateEndCallButton(Z)V

    :goto_4
    const-string v0, "feature_usa"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02023f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/ToggleButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_18
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020234

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/ToggleButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_19
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02024b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/ToggleButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1a
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020244

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/ToggleButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1b
    monitor-exit p0

    return-void

    :cond_1c
    move v0, v1

    goto/16 :goto_0

    :cond_1d
    :try_start_1
    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT(I)Z

    move-result v0

    goto/16 :goto_1

    :cond_1e
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x7f100489

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/SecVoiceButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcom/android/incallui/widget/SecVoiceButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/incallui/widget/SecVoiceButton;->setVisibility(I)V

    const v0, 0x7f10048f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1f
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_20
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f100392

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/SecVoiceButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcom/android/incallui/widget/SecVoiceButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/incallui/widget/SecVoiceButton;->setVisibility(I)V

    :cond_21
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateVolteButton(Lcom/android/incallui/Call;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_22
    move v0, v2

    goto/16 :goto_3

    :cond_23
    :try_start_2
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateEndCallButton()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4
.end method

.method public isEnabledExtraPageTwoPhone()Z
    .locals 1

    const-string v0, "support_twophone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, "VoiceCallButtonFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUnder:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateVerticalMargin(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateHorizontalMargin(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUnder:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateHorizontalMargin(Landroid/view/ViewGroup;)V

    :goto_0
    const-string v0, "support_outgoing_dialer_animation"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->animateForOutgoingCall()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateVerticalMargin(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateHorizontalMargin(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "VoiceCallButtonFragment"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallButtonFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateCallButtonWeight(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentViewChanged(Landroid/graphics/Point;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "VoiceCallButtonFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContentViewChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUnder:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateVerticalMargin(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateHorizontalMargin(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUnder:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateHorizontalMargin(Landroid/view/ViewGroup;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v3, v3, v1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateVerticalMargin(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateHorizontalMargin(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallButtonFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    const v0, 0x7f040172

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100229

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mNavigationBarArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateNavigationBar()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f10047d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCallButtonContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100313

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoiceCallCardDummyContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100467

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100418

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f10030a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f10041e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    const/16 v1, 0x5051

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setGravity(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateEndCallButtonColor()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100484

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->inflateInCallButtons(Landroid/view/View;)V

    :cond_2
    const-string v0, "enable_conference_info_banner"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100389

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f1002e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mConferenceInfoText:Landroid/widget/TextView;

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    return-object v0

    :cond_6
    const v0, 0x7f040171

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mParentView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecVoiceButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecVoiceButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecVoiceButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->dismissUSAVoLTEDialogs()V

    return-void
.end method

.method public onEmergencyModeChange(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateVoiceCallButtons()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onPause()V

    invoke-static {}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->isKinetoVowifiExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->unregisterForWfcRegistrationStatus()V

    :cond_0
    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->networkStateReceiver:Lcom/android/incallui/fragment/VoiceCallButtonFragment$ConnectivityReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->networkStateReceiver:Lcom/android/incallui/fragment/VoiceCallButtonFragment$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateCallButtonWeight(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V

    invoke-static {}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->isKinetoVowifiExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mVoWifiStateListener:Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VoWifiStateTracker;->registerForWfcRegistrationStatus(Lcom/android/incallui/util/VoWifiStateTracker$VoWifiStateListener;)V

    invoke-static {}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mIsSprWFCRegistered:Z

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mIsSprWFCRegistered:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateEndCallButton(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$ConnectivityReceiver;

    invoke-direct {v0, p0, v4}, Lcom/android/incallui/fragment/VoiceCallButtonFragment$ConnectivityReceiver;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;Lcom/android/incallui/fragment/VoiceCallButtonFragment$1;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->networkStateReceiver:Lcom/android/incallui/fragment/VoiceCallButtonFragment$ConnectivityReceiver;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->networkStateReceiver:Lcom/android/incallui/fragment/VoiceCallButtonFragment$ConnectivityReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateEndCallButton()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onStop()V

    return-void
.end method

.method public queryForSwappedCall()V
    .locals 0

    return-void
.end method

.method protected recordClicked()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_record(Lcom/android/incallui/Call;Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->toggleRecord()V

    :cond_1
    return-void
.end method

.method public returnButtonsForDialpad(Z)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0585

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public returnButtonsForManager(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUnder:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUnder:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/incallui/util/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUnder:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUnder:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setAudio(I)V
    .locals 1

    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPrevAudioMode:I

    if-eq v0, p1, :cond_2

    iget v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPrevAudioMode:I

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateAudioButtons(I)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateExtraVolumeButtonAboutModeChanged()V

    iput p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPrevAudioMode:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isFolerClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateAudioButtons(I)V

    goto :goto_0

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

    const/4 v1, 0x0

    if-nez p1, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecVoiceButton;->setEnabled(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mOneWayCameraButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecVoiceButton;->setEnabled(Z)V

    :cond_9
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_a
    return-void
.end method

.method public setEndCallButtonIcon(Z)V
    .locals 2

    const v0, 0x7f0202e2

    if-eqz p1, :cond_1

    const-string v0, "spr_vowifi_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->isKinetoVowifiExist()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const v0, 0x7f020329

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateEndCallButtonColor()V

    return-void

    :cond_2
    const v0, 0x7f020066

    goto :goto_0
.end method

.method public setFocusInCallButton(Z)V
    .locals 3

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

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateMuteButton()V

    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateAudioButtons(I)V

    return-void
.end method

.method public setViewStateBeforeOutgoingAnimation()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public setupRcsCallButtons()V
    .locals 7

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->showSwitchCallButtonForRCS()V

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v0, :cond_2

    const-string v0, "VoiceCallButtonFragment"

    const-string v1, "setupRcsCallButtons CRANE"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButtonStub:Landroid/view/ViewStub;

    iget-object v4, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButtonStub:Landroid/view/ViewStub;

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    invoke-virtual/range {v0 .. v6}, Lcom/android/incallui/secrcs/RcsShareUI;->setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/view/ViewStub;Landroid/widget/Button;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isBB:Z

    if-eqz v0, :cond_1

    :cond_3
    const-string v0, "VoiceCallButtonFragment"

    const-string v1, "setupRcsCallButtons BB"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

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

    const-string v0, "VoiceCallButtonFragment"

    const-string v1, "showConferenceStateInfoBanner"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mConferenceInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mConferenceInfoText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mConferenceInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mConferenceInfoText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showSwitchCallButton(Z)V
    .locals 6

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v0

    const-string v4, "usa_gsm_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :cond_0
    :goto_0
    const-string v4, "show_switch_icon_in_button"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT(I)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOutgoingCall()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move p1, v2

    :cond_5
    const-string v0, "VoiceCallButtonFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showSwitchCallButton show = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v4

    if-nez p1, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Lcom/android/incallui/secrcs/RcsShareUI;->setNoShowVolumeAvailable(Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    if-eqz v0, :cond_7

    const-string v0, "VoiceCallButtonFragment"

    const-string v2, "extraVolume removed because RCS CALL"

    invoke-static {v0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    if-eqz p1, :cond_a

    move v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz p1, :cond_b

    move v0, v2

    :goto_4
    invoke-virtual {v1, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz p1, :cond_c

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_1

    :cond_a
    move v0, v3

    goto :goto_3

    :cond_b
    move v0, v3

    goto :goto_4

    :cond_c
    move v3, v2

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0, v3}, Lcom/android/incallui/widget/SecVoiceButton;->setVisibility(I)V

    :cond_f
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public showSwitchCallButtonForRCS()V
    .locals 2

    const/16 v1, 0x8

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

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->showSwitchCallButton(Z)V

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->showSwitchCallButton(Z)V

    goto :goto_0
.end method

.method public updateAudioButton()V
    .locals 2

    const-string v0, "VoiceCallButtonFragment"

    const-string v1, "updateAudioButton()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateAudioButtons(I)V

    return-void
.end method

.method public updateBluetoothButton(Z)V
    .locals 0

    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 7

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "VoiceCallButtonFragment"

    const-string v6, "updateCallButtons - answering machine is on ."

    invoke-static {v2, v6, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move v2, v0

    :goto_1
    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPrevCallState:I

    const/16 v6, 0x9

    if-ne v2, v6, :cond_1

    invoke-static {v5}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    invoke-static {v5}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v5}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->isFromPopupForAnswer()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_8

    move v2, v3

    :goto_3
    invoke-virtual {v6, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateVoiceCallButtons(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/util/VoWifiStateTracker;->getInstance()Lcom/android/incallui/util/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VoWifiStateTracker;->isKinetoVowifiExist()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mIsSprWFCRegistered:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateEndCallButton(Z)V

    :goto_5
    iput v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mPrevCallState:I

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    move v2, v4

    goto :goto_3

    :cond_9
    move v3, v4

    goto :goto_4

    :cond_a
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateEndCallButton()V

    goto :goto_5

    :cond_b
    move v2, v1

    goto :goto_1
.end method

.method public updateDiapadButton()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isDialpadVisible()Z

    move-result v0

    const-string v1, "VoiceCallButtonFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDiapadButton..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    const v1, 0x7f0902cf

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    const v1, 0x7f0902d0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VoiceCallButtonFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDiapadButton: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public updateEndCallButton(Z)V
    .locals 3

    const-string v0, "VoiceCallButtonFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEndCallButton imson = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->canExtraVolumeButton()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->setEndCallButtonIcon(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateEndCallButtonColor()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isDialpadVisible()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const v1, 0x7f020219

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const v1, 0x7f020218

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public updateExtraVolumeButton()V
    .locals 3

    const-string v0, "updateExtraVolumeButton()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->isExtraVolOn()Z

    move-result v0

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

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected updateMuteButton()V
    .locals 4

    const-string v0, "VoiceCallButtonFragment"

    const-string v1, "updateMuteButton()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

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

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected updateVoiceCallButtons()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateVoiceCallButtons(Lcom/android/incallui/Call;)V

    return-void
.end method
