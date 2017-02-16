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

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;-><init>()V

    return-void
.end method

.method private updateGroupVideoCallButtonView()V
    .locals 2

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v1}, Lcom/android/incallui/util/CameraEffect;->hideEffectLayout()V

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 258
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->clearCameraEffect()V

    .line 261
    :cond_1
    return-void
.end method

.method private updateInviteGroupVideoCallButton(Lcom/android/incallui/Call;)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 239
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_SKT()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v2

    .line 241
    .local v2, "videoState":I
    const/4 v1, 0x0

    .line 242
    .local v1, "showInviteButton":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 243
    .local v0, "activeCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 244
    const/high16 v3, 0x8000000

    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    .line 246
    :cond_0
    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyProgressing(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 247
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

    .line 248
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_2

    .line 249
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 251
    .end local v0    # "activeCall":Lcom/android/incallui/Call;
    .end local v1    # "showInviteButton":Z
    .end local v2    # "videoState":I
    :cond_2
    return-void

    .line 249
    .restart local v0    # "activeCall":Lcom/android/incallui/Call;
    .restart local v1    # "showInviteButton":Z
    .restart local v2    # "videoState":I
    :cond_3
    const/16 v3, 0x8

    goto :goto_0
.end method


# virtual methods
.method public clickedHideMe()V
    .locals 4

    .prologue
    .line 291
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->clickedHideMe()V

    .line 292
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->showCameraEffectLayout(Z)V

    .line 293
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 294
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->clearCameraEffect()V

    .line 297
    :cond_0
    return-void
.end method

.method public hideVideoTogglingViews()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->showPrimaryCallBanner(Z)V

    .line 323
    return-void
.end method

.method protected isPossibleToHideButton()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public isShowingCameraEffectUi()Z
    .locals 1

    .prologue
    .line 229
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v0}, Lcom/android/incallui/util/CameraEffect;->isShowingEffectLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "isShowingCameraEffectUi"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x1

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needToEnableHideShowMeButton()Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 301
    const/4 v2, 0x0

    .line 302
    .local v2, "isEnabled":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 303
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 305
    .local v1, "callState":I
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 306
    if-ne v1, v7, :cond_1

    move v2, v3

    .line 312
    .end local v1    # "callState":I
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "callState":I
    :cond_1
    move v2, v4

    .line 306
    goto :goto_0

    .line 308
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
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 275
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onClick(Landroid/view/View;)V

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 278
    .local v0, "id":I
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

    .line 280
    packed-switch v0, :pswitch_data_0

    .line 287
    :goto_0
    return-void

    .line 282
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->showAddUserForConferenceCall()V

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x7f1002ac
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "parent":Landroid/view/View;
    return-object v0
.end method

.method protected onEndCallButtonClicked()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v0}, Lcom/android/incallui/util/CameraEffect;->hideEffectLayout()V

    .line 271
    :cond_1
    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 66
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onFinishInflate(Landroid/view/View;)V

    .line 68
    const v0, 0x7f10037e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButtonViewStub:Landroid/view/ViewStub;

    .line 69
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 71
    :cond_0
    const v0, 0x7f1002ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    .line 72
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    .line 77
    :cond_1
    const v0, 0x7f10038a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    .line 78
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->arrangeModifyButtonLayoutForNavigator(Landroid/view/ViewStub;)V

    .line 80
    :cond_3
    const v0, 0x7f1003c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyCallButtonView:Landroid/view/View;

    .line 82
    const v0, 0x7f1003d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mAcceptButtonContainer:Landroid/view/View;

    .line 83
    const v0, 0x7f1003d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mDeclineButtonContainer:Landroid/view/View;

    .line 84
    const v0, 0x7f1003d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mAcceptButton:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :cond_4
    const v0, 0x7f1003d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mDeclineButton:Landroid/widget/Button;

    .line 87
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->inflateHideShowMeButtonStub(Landroid/view/View;)V

    .line 91
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 92
    const v0, 0x7f1003d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyLeftArrowButton:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_6
    const v0, 0x7f1003db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyRightArrowButton:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_7
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mIsReadyToShowView:Z

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mVideoState:I

    .line 100
    return-void
.end method

.method protected removeButtonFragmentView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->removeButtonFragmentView()V

    .line 106
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v0}, Lcom/android/incallui/util/CameraEffect;->hideEffectLayout()V

    .line 120
    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 124
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 128
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mModifyRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :cond_5
    return-void
.end method

.method public showCameraEffectLayout(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 159
    if-eqz p1, :cond_3

    .line 160
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10037f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 162
    .local v0, "stub":Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 163
    :cond_0
    const-string v1, "VideoCallButtonVGAKorFragment"

    const-string v2, "inflate camera effect view stub"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1003c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/util/CameraEffect;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    .line 166
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v1}, Lcom/android/incallui/util/CameraEffect;->showEffectLayout()V

    .line 172
    :cond_2
    :goto_0
    return-void

    .line 169
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v1}, Lcom/android/incallui/util/CameraEffect;->hideEffectLayout()V

    goto :goto_0
.end method

.method protected showPrimaryCallBanner(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->showPrimaryCallBanner(Z)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->updateSwitchButtonLayout(Z)V

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->updateCameraEffectLayout(Z)V

    .line 179
    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->updateInviteGroupVideoCallButton(Lcom/android/incallui/Call;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->updateButtonsAsVideoState(Lcom/android/incallui/Call;)V

    .line 139
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->CONFERENCE_ADD_USER:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    invoke-static {p1}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 142
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    .line 145
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->updateGroupVideoCallButtonView()V

    .line 150
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_1
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v1, :cond_2

    .line 151
    invoke-static {}, Lcom/android/incallui/util/CameraEffect;->isCameraEffectLayoutVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-nez v1, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->updateCameraEffectLayout()V

    .line 153
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->updateSwitchButtonLayout()V

    .line 156
    :cond_2
    return-void
.end method

.method public updateCameraEffectLayout()V
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->isPrimaryVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->updateCameraEffectLayout(Z)V

    .line 205
    return-void
.end method

.method public updateCameraEffectLayout(Z)V
    .locals 4
    .param p1, "isShowingBanner"    # Z

    .prologue
    .line 208
    sget-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v2, :cond_1

    .line 209
    invoke-static {}, Lcom/android/incallui/util/CameraEffect;->isCameraEffectLayoutVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-nez v2, :cond_0

    .line 211
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->showCameraEffectLayout(Z)V

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 215
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v2}, Lcom/android/incallui/util/CameraEffect;->isShowingEffectLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    const v2, 0x7f100293

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 218
    .local v1, "callButtonContainer":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 219
    const-string v2, "VideoCallButtonVGAKorFragment"

    const-string v3, "bring to front callButtonContainer"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 225
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    .end local v1    # "callButtonContainer":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public updateSwitchButtonLayout()V
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->isPrimaryVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->updateSwitchButtonLayout(Z)V

    .line 183
    return-void
.end method

.method public updateSwitchButtonLayout(Z)V
    .locals 4
    .param p1, "isShowingBanner"    # Z

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, "needToShowEffectUI":Z
    sget-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v2}, Lcom/android/incallui/util/CameraEffect;->isShowingEffectLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    const/4 v1, 0x1

    .line 193
    :cond_0
    const/4 v0, 0x0

    .line 194
    .local v0, "inviteGroupTopMargin":I
    if-eqz v1, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0304

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 199
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-static {v2, v0}, Lcom/android/incallui/util/SecAnimationUtils$Change;->changeTopMargin(Landroid/view/View;I)V

    .line 201
    .end local v0    # "inviteGroupTopMargin":I
    .end local v1    # "needToShowEffectUI":Z
    :cond_1
    return-void

    .line 197
    .restart local v0    # "inviteGroupTopMargin":I
    .restart local v1    # "needToShowEffectUI":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0306

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    goto :goto_0
.end method
