.class public Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;
.super Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;
.source "VideoCallButtonVGAUsaFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallButtonVGAUsaFragment"


# instance fields
.field private mAddCallButton:Landroid/widget/Button;

.field private mCameraButtonViewStub:Landroid/view/ViewStub;

.field private mCameraOffButton:Landroid/view/View;

.field private mCameraOnButton:Landroid/view/View;

.field private mCancelButton:Landroid/widget/Button;

.field private mCancelButtonContainer:Landroid/view/View;

.field private mChangeToVideoButton:Landroid/widget/Button;

.field private mChangeToVideoButtonContainer:Landroid/view/View;

.field private mChangeToVideoShareButton:Landroid/widget/Button;

.field private mChangeToVideoShareButtonContainer:Landroid/view/View;

.field private mHideMeButton:Landroid/widget/Button;

.field private mHideMeButtonContainer:Landroid/view/View;

.field private mModifyButtonDivider:Landroid/view/View;

.field private mModifyCallTypeButton:Landroid/widget/Button;

.field private mModifyCallTypeButtonStub:Landroid/view/ViewStub;

.field private mShowMeButton:Landroid/widget/Button;

.field private mShowMeButtonContainer:Landroid/view/View;

.field private mStayOnVoiceButton:Landroid/widget/Button;

.field private mStayOnVoiceButtonContainer:Landroid/view/View;

.field private mVideoCallButton:Landroid/widget/Button;

.field private mVideoCallButtonContainer:Landroid/view/View;

.field private mVoiceCallButton:Landroid/widget/Button;

.field private mVoiceCallButtonContainer:Landroid/view/View;

.field private mVoiceOnlyButton:Landroid/widget/Button;

.field private mVoiceOnlyButtonContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;-><init>()V

    return-void
.end method

.method private checkAndHandleCameraOffButton(Lcom/android/incallui/Call;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasTwoWayVideo(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasOneWayTx(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto :goto_0
.end method

.method private checkAndHandleCameraOnButton(Lcom/android/incallui/Call;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasOneWayRx(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    :cond_0
    return-void
.end method

.method private checkAndHandleHideMeButton(Lcom/android/incallui/Call;)V
    .locals 2

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    :cond_0
    return-void

    :cond_1
    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto :goto_0
.end method

.method private checkAndHandleShowMeButton(Lcom/android/incallui/Call;)V
    .locals 2

    const/4 v1, 0x3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayRx(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/Call;->cancelModifyRequestDummy()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto :goto_0
.end method

.method private checkAndHandleVideoCallButton(Lcom/android/incallui/Call;)V
    .locals 2

    const/4 v1, 0x3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->cancelModifyRequestDummy()V

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto :goto_1
.end method

.method private checkAndHandleVoiceCallButton()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private disableCameraButtonsForVzw(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->enableSwitchCamera(Z)V

    goto :goto_0
.end method

.method private isPossibleToEnableModifyCallTypeButton()Z
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasOutgoing(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyProgressing(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method private isPossibleToEnableSwitchCameraButton()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayRx(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToOneWay(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needToUpdateModifyCallButtons()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/VideoBanner;->getVideoBannerType()I

    move-result v0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private updateButtonForCallHoldState()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v5, 0x8

    if-eq v2, v5, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->checkAndHandleCancelButton(Lcom/android/incallui/Call;)V

    :cond_3
    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->isPossibleToEnableSwitchCameraButton()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->enableSwitchCamera(Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallTypeButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallTypeButton:Landroid/widget/Button;

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->isPossibleToEnableModifyCallTypeButton()Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_1

    :cond_5
    move v2, v4

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_3
.end method

.method private updateButtonForCallOutgoingState()V
    .locals 5

    const/4 v2, 0x0

    const-string v3, "VideoCallButtonVGAUsaFragment"

    const-string v4, "updateButtonForCallOutgoingState"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallTypeButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallTypeButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private updateCameraButtonForVzw(ZZ)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateVideoCallButtonsVZW(I)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    const-string v3, "VideoCallButtonVGAUsaFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateVideoCallButtonsVZW: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->isDialpadVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasOutgoing(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateSpeakerButton()V

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateCameraButtonForVzw(ZZ)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->enableSwitchCamera(Z)V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v1, 0x1

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayRx(I)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToTwoWay(I)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    const/4 v0, 0x0

    goto :goto_2

    :cond_a
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_1

    :cond_b
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected checkAndHandleCancelButton(Lcom/android/incallui/Call;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToDummy(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->cancelModifyRequestDummy()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    goto :goto_0
.end method

.method protected enableModifyCallButtons(Z)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_a
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public hideVideoTogglingViews()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->showPrimaryCallBanner(Z)V

    return-void
.end method

.method protected isPossibleToHideButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onClick(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "VideoCallButtonVGAUsaFragment"

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

    invoke-static {v2, v3, v5}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v2, "Camera Off Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->checkAndHandleCameraOnButton(Lcom/android/incallui/Call;)V

    invoke-direct {p0, v5}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->disableCameraButtonsForVzw(Z)V

    invoke-static {v5}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallCdma_camera(Z)V

    goto :goto_0

    :sswitch_1
    const-string v2, "Camera On Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->checkAndHandleCameraOffButton(Lcom/android/incallui/Call;)V

    invoke-direct {p0, v6}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->disableCameraButtonsForVzw(Z)V

    invoke-static {v6}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallCdma_camera(Z)V

    goto :goto_0

    :sswitch_2
    const-string v2, "Accept ModifyCall TwoWay Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->enableModifyCallButtons(Z)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->modify_change_to_video()V

    goto :goto_0

    :sswitch_3
    const-string v2, "Accept ModifyCall OneWay Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->enableModifyCallButtons(Z)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->modify_change_to_oneway_video()V

    goto :goto_0

    :sswitch_4
    const-string v2, "Stay on Voice Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    :cond_1
    invoke-static {v5}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->enableModifyCallButtons(Z)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->modify_stay_on_voice()V

    goto :goto_0

    :sswitch_5
    const-string v2, "Accept ModifyCall TwoWay Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->checkAndHandleVideoCallButton(Lcom/android/incallui/Call;)V

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->modify_accept(Lcom/android/incallui/Call;)V

    goto :goto_0

    :sswitch_6
    const-string v2, "ModifyCall ShowMe Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->checkAndHandleShowMeButton(Lcom/android/incallui/Call;)V

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallCdma_showMe(Lcom/android/incallui/Call;)V

    goto :goto_0

    :sswitch_7
    const-string v2, "ModifyCall HideMe Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->checkAndHandleHideMeButton(Lcom/android/incallui/Call;)V

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallCdma_hideMe(Lcom/android/incallui/Call;)V

    goto :goto_0

    :sswitch_8
    const-string v2, "Request ModifyCall Voice Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallCdma_voice(Lcom/android/incallui/Call;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->checkAndHandleVoiceCallButton()V

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "Cancel ModifyCall Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->checkAndHandleCancelButton(Lcom/android/incallui/Call;)V

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->modify_decline(Lcom/android/incallui/Call;)V

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "Request ModifyCall Dummy Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "att_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->hideConferenceCallManager()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/UiAdapter;->updateModifyRequestButtons(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "Add Call Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCall_addCall()V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isContactsApplicationEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090092

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->addCallClicked()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10009a -> :sswitch_2
        0x7f1001ce -> :sswitch_8
        0x7f1001d0 -> :sswitch_5
        0x7f100389 -> :sswitch_b
        0x7f1003ac -> :sswitch_1
        0x7f1003ad -> :sswitch_0
        0x7f1003ca -> :sswitch_6
        0x7f1003cc -> :sswitch_7
        0x7f1003cf -> :sswitch_9
        0x7f1003d5 -> :sswitch_9
        0x7f1003d8 -> :sswitch_3
        0x7f1003da -> :sswitch_4
        0x7f1003df -> :sswitch_a
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 4

    const v1, 0x7f1003c7

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onFinishInflate(Landroid/view/View;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x7f100387

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraButtonViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v0, 0x7f1003ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f1003ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v0, 0x7f10038d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->arrangeModifyButtonLayoutForNavigator(Landroid/view/ViewStub;)V

    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    const v0, 0x7f1003dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButtonContainer:Landroid/view/View;

    const v0, 0x7f1003dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButtonContainer:Landroid/view/View;

    const v0, 0x7f1003de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButtonContainer:Landroid/view/View;

    const v0, 0x7f10009a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const v0, 0x7f1003d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const v0, 0x7f1003da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStopRecordingButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_9
    const v0, 0x7f1003d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyButtonDivider:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f1003d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyLeftArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    const v0, 0x7f1003db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyRightArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    :goto_0
    const-string v0, "show_vowifi_endcall_button"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateEndCallButton()V

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mIsReadyToShowView:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoState:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateCallButtons()V

    return-void

    :cond_d
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f100388

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallTypeButtonStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallTypeButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallTypeButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_e
    const v0, 0x7f1003df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallTypeButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallTypeButton:Landroid/widget/Button;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallTypeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_1a

    const v0, 0x7f10038c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_10
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->arrangeModifyButtonLayoutForNavigator(Landroid/view/ViewStub;)V

    :cond_11
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    const v0, 0x7f1003c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    const v0, 0x7f1003c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    const v0, 0x7f1003cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    const v0, 0x7f1003cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    const v0, 0x7f1003ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    const v0, 0x7f1003d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    const v0, 0x7f1003d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    const v0, 0x7f1001d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    const v0, 0x7f1003ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    const v0, 0x7f1003cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    const v0, 0x7f1001ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    const v0, 0x7f1003cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16
    const v0, 0x7f1003d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    const v0, 0x7f1003d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f100389

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_19
    const v0, 0x7f1003d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    const v0, 0x7f1003d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_1a
    const v0, 0x7f10038b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    goto/16 :goto_1
.end method

.method public onVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onVideoSessionEvent(ILcom/android/incallui/Call;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->isPossibleToEnableSwitchCameraButton()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->enableSwitchCamera(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected removeButtonFragmentView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->removeButtonFragmentView()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setEndCallButtonIcon(Z)V
    .locals 2

    const v0, 0x7f020255

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f020054

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void

    :cond_1
    const v0, 0x7f0203df

    goto :goto_0
.end method

.method protected showPrimaryCallBanner(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->showPrimaryCallBanner(Z)V

    return-void
.end method

.method public updateButtonsAsVideoState(IZ)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "VideoCallButtonVGAUsaFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateButtonsAsVideoState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mIsReadyToShowView:Z

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoState:I

    if-ne p1, v1, :cond_1

    invoke-static {}, Lcom/android/incallui/service/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/service/SecModifyCallProcessor;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/incallui/service/SecModifyCallProcessor;->modifyRequestError:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/service/SecModifyCallProcessor;

    move-result-object v1

    iput-boolean v4, v1, Lcom/android/incallui/service/SecModifyCallProcessor;->modifyRequestError:Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->isStateMain(I)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->needToUpdateModifyCallButtons()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/UiAdapter;->updateModifyRequestButtons(Lcom/android/incallui/Call;)V

    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoState:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateGeneralButtons(I)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateGeneralButtons(I)V

    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToDummy(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateModifyRequestDummyButtons()V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingOneWayToTwoWay(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateModifyReceiveVSToVideo()V

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateModifyReceiveVoiceToVideo()V

    goto :goto_1

    :cond_7
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateModifyReceiveVoiceToVS()V

    goto :goto_1
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v2, 0x0

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v1

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isSafetyAssistanceMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->checkAndHandleCancelButton(Lcom/android/incallui/Call;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateVideoCallButtonsVZW(I)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateButtonsAsVideoState(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateEndCallButton()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->isDialpadVisible()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->enableSwitchCamera(Z)V

    :goto_3
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateButtonForCallHoldState()V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyProgressing(I)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v0, 0x1

    :goto_4
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_4

    :cond_9
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    goto :goto_3
.end method

.method protected updateEndCallButton()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "show_vowifi_endcall_button"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_5

    :cond_2
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isVoWIFIRegistered()Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :cond_3
    :goto_1
    const-string v2, "VideoCallButtonVGAUsaFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateEndCallButton = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mIsVoWifiEndButton:Z

    if-eq v2, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mIsVoWifiEndButton:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->setEndCallButtonIcon(Z)V

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    :goto_2
    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_2
.end method

.method protected updateGeneralButtons(I)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasIncoming(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasOutgoing(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateButtonForCallOutgoingState()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateVideoCallButtonsVZW(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateModifyReceiveVSToVideo()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    const-string v0, "VideoCallButtonVGAUsaFragment"

    const-string v1, "updateModifyReceiveVSToVideo"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method protected updateModifyReceiveVoiceToVS()V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    const-string v2, "VideoCallButtonVGAUsaFragment"

    const-string v3, "updateModifyReceiveVoiceToVS"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyButtonDivider:Landroid/view/View;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyButtonDivider:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v3

    if-nez v3, :cond_a

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->enableModifyCallButtons(Z)V

    :cond_9
    :goto_1
    return-void

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_d
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_f
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_11
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_13
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_15
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_17
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_19
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected updateModifyReceiveVoiceToVideo()V
    .locals 4

    const/16 v1, 0x8

    const/4 v0, 0x0

    const-string v2, "VideoCallButtonVGAUsaFragment"

    const-string v3, "updateModifyReceiveVoiceToVideo"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyButtonDivider:Landroid/view/View;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyButtonDivider:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v3

    if-nez v3, :cond_a

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->enableModifyCallButtons(Z)V

    :cond_9
    :goto_1
    return-void

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_d
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_f
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_11
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_13
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_15
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_17
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_18
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1a
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    :cond_1c
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public updateModifyRequestButtons(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    const-string v0, "VideoCallButtonVGAUsaFragment"

    const-string v1, "updateModifyRequestButtons"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_e
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_10
    :goto_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->disableFullScreenMode()V

    return-void

    :cond_11
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayTx(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_13
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_15
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_17
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_19
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1b
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1d
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1f
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_21
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayRx(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_22
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_23
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_24
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_25
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_26
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_27
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_28
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_29
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2a
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2b
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2d
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2e
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2f
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_30
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected updateModifyRequestDummyButtons()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    const-string v0, "VideoCallButtonVGAUsaFragment"

    const-string v1, "updateModifyRequestDummyButtons"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_GSM()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_e
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_10
    :goto_0
    return-void

    :cond_11
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_CAN_GSM()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_13
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_15
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_17
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_19
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1b
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1d
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected updateMuteButton()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    const-string v1, "VideoCallButtonVGAUsaFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMuteButton() - isMuted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
