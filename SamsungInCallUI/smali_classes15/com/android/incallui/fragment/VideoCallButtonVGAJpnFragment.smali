.class public Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;
.super Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;
.source "VideoCallButtonVGAJpnFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallButtonVGAJpnFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;-><init>()V

    return-void
.end method

.method private isPossibleSwitchCameraButton()Z
    .locals 3

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 98
    .local v1, "isSwitchEnable":Z
    sget-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v2, :cond_1

    .line 99
    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/PrivatePolicy;->isProhibit()Z

    move-result v0

    .line 100
    .local v0, "isProhibit":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 104
    .end local v0    # "isProhibit":Z
    :goto_0
    return v1

    .line 100
    .restart local v0    # "isProhibit":Z
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "isProhibit":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public hideVideoTogglingViews()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->showPrimaryCallBanner(Z)V

    .line 115
    return-void
.end method

.method protected isPossibleToHideButton()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "parent":Landroid/view/View;
    return-object v0
.end method

.method protected onEndCallButtonClicked()V
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/PrivatePolicy;->onDisconnect()V

    .line 92
    :cond_0
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onEndCallButtonClicked()V

    .line 93
    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onFinishInflate(Landroid/view/View;)V

    .line 54
    const v0, 0x7f10038b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    .line 55
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->arrangeModifyButtonLayoutForNavigator(Landroid/view/ViewStub;)V

    .line 57
    :cond_1
    const v0, 0x7f1003c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyCallButtonView:Landroid/view/View;

    .line 59
    const v0, 0x7f1003d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mAcceptButtonContainer:Landroid/view/View;

    .line 60
    const v0, 0x7f1003d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mDeclineButtonContainer:Landroid/view/View;

    .line 61
    const v0, 0x7f1003d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mAcceptButton:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_2
    const v0, 0x7f1003d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mDeclineButton:Landroid/widget/Button;

    .line 64
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->inflateHideShowMeButtonStub(Landroid/view/View;)V

    .line 68
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    const v0, 0x7f1003d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyLeftArrowButton:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    :cond_4
    const v0, 0x7f1003dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyRightArrowButton:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mModifyRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mIsReadyToShowView:Z

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mVideoState:I

    .line 77
    return-void
.end method

.method public onVideoCallUiEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onVideoCallUiEvent(I)V

    .line 121
    packed-switch p1, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mIsPlayingCaptureAnimation:Z

    .line 124
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->enableSwitchCamera(Z)V

    goto :goto_0

    .line 128
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->mIsPlayingCaptureAnimation:Z

    .line 129
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

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;->updateButtonsAsVideoState(Lcom/android/incallui/Call;)V

    .line 84
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

    .line 85
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
