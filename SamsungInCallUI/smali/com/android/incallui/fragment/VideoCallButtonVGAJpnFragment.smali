.class public Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;
.super Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallButtonVGAJpnFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;-><init>()V

    return-void
.end method

.method private isPossibleSwitchCameraButton()Z
    .locals 2

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/PrivatePolicy;->isProhibit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method protected hideShowMeButtonClicked()V
    .locals 2

    const/4 v1, 0x2

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/PrivatePolicy;->isCameraOffButtonClicked()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Camera off clicked"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/PrivatePolicy;->setStatus(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->updateHideShowMeButton()V

    return-void

    :cond_0
    const-string v0, "Camera on clicked"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/PrivatePolicy;->removeStatus(I)V

    goto :goto_0
.end method

.method protected isPossibleToHideButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onEndCallButtonClicked()V
    .locals 1

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/PrivatePolicy;->onDisconnect()V

    :cond_0
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onEndCallButtonClicked()V

    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onFinishInflate(Landroid/view/View;)V

    const v0, 0x7f100425

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v0, 0x7f100461

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyCallButtonView:Landroid/view/View;

    const v0, 0x7f100460

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyCallButtonContainer:Landroid/view/View;

    const v0, 0x7f10046a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mAcceptButtonContainer:Landroid/view/View;

    const v0, 0x7f10046c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mDeclineButtonContainer:Landroid/view/View;

    const v0, 0x7f10046b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mAcceptButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f10046d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mDeclineButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->inflateHideShowMeButtonStub(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->arrangeModifyButtonLayoutForNavigator()V

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f100470

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyLeftArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f100475

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyRightArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mIsReadyToShowView:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mVideoState:I

    return-void
.end method

.method public onVideoCallUiEvent(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onVideoCallUiEvent(I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mIsPlayingCaptureAnimation:Z

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->enableSwitchCamera(Z)V

    goto :goto_0

    :pswitch_1
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mIsPlayingCaptureAnimation:Z

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->isPossibleSwitchCameraButton()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->enableSwitchCamera(Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->updateButtonsAsVideoState(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->isPossibleSwitchCameraButton()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->enableSwitchCamera(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->updateHideShowMeButton()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateHideShowMeButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/PrivatePolicy;->isCameraOffButtonClicked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/PrivatePolicy;->needToEnableCameraButton()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
