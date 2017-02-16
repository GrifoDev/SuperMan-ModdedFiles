.class public Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;
.super Lcom/android/incallui/fragment/VideoCallButtonFragment;
.source "VideoCallButtonQCIFFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallButtonQCIFFragment"


# instance fields
.field private mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

.field protected mInviteGroupVideoButton:Landroid/widget/ImageButton;

.field protected mInviteGroupVideoButtonStub:Landroid/view/ViewStub;

.field protected mShowInviteButton:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mShowInviteButton:Z

    return-void
.end method

.method private hasNavigationBar()Z
    .locals 3

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 296
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    const/4 v1, 0x0

    .line 297
    .local v1, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 298
    const/4 v2, 0x0

    .line 301
    :goto_0
    return v2

    .line 300
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 301
    invoke-static {v1}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v2

    goto :goto_0
.end method

.method private showInviteGroupVideoCallButton(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 383
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_SKT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 385
    if-eqz p1, :cond_1

    .line 386
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mShowInviteButton:Z

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/android/incallui/util/SecAnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/incallui/util/SecAnimationUtils$Fade;->hide(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private showRecordingInfo(ZZ)V
    .locals 1
    .param p1, "near"    # Z
    .param p2, "show"    # Z

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->showRecordingInfo(ZZ)V

    .line 307
    return-void
.end method

.method private updateButtonColor(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 477
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 478
    .local v0, "call":Lcom/android/incallui/Call;
    const/4 v1, 0x1

    .line 479
    .local v1, "switchCameraEnabled":Z
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 481
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    .line 482
    if-nez v1, :cond_3

    .line 483
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 484
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v6, v6, v6, v2}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    .line 491
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v2

    .line 479
    goto :goto_0

    .line 486
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0190

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 487
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setAlpha(F)V

    .line 488
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f01b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v6, v6, v4}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    goto :goto_1
.end method

.method private updateCallButtonLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 251
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 254
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 255
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0598

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 259
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 257
    :cond_2
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    .line 264
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateGroupVideoCallButtonView()V
    .locals 2

    .prologue
    .line 446
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v1}, Lcom/android/incallui/util/CameraEffect;->hideEffectLayout()V

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 450
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 451
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->clearCameraEffect()V

    .line 453
    :cond_1
    return-void
.end method

.method private updateInviteGroupVideoCallButton()V
    .locals 4

    .prologue
    .line 371
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_SKT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 373
    .local v0, "activeCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 374
    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mShowInviteButton:Z

    .line 376
    :cond_0
    const-string v1, "VideoCallButtonQCIFFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateInviteGroupVideoCallButton - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mShowInviteButton:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mShowInviteButton:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isPrimaryVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showInviteGroupVideoCallButton(Z)V

    .line 380
    .end local v0    # "activeCall":Lcom/android/incallui/Call;
    :cond_1
    return-void
.end method


# virtual methods
.method protected enableSwitchCamera(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 441
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->enableSwitchCamera(Z)V

    .line 442
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateButtonColor(Z)V

    .line 443
    return-void
.end method

.method public hideVideoTogglingViews()V
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isPossibleToHideButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showButtonContainer(Z)V

    .line 437
    :cond_0
    return-void
.end method

.method public isInMultiWindowMode()Z
    .locals 3

    .prologue
    .line 269
    const/4 v1, 0x0

    .line 270
    .local v1, "isInMultiWindowMode":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 271
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v1

    .line 274
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    const/4 v1, 0x0

    .line 277
    :cond_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 408
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 409
    .local v2, "id":I
    const-string v3, "VideoCallButtonQCIFFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick(View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v6}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 412
    .local v0, "call":Lcom/android/incallui/Call;
    const/4 v1, 0x0

    .line 413
    .local v1, "callState":I
    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 417
    :cond_0
    sparse-switch v2, :sswitch_data_0

    .line 427
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onClick(Landroid/view/View;)V

    .line 430
    :goto_0
    return-void

    .line 419
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showAddUserForConferenceCall()V

    goto :goto_0

    .line 422
    :sswitch_1
    invoke-static {v1, v6}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_keypad(IZ)V

    .line 423
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 424
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v3, v6}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    goto :goto_0

    .line 417
    :sswitch_data_0
    .sparse-switch
        0x7f100097 -> :sswitch_1
        0x7f1002ac -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 74
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const v0, 0x7f040118

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 76
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const v0, 0x7f040119

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_1
    const v0, 0x7f040117

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onDestroyView()V

    .line 165
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v0}, Lcom/android/incallui/util/CameraEffect;->hideEffectLayout()V

    .line 171
    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    :cond_2
    return-void
.end method

.method protected onEndCallButtonClicked()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mShowInviteButton:Z

    .line 399
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v0}, Lcom/android/incallui/util/CameraEffect;->hideEffectLayout()V

    .line 404
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    const v1, 0x7f100246

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    .line 86
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateButtonIndicatorArea()V

    .line 88
    const v1, 0x7f100377

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    .line 89
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v1, 0x7f100378

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    .line 92
    const v1, 0x7f10037b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButtonArea:Landroid/view/View;

    .line 93
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButtonArea:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v1, 0x7f10009b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    .line 96
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    .line 97
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v1, 0x7f10037a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    .line 99
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    .line 100
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v1, 0x7f100097

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    .line 102
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    .line 103
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v1, 0x7f10037c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    .line 105
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v1, 0x7f10037d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 107
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateSpeakerButton()V

    .line 112
    :cond_0
    const v1, 0x7f100096

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    .line 113
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :cond_1
    const v1, 0x7f100379

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    .line 116
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 120
    const v1, 0x7f100380

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mLeftArrowButton:Landroid/view/View;

    .line 121
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 122
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->semSetHoverPopupType(I)V

    .line 125
    :cond_3
    const v1, 0x7f100384

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mRightArrowButton:Landroid/view/View;

    .line 126
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 127
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->semSetHoverPopupType(I)V

    .line 133
    :cond_4
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->CONFERENCE_ADD_USER:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 134
    const v1, 0x7f10037e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButtonStub:Landroid/view/ViewStub;

    .line 135
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButtonStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 136
    :cond_5
    const v1, 0x7f1002ac

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    .line 137
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_6

    .line 138
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    .line 140
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 141
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    const v2, 0x7f020099

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 146
    :cond_6
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 147
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09028d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 149
    :cond_7
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 150
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_9

    .line 151
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isFarEndRecord()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 152
    invoke-direct {p0, v4, v5}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showRecordingInfo(ZZ)V

    .line 154
    :cond_8
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 155
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isPrimaryVisible()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showButtonContainer(Z)V

    .line 158
    :cond_9
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateCallButtonLayout()V

    .line 159
    return-void
.end method

.method public setEnabled(Z)V
    .locals 7
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 495
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->setEnabled(Z)V

    .line 497
    move v1, p1

    .line 499
    .local v1, "muteEnabled":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 500
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 502
    :cond_0
    const/4 v1, 0x0

    .line 506
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_2

    .line 507
    if-nez v1, :cond_3

    .line 508
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0191

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 509
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v6, v6, v6, v5}, Landroid/widget/ToggleButton;->setShadowLayer(FFFI)V

    .line 515
    :cond_2
    :goto_0
    return-void

    .line 511
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0190

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 512
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f01b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v6, v6, v4}, Landroid/widget/ToggleButton;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method public setSupportedAudio(I)V
    .locals 0
    .param p1, "modeMask"    # I

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateSpeakerButton()V

    .line 283
    return-void
.end method

.method protected showButtonContainer(Z)V
    .locals 10
    .param p1, "show"    # Z

    .prologue
    const-wide/16 v8, 0x1388

    const/4 v3, 0x0

    const/16 v6, 0x64

    .line 327
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 331
    :cond_0
    if-nez p1, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/android/incallui/util/VideoCallAppLogging;->cleanViewEnter(Z)V

    .line 332
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 333
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 334
    .local v1, "buttonContainer":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_4

    .line 335
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a00c3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 336
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090252

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 341
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    .end local v1    # "buttonContainer":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iput-boolean p1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonVisible:Z

    .line 345
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 346
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 347
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 348
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 349
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateCallButtonLayout()V

    .line 366
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_2
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showPrimaryCallBanner(Z)V

    .line 367
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showInviteGroupVideoCallButton(Z)V

    .line 368
    return-void

    :cond_3
    move v2, v3

    .line 331
    goto :goto_0

    .line 338
    .restart local v1    # "buttonContainer":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 339
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090288

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 351
    .end local v1    # "buttonContainer":Landroid/view/ViewGroup$LayoutParams;
    .restart local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->hasNavigationBar()Z

    move-result v4

    invoke-static {v2, p1, v4}, Lcom/android/incallui/util/SecAnimationUtils$Move;->moveToUpDown(Landroid/view/View;ZZ)V

    .line 352
    if-eqz p1, :cond_2

    .line 353
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_6

    .line 354
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 356
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 360
    :cond_7
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->hasNavigationBar()Z

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/android/incallui/util/SecAnimationUtils$Move;->moveToUpDown(Landroid/view/View;ZZ)V

    .line 361
    if-eqz p1, :cond_2

    .line 362
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2
.end method

.method public showCameraEffectLayout(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 310
    if-eqz p1, :cond_3

    .line 311
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 312
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10037f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 313
    .local v0, "stub":Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 314
    :cond_0
    const-string v1, "VideoCallButtonQCIFFragment"

    const-string v2, "inflate camera effect view stub"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1003c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/util/CameraEffect;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    .line 317
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v1, :cond_2

    .line 318
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v1}, Lcom/android/incallui/util/CameraEffect;->showEffectLayout()V

    .line 323
    :cond_2
    :goto_0
    return-void

    .line 320
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v1, :cond_2

    .line 321
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v1}, Lcom/android/incallui/util/CameraEffect;->hideEffectLayout()V

    goto :goto_0
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 7
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v3, 0x1

    const/16 v6, 0x8

    const/4 v4, 0x0

    .line 182
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateInviteGroupVideoCallButton()V

    .line 185
    sget v2, Lcom/android/incallui/service/vt/VideoCallCapability;->CONFERENCE_ADD_USER:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    invoke-static {p1}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 188
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    .line 191
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_1

    .line 192
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateGroupVideoCallButtonView()V

    .line 198
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_1
    sget-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v2, :cond_2

    .line 199
    invoke-static {}, Lcom/android/incallui/util/CameraEffect;->isCameraEffectLayoutVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-nez v2, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateCameraEffectLayout()V

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateOutgoingHideShowButton()V

    .line 207
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isFarEndRecord()Z

    move-result v2

    if-eqz v2, :cond_8

    move v1, v3

    .line 208
    .local v1, "isFarEndRecord":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 209
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 210
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 211
    :cond_4
    if-eqz v1, :cond_9

    .line 212
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 213
    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 227
    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->enableSwitchCamera(Z)V

    .line 229
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 230
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 231
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showButtonContainer(Z)V

    .line 232
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateCallButtonsBgColor(Z)V

    .line 236
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateEndCallButtonColor(Lcom/android/incallui/Call;)V

    .line 237
    return-void

    .end local v1    # "isFarEndRecord":Z
    :cond_8
    move v1, v4

    .line 207
    goto :goto_0

    .line 215
    .restart local v1    # "isFarEndRecord":Z
    :cond_9
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 216
    :cond_a
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 218
    :cond_b
    if-eqz v1, :cond_d

    .line 219
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 220
    :cond_c
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 222
    :cond_d
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 223
    :cond_e
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 224
    :cond_f
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 225
    :cond_10
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 234
    :cond_11
    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateCallButtonsBgColor(Z)V

    goto :goto_2
.end method

.method public updateCallButtonsBgColor(Z)V
    .locals 3
    .param p1, "keypadon"    # Z

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 241
    if-eqz p1, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f018f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public updateCameraEffectLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 456
    sget-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v2, :cond_1

    .line 457
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 458
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CameraEffect;->isCameraEffectLayoutVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-nez v2, :cond_0

    .line 460
    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showCameraEffectLayout(Z)V

    .line 464
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v2}, Lcom/android/incallui/util/CameraEffect;->isShowingEffectLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 465
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v2}, Lcom/android/incallui/util/CameraEffect;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 466
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 467
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 471
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v2, v1}, Lcom/android/incallui/util/CameraEffect;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    return-void

    .line 469
    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v1    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method protected updateEndCallButtonColor(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 520
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const v1, 0x7f02019a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 521
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0116

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 524
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method protected updateOutgoingHideShowButton()V
    .locals 4

    .prologue
    .line 287
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    .line 288
    .local v0, "isShowMe":Z
    const-string v1, "VideoCallButtonQCIFFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateOutgoingHideShowButton - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    .line 290
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 292
    :cond_0
    return-void

    .line 290
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
