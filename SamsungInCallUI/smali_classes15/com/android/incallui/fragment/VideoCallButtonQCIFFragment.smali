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

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mShowInviteButton:Z

    return-void
.end method

.method private hasNavigationBar()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v2

    goto :goto_0
.end method

.method private showInviteGroupVideoCallButton(Z)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_SKT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mShowInviteButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/android/incallui/util/SecAnimationUtils$Fade;->show(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/incallui/util/SecAnimationUtils$Fade;->hide(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private showRecordingInfo(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->showRecordingInfo(ZZ)V

    return-void
.end method

.method private updateButtonColor(Z)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v6, v6, v6, v2}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0190

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setAlpha(F)V

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

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a05a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateGroupVideoCallButtonView()V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v1}, Lcom/android/incallui/util/CameraEffect;->hideEffectLayout()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getPresenter()Lcom/android/incallui/Presenter;

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

.method private updateInviteGroupVideoCallButton()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_SKT()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mShowInviteButton:Z

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

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mShowInviteButton:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isPrimaryVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showInviteGroupVideoCallButton(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected enableSwitchCamera(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->enableSwitchCamera(Z)V

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateButtonColor(Z)V

    return-void
.end method

.method public hideVideoTogglingViews()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isPossibleToHideButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showButtonContainer(Z)V

    :cond_0
    return-void
.end method

.method public isInMultiWindowMode()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v1

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

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

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v6}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    :cond_0
    sparse-switch v2, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showAddUserForConferenceCall()V

    goto :goto_0

    :sswitch_1
    invoke-static {v1, v6}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_keypad(IZ)V

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v3, v6}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f100097 -> :sswitch_1
        0x7f1002ac -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f040118

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f040119

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f040117

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v0}, Lcom/android/incallui/util/CameraEffect;->hideEffectLayout()V

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method protected onEndCallButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mShowInviteButton:Z

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v0}, Lcom/android/incallui/util/CameraEffect;->hideEffectLayout()V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v1, 0x7f100246

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateButtonIndicatorArea()V

    const v1, 0x7f100378

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100379

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    const v1, 0x7f10037c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButtonArea:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButtonArea:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f10009b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f10037b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100097

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f10037d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f10037e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateSpeakerButton()V

    :cond_0
    const v1, 0x7f100096

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v1, 0x7f10037a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f100381

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mLeftArrowButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->semSetHoverPopupType(I)V

    :cond_3
    const v1, 0x7f100385

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mRightArrowButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->semSetHoverPopupType(I)V

    :cond_4
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->CONFERENCE_ADD_USER:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f10037f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButtonStub:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButtonStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_5
    const v1, 0x7f1002ac

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    const v2, 0x7f020099

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_6
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090299

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isFarEndRecord()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, v4, v5}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showRecordingInfo(ZZ)V

    :cond_8
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isPrimaryVisible()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showButtonContainer(Z)V

    :cond_9
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateCallButtonLayout()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->setEnabled(Z)V

    move v1, p1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_2

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0191

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v6, v6, v6, v5}, Landroid/widget/ToggleButton;->setShadowLayer(FFFI)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0190

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setTextColor(I)V

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

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateSpeakerButton()V

    return-void
.end method

.method protected showButtonContainer(Z)V
    .locals 10

    const-wide/16 v8, 0x1388

    const/4 v3, 0x0

    const/16 v6, 0x64

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-nez p1, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/android/incallui/util/VideoCallAppLogging;->cleanViewEnter(Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a00c2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09025e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iput-boolean p1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonVisible:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateCallButtonLayout()V

    :cond_2
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showPrimaryCallBanner(Z)V

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showInviteGroupVideoCallButton(Z)V

    return-void

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090294

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->hasNavigationBar()Z

    move-result v4

    invoke-static {v2, p1, v4}, Lcom/android/incallui/util/SecAnimationUtils$Move;->moveToUpDown(Landroid/view/View;ZZ)V

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->hasNavigationBar()Z

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/android/incallui/util/SecAnimationUtils$Move;->moveToUpDown(Landroid/view/View;ZZ)V

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2
.end method

.method public showCameraEffectLayout(Z)V
    .locals 3

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100380

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const-string v1, "VideoCallButtonQCIFFragment"

    const-string v2, "inflate camera effect view stub"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1003c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/util/CameraEffect;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v1}, Lcom/android/incallui/util/CameraEffect;->showEffectLayout()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v1}, Lcom/android/incallui/util/CameraEffect;->hideEffectLayout()V

    goto :goto_0
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 7

    const/4 v3, 0x1

    const/16 v6, 0x8

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateInviteGroupVideoCallButton()V

    sget v2, Lcom/android/incallui/service/vt/VideoCallCapability;->CONFERENCE_ADD_USER:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateGroupVideoCallButtonView()V

    :cond_1
    sget-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/util/CameraEffect;->isCameraEffectLayoutVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateCameraEffectLayout()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateOutgoingHideShowButton()V

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isFarEndRecord()Z

    move-result v2

    if-eqz v2, :cond_8

    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->enableSwitchCamera(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showButtonContainer(Z)V

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateCallButtonsBgColor(Z)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateEndCallButtonColor(Lcom/android/incallui/Call;)V

    return-void

    :cond_8
    move v1, v4

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_a
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_b
    if-eqz v1, :cond_d

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_c
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_d
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_e
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_f
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_10
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_11
    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateCallButtonsBgColor(Z)V

    goto :goto_2
.end method

.method public updateCallButtonsBgColor(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f018f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    :goto_0
    return-void

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

    const/4 v4, 0x1

    sget-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CameraEffect;->isCameraEffectLayoutVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-nez v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showCameraEffectLayout(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v2}, Lcom/android/incallui/util/CameraEffect;->isShowingEffectLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v2}, Lcom/android/incallui/util/CameraEffect;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v2, v1}, Lcom/android/incallui/util/CameraEffect;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method protected updateEndCallButtonColor(Lcom/android/incallui/Call;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const v1, 0x7f020199

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0116

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const v1, 0x7f02019a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

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

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

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

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
