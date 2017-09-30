.class public Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;
.super Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallButtonVGAKorFragment"


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

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->showPrimaryCallBanner(Z)V

    return-void
.end method

.method protected isPossibleToHideButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected needToEnableHideShowMeButton()Z
    .locals 6

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    if-ne v0, v5, :cond_0

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isCameraRestricted()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    if-eq v0, v5, :cond_2

    const/4 v3, 0x6

    if-ne v0, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_0
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

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v0, 0x7f100461

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyCallButtonView:Landroid/view/View;

    const v0, 0x7f100460

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyCallButtonContainer:Landroid/view/View;

    const v0, 0x7f10046a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mAcceptButtonContainer:Landroid/view/View;

    const v0, 0x7f10046c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mDeclineButtonContainer:Landroid/view/View;

    const v0, 0x7f10046b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mAcceptButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f10046d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mDeclineButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->inflateHideShowMeButtonStub(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->arrangeModifyButtonLayoutForNavigator()V

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f100470

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyLeftArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f100475

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyRightArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mIsReadyToShowView:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mVideoState:I

    return-void
.end method

.method protected removeButtonFragmentView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->removeButtonFragmentView()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->updateButtonsAsVideoState(Lcom/android/incallui/Call;)V

    return-void
.end method
