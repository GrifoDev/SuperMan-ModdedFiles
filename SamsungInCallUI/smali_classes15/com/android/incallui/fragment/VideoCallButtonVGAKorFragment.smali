.class public Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;
.super Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;
.source "VideoCallButtonVGAKorFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallButtonVGAKorFragment"


# instance fields
.field protected mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

.field protected mInviteGroupVideoButton:Landroid/widget/ImageButton;

.field protected mInviteGroupVideoButtonViewStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;-><init>()V

    return-void
.end method

.method private updateGroupVideoCallButtonView()V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v1}, Lcom/android/incallui/util/CameraEffect;->hideEffectLayout()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->clearCameraEffect()V

    :cond_1
    return-void
.end method

.method private updateInviteGroupVideoCallButton(Lcom/android/incallui/Call;)V
    .locals 6

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_SKT()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v3, 0x8000000

    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    :cond_0
    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyProgressing(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    const-string v3, "VideoCallButtonVGAKorFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateInviteGroupVideoCallButton - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    const/16 v3, 0x8

    goto :goto_0
.end method


# virtual methods
.method public clickedHideMe()V
    .locals 4

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->clickedHideMe()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->showCameraEffectLayout(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->clearCameraEffect()V

    :cond_0
    return-void
.end method

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

.method public isShowingCameraEffectUi()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v0}, Lcom/android/incallui/util/CameraEffect;->isShowingEffectLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isShowingCameraEffectUi"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needToEnableHideShowMeButton()Z
    .locals 8

    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    if-ne v1, v7, :cond_1

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    if-eq v1, v7, :cond_3

    const/4 v5, 0x6

    if-ne v1, v5, :cond_4

    :cond_3
    move v2, v3

    :goto_1
    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onClick(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "VideoCallButtonVGAKorFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->showAddUserForConferenceCall()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1002ac
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onEndCallButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v0}, Lcom/android/incallui/util/CameraEffect;->hideEffectLayout()V

    :cond_1
    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onFinishInflate(Landroid/view/View;)V

    const v0, 0x7f10037f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButtonViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v0, 0x7f1002ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    :cond_1
    const v0, 0x7f10038b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->arrangeModifyButtonLayoutForNavigator(Landroid/view/ViewStub;)V

    :cond_3
    const v0, 0x7f1003c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyCallButtonView:Landroid/view/View;

    const v0, 0x7f1003d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mAcceptButtonContainer:Landroid/view/View;

    const v0, 0x7f1003d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mDeclineButtonContainer:Landroid/view/View;

    const v0, 0x7f1003d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mAcceptButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v0, 0x7f1003d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mDeclineButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->inflateHideShowMeButtonStub(Landroid/view/View;)V

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f1003d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyLeftArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const v0, 0x7f1003dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyRightArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mIsReadyToShowView:Z

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
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v0}, Lcom/android/incallui/util/CameraEffect;->hideEffectLayout()V

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method public showCameraEffectLayout(Z)V
    .locals 3

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100380

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const-string v1, "VideoCallButtonVGAKorFragment"

    const-string v2, "inflate camera effect view stub"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1003c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/util/CameraEffect;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v1}, Lcom/android/incallui/util/CameraEffect;->showEffectLayout()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v1}, Lcom/android/incallui/util/CameraEffect;->hideEffectLayout()V

    goto :goto_0
.end method

.method protected showPrimaryCallBanner(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->showPrimaryCallBanner(Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->updateSwitchButtonLayout(Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->updateCameraEffectLayout(Z)V

    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->updateInviteGroupVideoCallButton(Lcom/android/incallui/Call;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->updateButtonsAsVideoState(Lcom/android/incallui/Call;)V

    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->CONFERENCE_ADD_USER:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->updateGroupVideoCallButtonView()V

    :cond_1
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/CameraEffect;->isCameraEffectLayoutVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->updateCameraEffectLayout()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->updateSwitchButtonLayout()V

    :cond_2
    return-void
.end method

.method public updateCameraEffectLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->isPrimaryVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->updateCameraEffectLayout(Z)V

    return-void
.end method

.method public updateCameraEffectLayout(Z)V
    .locals 4

    sget-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/util/CameraEffect;->isCameraEffectLayoutVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->showCameraEffectLayout(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v2}, Lcom/android/incallui/util/CameraEffect;->isShowingEffectLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f100293

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "VideoCallButtonVGAKorFragment"

    const-string v3, "bring to front callButtonContainer"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    :cond_1
    return-void
.end method

.method public updateSwitchButtonLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->isPrimaryVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->updateSwitchButtonLayout(Z)V

    return-void
.end method

.method public updateSwitchButtonLayout(Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v2}, Lcom/android/incallui/util/CameraEffect;->isShowingEffectLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0300

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-static {v2, v0}, Lcom/android/incallui/util/SecAnimationUtils$Change;->changeTopMargin(Landroid/view/View;I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0302

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    goto :goto_0
.end method
