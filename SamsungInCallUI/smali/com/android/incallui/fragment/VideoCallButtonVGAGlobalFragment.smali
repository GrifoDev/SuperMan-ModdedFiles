.class public Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;
.super Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallButtonVGAGlobalFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public hideVideoTogglingViews()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->showPrimaryCallBanner(Z)V

    return-void
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

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onFinishInflate(Landroid/view/View;)V

    const v0, 0x7f100425

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v0, 0x7f100461

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyCallButtonView:Landroid/view/View;

    const v0, 0x7f100460

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyCallButtonContainer:Landroid/view/View;

    const v0, 0x7f10046a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mAcceptButtonContainer:Landroid/view/View;

    const v0, 0x7f10046c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mDeclineButtonContainer:Landroid/view/View;

    const v0, 0x7f10046b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mAcceptButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f10046d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mDeclineButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->inflateHideShowMeButtonStub(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->arrangeModifyButtonLayoutForNavigator()V

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f100470

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyLeftArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f100475

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyRightArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mIsReadyToShowView:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mVideoState:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->updateCallButtons()V

    return-void
.end method

.method protected removeButtonFragmentView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->removeButtonFragmentView()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->mModifyRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method protected showPrimaryCallBanner(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->showPrimaryCallBanner(Z)V

    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasOutgoing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->enableSwitchCamera(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->updateSpeakerButton()V

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;->updateButtonsAsVideoState(Lcom/android/incallui/Call;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_0
.end method
