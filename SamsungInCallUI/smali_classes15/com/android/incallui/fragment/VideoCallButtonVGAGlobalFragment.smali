.class public Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;
.super Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;
.source "VideoCallButtonVGAGlobalFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallButtonVGAGlobalFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public hideVideoTogglingViews()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->showPrimaryCallBanner(Z)V

    .line 134
    return-void
.end method

.method protected isPossibleToHideButton()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "parent":Landroid/view/View;
    return-object v0
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onFinishInflate(Landroid/view/View;)V

    .line 51
    const v0, 0x7f10038b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    .line 52
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->arrangeModifyButtonLayoutForNavigator(Landroid/view/ViewStub;)V

    .line 54
    :cond_1
    const v0, 0x7f1003c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyCallButtonView:Landroid/view/View;

    .line 56
    const v0, 0x7f1003d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mAcceptButtonContainer:Landroid/view/View;

    .line 57
    const v0, 0x7f1003d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mDeclineButtonContainer:Landroid/view/View;

    .line 58
    const v0, 0x7f1003d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mAcceptButton:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    :cond_2
    const v0, 0x7f1003d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mDeclineButton:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->inflateHideShowMeButtonStub(Landroid/view/View;)V

    .line 65
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 66
    const v0, 0x7f1003d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyLeftArrowButton:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    :cond_4
    const v0, 0x7f1003dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyRightArrowButton:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mIsReadyToShowView:Z

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mVideoState:I

    .line 74
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->updateCallButtons()V

    .line 75
    return-void
.end method

.method protected removeButtonFragmentView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->removeButtonFragmentView()V

    .line 81
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_3
    return-void
.end method

.method protected showPrimaryCallBanner(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->showPrimaryCallBanner(Z)V

    .line 129
    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    .line 102
    if-eqz p1, :cond_1

    .line 103
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v1

    .line 104
    .local v1, "videoState":I
    const/4 v0, 0x0

    .line 105
    .local v0, "isSwitchEnable":Z
    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasOutgoing(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    const/4 v0, 0x1

    .line 116
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->enableSwitchCamera(Z)V

    .line 118
    .end local v0    # "isSwitchEnable":Z
    .end local v1    # "videoState":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->updateSpeakerButton()V

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->updateButtonsAsVideoState(Lcom/android/incallui/Call;)V

    .line 120
    return-void

    .line 109
    .restart local v0    # "isSwitchEnable":Z
    .restart local v1    # "videoState":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    :cond_3
    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 112
    const/4 v0, 0x1

    goto :goto_0

    .line 113
    :cond_4
    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    const/4 v0, 0x1

    goto :goto_0

    .line 116
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method
