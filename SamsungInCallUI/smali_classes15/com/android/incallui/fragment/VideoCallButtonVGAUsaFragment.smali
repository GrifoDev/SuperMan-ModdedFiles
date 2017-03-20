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

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;-><init>()V

    return-void
.end method

.method private checkAndHandleCameraOffButton(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 980
    if-eqz p1, :cond_0

    .line 981
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    .line 982
    .local v0, "videoState":I
    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasTwoWayVideo(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 983
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    .line 989
    .end local v0    # "videoState":I
    :cond_0
    :goto_0
    return-void

    .line 984
    .restart local v0    # "videoState":I
    :cond_1
    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasOneWayTx(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 985
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto :goto_0
.end method

.method private checkAndHandleCameraOnButton(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 992
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasOneWayRx(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    .line 995
    :cond_0
    return-void
.end method

.method private checkAndHandleHideMeButton(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x2

    .line 968
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 969
    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    .line 973
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 975
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    .line 977
    :cond_0
    return-void

    .line 971
    :cond_1
    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto :goto_0
.end method

.method private checkAndHandleShowMeButton(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x3

    .line 946
    if-eqz p1, :cond_0

    .line 947
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 948
    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    .line 960
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 962
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    .line 965
    :cond_0
    return-void

    .line 950
    :cond_1
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayRx(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 951
    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto :goto_0

    .line 953
    :cond_2
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 954
    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/Call;->cancelModifyRequestDummy()V

    goto :goto_0

    .line 956
    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto :goto_0
.end method

.method private checkAndHandleVideoCallButton(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x3

    .line 929
    if-eqz p1, :cond_0

    .line 930
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 931
    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 933
    :cond_1
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 934
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->cancelModifyRequestDummy()V

    .line 938
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 936
    :cond_3
    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto :goto_1
.end method

.method private checkAndHandleVoiceCallButton()V
    .locals 2

    .prologue
    .line 998
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    .line 999
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    .line 1000
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1003
    :cond_0
    return-void
.end method

.method private disableCameraButtonsForVzw(Z)V
    .locals 2
    .param p1, "isCameraOnButton"    # Z

    .prologue
    const/4 v1, 0x0

    .line 456
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    if-nez v0, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    if-eqz p1, :cond_2

    .line 459
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 462
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->enableSwitchCamera(Z)V

    goto :goto_0
.end method

.method private isPossibleToEnableModifyCallTypeButton()Z
    .locals 6

    .prologue
    .line 272
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 273
    .local v0, "call":Lcom/android/incallui/Call;
    const/4 v1, 0x0

    .line 274
    .local v1, "canModify":Z
    if-eqz v0, :cond_1

    .line 275
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    .line 276
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v2

    .line 277
    .local v2, "videoState":I
    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasOutgoing(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyProgressing(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    :cond_0
    const/4 v1, 0x0

    .line 281
    .end local v2    # "videoState":I
    :cond_1
    return v1
.end method

.method private isPossibleToEnableSwitchCameraButton()Z
    .locals 2

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 287
    .local v0, "isSwitchEnable":Z
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayRx(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    .line 289
    :cond_0
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    const/4 v0, 0x1

    goto :goto_0

    .line 291
    :cond_1
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 292
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToOneWay(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    const/4 v0, 0x0

    goto :goto_0

    .line 295
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 298
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needToUpdateModifyCallButtons()Z
    .locals 3

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, "messageType":I
    const/4 v1, 0x0

    .line 501
    .local v1, "needtoupdate":Z
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/VideoBanner;->getVideoBannerType()I

    move-result v0

    .line 502
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 504
    const/4 v1, 0x1

    .line 507
    :cond_0
    return v1
.end method

.method private updateButtonForCallHoldState()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1040
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1049
    :cond_0
    :goto_0
    return-void

    .line 1041
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1042
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1043
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v5, 0x8

    if-eq v2, v5, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    move v1, v3

    .line 1044
    .local v1, "isHold":Z
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->checkAndHandleCancelButton(Lcom/android/incallui/Call;)V

    .line 1045
    :cond_3
    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->isPossibleToEnableSwitchCameraButton()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->enableSwitchCamera(Z)V

    .line 1046
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallTypeButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 1047
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallTypeButton:Landroid/widget/Button;

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->isPossibleToEnableModifyCallTypeButton()Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .end local v1    # "isHold":Z
    :cond_4
    move v1, v4

    .line 1043
    goto :goto_1

    .restart local v1    # "isHold":Z
    :cond_5
    move v2, v4

    .line 1045
    goto :goto_2

    :cond_6
    move v3, v4

    .line 1047
    goto :goto_3
.end method

.method private updateButtonForCallOutgoingState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1028
    const-string v3, "VideoCallButtonVGAUsaFragment"

    const-string v4, "updateButtonForCallOutgoingState"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1030
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1031
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

    .line 1032
    .local v1, "isOutgoing":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 1033
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallTypeButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 1034
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallTypeButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .end local v1    # "isOutgoing":Z
    :cond_3
    move v1, v2

    .line 1031
    goto :goto_1
.end method

.method private updateCameraButtonForVzw(ZZ)V
    .locals 4
    .param p1, "isOn"    # Z
    .param p2, "isEnable"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 434
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    if-nez v0, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    if-eqz p1, :cond_3

    .line 437
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 439
    if-eqz p2, :cond_2

    .line 440
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 445
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 447
    if-eqz p2, :cond_4

    .line 448
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 450
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateVideoCallButtonsVZW(I)V
    .locals 8
    .param p1, "videoState"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 379
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

    .line 380
    const/4 v1, 0x0

    .line 381
    .local v1, "isCameraOnVisible":Z
    const/4 v0, 0x0

    .line 382
    .local v0, "isCameraEnable":Z
    const/4 v2, 0x0

    .line 383
    .local v2, "isSwitchEnable":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->isDialpadVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 384
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 385
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 390
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 391
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasOutgoing(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 392
    const/4 v1, 0x1

    .line 393
    const/4 v0, 0x0

    .line 394
    const/4 v2, 0x1

    .line 428
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateSpeakerButton()V

    .line 429
    invoke-direct {p0, v1, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateCameraButtonForVzw(ZZ)V

    .line 430
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->enableSwitchCamera(Z)V

    .line 431
    return-void

    .line 387
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 388
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 396
    :cond_5
    const/4 v1, 0x1

    .line 397
    const/4 v0, 0x1

    .line 398
    const/4 v2, 0x1

    goto :goto_1

    .line 400
    :cond_6
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 401
    const/4 v1, 0x1

    .line 402
    const/4 v0, 0x1

    .line 403
    const/4 v2, 0x1

    goto :goto_1

    .line 404
    :cond_7
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayRx(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 405
    const/4 v1, 0x0

    .line 406
    const/4 v0, 0x1

    .line 407
    const/4 v2, 0x0

    goto :goto_1

    .line 408
    :cond_8
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 409
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToTwoWay(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 410
    const/4 v1, 0x1

    .line 411
    const/4 v0, 0x0

    .line 416
    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    .line 413
    :cond_9
    const/4 v1, 0x0

    .line 414
    const/4 v0, 0x0

    goto :goto_2

    .line 417
    :cond_a
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 418
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 419
    const/4 v1, 0x0

    .line 420
    const/4 v0, 0x0

    .line 421
    const/4 v2, 0x0

    goto :goto_1

    .line 423
    :cond_b
    const/4 v1, 0x1

    .line 424
    const/4 v0, 0x0

    .line 425
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected checkAndHandleCancelButton(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1007
    if-eqz p1, :cond_1

    .line 1008
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    .line 1009
    .local v0, "videoState":I
    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1010
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    .line 1016
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1017
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1020
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1021
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1024
    .end local v0    # "videoState":I
    :cond_1
    return-void

    .line 1011
    .restart local v0    # "videoState":I
    :cond_2
    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToDummy(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1012
    invoke-virtual {p1}, Lcom/android/incallui/Call;->cancelModifyRequestDummy()V

    goto :goto_0

    .line 1014
    :cond_3
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    goto :goto_0
.end method

.method protected enableModifyCallButtons(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 313
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 329
    :cond_2
    :goto_0
    return-void

    .line 317
    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 319
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 320
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 321
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 322
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 323
    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 324
    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 325
    :cond_a
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public hideVideoTogglingViews()V
    .locals 1

    .prologue
    .line 1062
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->showPrimaryCallBanner(Z)V

    .line 1063
    return-void
.end method

.method protected isPossibleToHideButton()Z
    .locals 1

    .prologue
    .line 1053
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 833
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onClick(Landroid/view/View;)V

    .line 835
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 836
    .local v1, "id":I
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

    .line 837
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 839
    .local v0, "call":Lcom/android/incallui/Call;
    sparse-switch v1, :sswitch_data_0

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 841
    :sswitch_0
    const-string v2, "Camera Off Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 842
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->checkAndHandleCameraOnButton(Lcom/android/incallui/Call;)V

    .line 843
    invoke-direct {p0, v5}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->disableCameraButtonsForVzw(Z)V

    .line 844
    invoke-static {v5}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallCdma_camera(Z)V

    goto :goto_0

    .line 847
    :sswitch_1
    const-string v2, "Camera On Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 848
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->checkAndHandleCameraOffButton(Lcom/android/incallui/Call;)V

    .line 849
    invoke-direct {p0, v6}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->disableCameraButtonsForVzw(Z)V

    .line 850
    invoke-static {v6}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallCdma_camera(Z)V

    goto :goto_0

    .line 853
    :sswitch_2
    const-string v2, "Accept ModifyCall TwoWay Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 854
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    .line 855
    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->enableModifyCallButtons(Z)V

    .line 856
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->modify_change_to_video()V

    goto :goto_0

    .line 859
    :sswitch_3
    const-string v2, "Accept ModifyCall OneWay Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 860
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    .line 861
    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->enableModifyCallButtons(Z)V

    .line 862
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->modify_change_to_oneway_video()V

    goto :goto_0

    .line 865
    :sswitch_4
    const-string v2, "Stay on Voice Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 866
    if-eqz v0, :cond_1

    .line 867
    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    .line 869
    :cond_1
    invoke-static {v5}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(I)V

    .line 870
    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->enableModifyCallButtons(Z)V

    .line 871
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->modify_stay_on_voice()V

    goto :goto_0

    .line 874
    :sswitch_5
    const-string v2, "Accept ModifyCall TwoWay Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 875
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->checkAndHandleVideoCallButton(Lcom/android/incallui/Call;)V

    .line 876
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->modify_accept(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 879
    :sswitch_6
    const-string v2, "ModifyCall ShowMe Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 880
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->checkAndHandleShowMeButton(Lcom/android/incallui/Call;)V

    .line 881
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallCdma_showMe(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 884
    :sswitch_7
    const-string v2, "ModifyCall HideMe Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 885
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->checkAndHandleHideMeButton(Lcom/android/incallui/Call;)V

    .line 886
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallCdma_hideMe(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 889
    :sswitch_8
    const-string v2, "Request ModifyCall Voice Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 890
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallCdma_voice(Lcom/android/incallui/Call;)V

    .line 891
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->checkAndHandleVoiceCallButton()V

    goto/16 :goto_0

    .line 895
    :sswitch_9
    const-string v2, "Cancel ModifyCall Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 896
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->checkAndHandleCancelButton(Lcom/android/incallui/Call;)V

    .line 897
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->modify_decline(Lcom/android/incallui/Call;)V

    goto/16 :goto_0

    .line 900
    :sswitch_a
    const-string v2, "Request ModifyCall Dummy Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 901
    if-eqz v0, :cond_0

    .line 902
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "att_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 903
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    goto/16 :goto_0

    .line 905
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 906
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->hideConferenceCallManager()V

    .line 908
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/UiAdapter;->updateModifyRequestButtons(Lcom/android/incallui/Call;)V

    .line 910
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    goto/16 :goto_0

    .line 915
    :sswitch_b
    const-string v2, "Add Call Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 916
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCall_addCall()V

    .line 917
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isContactsApplicationEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 918
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090094

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 920
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->addCallClicked()V

    goto/16 :goto_0

    .line 839
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10009a -> :sswitch_2
        0x7f1001ce -> :sswitch_8
        0x7f1001d0 -> :sswitch_5
        0x7f10038a -> :sswitch_b
        0x7f1003ad -> :sswitch_1
        0x7f1003ae -> :sswitch_0
        0x7f1003cb -> :sswitch_6
        0x7f1003cd -> :sswitch_7
        0x7f1003d0 -> :sswitch_9
        0x7f1003d6 -> :sswitch_9
        0x7f1003d9 -> :sswitch_3
        0x7f1003db -> :sswitch_4
        0x7f1003e0 -> :sswitch_a
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "parent":Landroid/view/View;
    return-object v0
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v1, 0x7f1003c8

    const/4 v3, 0x0

    .line 104
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onFinishInflate(Landroid/view/View;)V

    .line 106
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 107
    const v0, 0x7f100388

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraButtonViewStub:Landroid/view/ViewStub;

    .line 108
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 110
    :cond_0
    const v0, 0x7f1003ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_1
    const v0, 0x7f1003ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :cond_2
    const v0, 0x7f10038e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    .line 116
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->arrangeModifyButtonLayoutForNavigator(Landroid/view/ViewStub;)V

    .line 118
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    .line 119
    const v0, 0x7f1003dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButtonContainer:Landroid/view/View;

    .line 120
    const v0, 0x7f1003de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButtonContainer:Landroid/view/View;

    .line 121
    const v0, 0x7f1003df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButtonContainer:Landroid/view/View;

    .line 122
    const v0, 0x7f10009a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    .line 123
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :cond_5
    const v0, 0x7f1003d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    .line 125
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 126
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_6
    const v0, 0x7f1003db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    .line 128
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStopRecordingButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 132
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020239

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 135
    :cond_9
    const v0, 0x7f1003da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyButtonDivider:Landroid/view/View;

    .line 137
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 138
    const v0, 0x7f1003d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyLeftArrowButton:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :cond_a
    const v0, 0x7f1003dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyRightArrowButton:Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 142
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    :cond_b
    :goto_0
    const-string v0, "show_vowifi_endcall_button"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 190
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateEndCallButton()V

    .line 193
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mIsReadyToShowView:Z

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoState:I

    .line 195
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateCallButtons()V

    .line 196
    return-void

    .line 144
    :cond_d
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 145
    const v0, 0x7f100389

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallTypeButtonStub:Landroid/view/ViewStub;

    .line 146
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallTypeButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallTypeButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 147
    :cond_e
    const v0, 0x7f1003e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallTypeButton:Landroid/widget/Button;

    .line 148
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallTypeButton:Landroid/widget/Button;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallTypeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :cond_f
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 150
    const v0, 0x7f10038d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    .line 154
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 155
    :cond_10
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->arrangeModifyButtonLayoutForNavigator(Landroid/view/ViewStub;)V

    .line 156
    :cond_11
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    .line 157
    const v0, 0x7f1003c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    .line 158
    const v0, 0x7f1003ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    .line 159
    const v0, 0x7f1003cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    .line 160
    const v0, 0x7f1003ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    .line 161
    const v0, 0x7f1003cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    .line 162
    const v0, 0x7f1003d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    .line 163
    const v0, 0x7f1003d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    .line 164
    const v0, 0x7f1001d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    .line 165
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    :cond_12
    const v0, 0x7f1003cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    .line 167
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_13
    const v0, 0x7f1003cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    .line 169
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    :cond_14
    const v0, 0x7f1001ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    .line 171
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    :cond_15
    const v0, 0x7f1003d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    .line 173
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    :cond_16
    const v0, 0x7f1003d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    .line 175
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_17
    const v0, 0x7f1003d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    .line 177
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    :cond_18
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 180
    const v0, 0x7f10038a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAddCallButton:Landroid/widget/Button;

    .line 181
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    :cond_19
    const v0, 0x7f1003d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    .line 184
    const v0, 0x7f1003d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    .line 185
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 152
    :cond_1a
    const v0, 0x7f10038c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    goto/16 :goto_1
.end method

.method public onVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1067
    packed-switch p1, :pswitch_data_0

    .line 1073
    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onVideoSessionEvent(ILcom/android/incallui/Call;)V

    .line 1076
    :goto_0
    return-void

    .line 1070
    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->isPossibleToEnableSwitchCameraButton()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->enableSwitchCamera(Z)V

    goto :goto_0

    .line 1067
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected removeButtonFragmentView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->removeButtonFragmentView()V

    .line 202
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 219
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 223
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 227
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    .line 231
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    .line 235
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 239
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_a

    .line 243
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    :cond_a
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_b

    .line 247
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    :cond_b
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_c

    .line 251
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    :cond_c
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    if-eqz v0, :cond_d

    .line 255
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    :cond_d
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_e

    .line 259
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    :cond_e
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 263
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    :cond_f
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 267
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    :cond_10
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 305
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->setEnabled(Z)V

    .line 307
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 309
    :cond_1
    return-void
.end method

.method public setEndCallButtonIcon(Z)V
    .locals 2
    .param p1, "showVoWiFi"    # Z

    .prologue
    .line 1103
    const v0, 0x7f020254

    .line 1104
    .local v0, "resId":I
    if-eqz p1, :cond_0

    .line 1105
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1106
    const v0, 0x7f020054

    .line 1111
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1112
    return-void

    .line 1108
    :cond_1
    const v0, 0x7f0203de

    goto :goto_0
.end method

.method protected showPrimaryCallBanner(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 1057
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->showPrimaryCallBanner(Z)V

    .line 1058
    return-void
.end method

.method public updateButtonsAsVideoState(IZ)V
    .locals 5
    .param p1, "videoState"    # I
    .param p2, "forceUpdate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 468
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

    .line 469
    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mIsReadyToShowView:Z

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoState:I

    if-ne p1, v1, :cond_1

    invoke-static {}, Lcom/android/incallui/service/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/service/SecModifyCallProcessor;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/incallui/service/SecModifyCallProcessor;->modifyRequestError:Z

    if-nez v1, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/service/SecModifyCallProcessor;

    move-result-object v1

    iput-boolean v4, v1, Lcom/android/incallui/service/SecModifyCallProcessor;->modifyRequestError:Z

    .line 473
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 475
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->isStateMain(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 476
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->needToUpdateModifyCallButtons()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v1

    if-nez v1, :cond_3

    .line 477
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/UiAdapter;->updateModifyRequestButtons(Lcom/android/incallui/Call;)V

    .line 495
    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoState:I

    goto :goto_0

    .line 479
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateGeneralButtons(I)V

    goto :goto_1

    .line 481
    :cond_4
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 482
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateGeneralButtons(I)V

    .line 483
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToDummy(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 484
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateModifyRequestDummyButtons()V

    goto :goto_1

    .line 486
    :cond_5
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 487
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingOneWayToTwoWay(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 488
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateModifyReceiveVSToVideo()V

    goto :goto_1

    .line 489
    :cond_6
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 490
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateModifyReceiveVoiceToVideo()V

    goto :goto_1

    .line 491
    :cond_7
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 492
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateModifyReceiveVoiceToVS()V

    goto :goto_1
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 333
    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    .line 334
    .local v1, "videoState":I
    if-eqz p1, :cond_0

    .line 335
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v1

    .line 338
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isSafetyAssistanceMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->checkAndHandleCancelButton(Lcom/android/incallui/Call;)V

    .line 366
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 343
    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateVideoCallButtonsVZW(I)V

    .line 364
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateButtonsAsVideoState(Lcom/android/incallui/Call;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateEndCallButton()V

    goto :goto_0

    .line 345
    :cond_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 346
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 347
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->isDialpadVisible()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 348
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 349
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 358
    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->enableSwitchCamera(Z)V

    .line 362
    :goto_3
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateButtonForCallHoldState()V

    goto :goto_1

    .line 351
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

    .line 352
    .local v0, "bCanAddCall":Z
    :goto_4
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v3, :cond_7

    .line 353
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 354
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 356
    :cond_7
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .end local v0    # "bCanAddCall":Z
    :cond_8
    move v0, v2

    .line 351
    goto :goto_4

    .line 360
    :cond_9
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    goto :goto_3
.end method

.method protected updateEndCallButton()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1082
    const-string v4, "show_vowifi_endcall_button"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1100
    :cond_0
    :goto_0
    return-void

    .line 1084
    :cond_1
    const/4 v1, 0x0

    .line 1085
    .local v1, "show":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1086
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_3

    .line 1087
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_5

    .line 1088
    :cond_2
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isVoWIFIRegistered()Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    .line 1094
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

    .line 1096
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mIsVoWifiEndButton:Z

    if-eq v2, v1, :cond_0

    .line 1097
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mIsVoWifiEndButton:Z

    .line 1099
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->setEndCallButtonIcon(Z)V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 1088
    goto :goto_1

    .line 1090
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
    .param p1, "videoState"    # I

    .prologue
    const/16 v1, 0x8

    .line 811
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 812
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 815
    :cond_0
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasIncoming(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 816
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 829
    :cond_1
    :goto_0
    return-void

    .line 819
    :cond_2
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasOutgoing(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 820
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateButtonForCallOutgoingState()V

    goto :goto_0

    .line 822
    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 823
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->updateVideoCallButtonsVZW(I)V

    .line 825
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateModifyReceiveVSToVideo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 619
    const-string v0, "VideoCallButtonVGAUsaFragment"

    const-string v1, "updateModifyReceiveVSToVideo"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 624
    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 625
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 626
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 630
    :cond_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 631
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 632
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 633
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 635
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 636
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 637
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 638
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 639
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 640
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 641
    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 642
    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 643
    :cond_a
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 644
    :cond_b
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 645
    :cond_c
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 646
    :cond_d
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 647
    :cond_e
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 648
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 649
    :cond_f
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 652
    :cond_10
    return-void
.end method

.method protected updateModifyReceiveVoiceToVS()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 568
    const-string v2, "VideoCallButtonVGAUsaFragment"

    const-string v3, "updateModifyReceiveVoiceToVS"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 573
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 574
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 577
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 578
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 579
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 580
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    if-eqz v2, :cond_3

    .line 581
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 582
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 583
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 584
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 585
    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 586
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 587
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 588
    :cond_7
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyButtonDivider:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 589
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyButtonDivider:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v3

    if-nez v3, :cond_a

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 591
    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->enableModifyCallButtons(Z)V

    .line 616
    :cond_9
    :goto_1
    return-void

    :cond_a
    move v0, v1

    .line 589
    goto :goto_0

    .line 593
    :cond_b
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 594
    :cond_c
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 595
    :cond_d
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 596
    :cond_e
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 597
    :cond_f
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_10

    .line 598
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 599
    :cond_10
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 600
    :cond_11
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 601
    :cond_12
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 602
    :cond_13
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_14

    .line 603
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 604
    :cond_14
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 605
    :cond_15
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 606
    :cond_16
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 607
    :cond_17
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_18

    .line 608
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 609
    :cond_18
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 610
    :cond_19
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 611
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 612
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 613
    :cond_1a
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected updateModifyReceiveVoiceToVideo()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 512
    const-string v2, "VideoCallButtonVGAUsaFragment"

    const-string v3, "updateModifyReceiveVoiceToVideo"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 516
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 517
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 520
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 521
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 522
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 523
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 524
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 525
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 526
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 527
    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 528
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 529
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    if-eqz v2, :cond_7

    .line 530
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 532
    :cond_7
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyButtonDivider:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 533
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyButtonDivider:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v3

    if-nez v3, :cond_a

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 535
    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->enableModifyCallButtons(Z)V

    .line 565
    :cond_9
    :goto_1
    return-void

    :cond_a
    move v0, v1

    .line 533
    goto :goto_0

    .line 537
    :cond_b
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 538
    :cond_c
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 539
    :cond_d
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 540
    :cond_e
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 541
    :cond_f
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 542
    :cond_10
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 543
    :cond_11
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_12

    .line 544
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 545
    :cond_12
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 546
    :cond_13
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_14

    .line 547
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 548
    :cond_14
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 549
    :cond_15
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 550
    :cond_16
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 551
    :cond_17
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 552
    :cond_18
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 553
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_19

    .line 554
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 555
    :cond_19
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 556
    :cond_1a
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 557
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 558
    :cond_1b
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 560
    :cond_1c
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    if-eqz v1, :cond_1d

    .line 561
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 562
    :cond_1d
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public updateModifyRequestButtons(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 716
    const-string v0, "VideoCallButtonVGAUsaFragment"

    const-string v1, "updateModifyRequestButtons"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 722
    :cond_0
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 723
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    .line 724
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 728
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 729
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 730
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 731
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 732
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 733
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 734
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 735
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 736
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 737
    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 738
    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 739
    :cond_a
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 740
    :cond_b
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 741
    :cond_c
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 742
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 743
    :cond_d
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 744
    :cond_e
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 745
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 746
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 747
    :cond_f
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 806
    :cond_10
    :goto_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->disableFullScreenMode()V

    .line 807
    return-void

    .line 750
    :cond_11
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayTx(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 751
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    .line 752
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 753
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 754
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 755
    :cond_12
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 756
    :cond_13
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 757
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 758
    :cond_14
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 759
    :cond_15
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 760
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 761
    :cond_16
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 762
    :cond_17
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 763
    :cond_18
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 764
    :cond_19
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 765
    :cond_1a
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 766
    :cond_1b
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 767
    :cond_1c
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 768
    :cond_1d
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 769
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 770
    :cond_1e
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 771
    :cond_1f
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 772
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 773
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 774
    :cond_20
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 777
    :cond_21
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayRx(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 778
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    .line 779
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 780
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_22

    .line 781
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 782
    :cond_22
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 783
    :cond_23
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_24

    .line 784
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 785
    :cond_24
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 786
    :cond_25
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_26

    .line 787
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 788
    :cond_26
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 789
    :cond_27
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_28

    .line 790
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 791
    :cond_28
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 792
    :cond_29
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 793
    :cond_2a
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 794
    :cond_2b
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 795
    :cond_2c
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 796
    :cond_2d
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_2e

    .line 797
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 798
    :cond_2e
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 799
    :cond_2f
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 800
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_30

    .line 801
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 802
    :cond_30
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected updateModifyRequestDummyButtons()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 655
    const-string v0, "VideoCallButtonVGAUsaFragment"

    const-string v1, "updateModifyRequestDummyButtons"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 661
    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_GSM()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 662
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    .line 663
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 664
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 668
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 669
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 670
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 671
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 672
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 673
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 674
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 675
    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 676
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 677
    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 678
    :cond_a
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 679
    :cond_b
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 680
    :cond_c
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 681
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 682
    :cond_d
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 683
    :cond_e
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 684
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 685
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 686
    :cond_f
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceOnlyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 712
    :cond_10
    :goto_0
    return-void

    .line 689
    :cond_11
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_CAN_GSM()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 690
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    .line 691
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 693
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 694
    :cond_12
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 695
    :cond_13
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 696
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 697
    :cond_14
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 698
    :cond_15
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 699
    :cond_16
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 700
    :cond_17
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 701
    :cond_18
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 702
    :cond_19
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 703
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 704
    :cond_1a
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 705
    :cond_1b
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 706
    :cond_1c
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 707
    :cond_1d
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 708
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 709
    :cond_1e
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected updateMuteButton()V
    .locals 4

    .prologue
    .line 370
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    .line 371
    .local v0, "isMuted":Z
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

    .line 373
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 376
    :cond_0
    return-void
.end method
