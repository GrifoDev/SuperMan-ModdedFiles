.class public Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;
.super Lcom/android/incallui/fragment/VideoCallButtonFragment;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallButtonQCIFFragment"


# instance fields
.field private activityHeight:I

.field private activityWidth:I

.field private mBigScreenHeight:I

.field private mBisScreenWidth:I

.field private mButtonWrapper:Landroid/view/View;

.field private mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

.field protected mInviteGroupVideoButton:Landroid/widget/ImageButton;

.field protected mInviteGroupVideoButtonStub:Landroid/view/ViewStub;

.field protected mShowInviteButton:Z

.field private ratio:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mShowInviteButton:Z

    const v0, 0x3f9a3d71    # 1.205f

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->ratio:F

    return-void
.end method

.method private getBigTemplateHeight()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBigScreenHeight:I

    return v0
.end method

.method private getNavigationBarHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->hasNavigationBar()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method private hasNavigationBar()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private isShowBluetoothButton()Z
    .locals 1

    const-string v0, "no_receiver_in_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setHalfScreenView()V
    .locals 6

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a043e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->activityWidth:I

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->activityHeight:I

    sub-int/2addr v2, v0

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    iget v4, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->ratio:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    if-gt v1, v2, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->activityWidth:I

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBisScreenWidth:I

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBisScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->ratio:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBigScreenHeight:I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->activityHeight:I

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBigScreenHeight:I

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBigScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->ratio:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBisScreenWidth:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->activityWidth:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBisScreenWidth:I

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->activityWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->ratio:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBigScreenHeight:I

    goto :goto_0
.end method

.method private setMkeyBoardScreenView()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->activityHeight:I

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBigScreenHeight:I

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBigScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->ratio:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBisScreenWidth:I

    return-void
.end method

.method private setPositionGroupVideoButton()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getNavigationBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
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
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    goto :goto_1
.end method

.method private updateCallButtonLayout()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mButtonWrapper:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mButtonWrapper:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v3, v3, Lcom/android/incallui/service/vt/VideoButtonMetrics;->width:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v3, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v3, v3, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height:I

    iget-object v4, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v4, v4, Lcom/android/incallui/service/vt/VideoButtonMetrics;->bottom_offset:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mButtonWrapper:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v2, v2, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height_with_offset:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateGroupVideoCallButtonView()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v0}, Lcom/android/incallui/util/CameraEffect;->hideEffectLayout()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->clearCameraEffect()V

    :cond_1
    return-void
.end method

.method private updateInviteGroupVideoCallButton()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_SKT()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mShowInviteButton:Z

    :cond_0
    const-string v0, "VideoCallButtonQCIFFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInviteGroupVideoCallButton - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mShowInviteButton:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mShowInviteButton:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isPrimaryVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showInviteGroupVideoCallButton(Z)V

    :cond_1
    return-void
.end method

.method private updateView()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->activityWidth:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->activityHeight:I

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->setMkeyBoardScreenView()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->setHalfScreenView()V

    goto :goto_0
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
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v0, "VideoCallButtonQCIFFragment"

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

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    :goto_0
    sparse-switch v2, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onClick(Landroid/view/View;)V

    :goto_1
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showAddUserForConferenceCall()V

    goto :goto_1

    :sswitch_1
    invoke-static {v0, v1}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_keypad(IZ)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->bluetoothClicked()V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000c2 -> :sswitch_1
        0x7f100338 -> :sswitch_0
        0x7f100420 -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateView()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateCallButtonLayout()V

    return-void
.end method

.method public onContentViewChanged(Landroid/graphics/Point;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onContentViewChanged(Landroid/graphics/Point;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateCallButtonLayout()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f040139

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
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

.method public onVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->enableSwitchCamera(Z)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isSwitchCameraClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setSwitchCameraClicked(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->enableSwitchCamera(Z)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isSwitchCameraClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setSwitchCameraClicked(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v0, 0x7f1002d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateButtonIndicatorArea()V

    const v0, 0x7f100418

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100419

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    const v0, 0x7f10041d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButtonArea:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButtonArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10041c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10041e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10041a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mButtonWrapper:Landroid/view/View;

    const v0, 0x7f1000c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f10041b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isShowBluetoothButton()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f100420

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_2
    :goto_0
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->CONFERENCE_ADD_USER:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f1003e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButtonStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_3
    const v0, 0x7f100338

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->setPositionGroupVideoButton()V

    :cond_5
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090308

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isFarEndRecord()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showRecordingInfo(ZZ)V

    :cond_7
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isPrimaryVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showButtonContainer(Z)V

    :cond_8
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateView()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateCallButtonLayout()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/incallui/util/CameraEffect;->isCameraEffectLayoutVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showCameraEffectLayout(Z)V

    :cond_9
    return-void

    :cond_a
    const v0, 0x7f10041f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment$1;-><init>(Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateSpeakerButton()V

    goto/16 :goto_0
.end method

.method public setEnabled(Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->setEnabled(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    :cond_0
    move p1, v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_2

    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v4, v4, v4, v0}, Landroid/widget/ToggleButton;->setShadowLayer(FFFI)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/widget/ToggleButton;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method public setSupportedAudio(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateSpeakerButton()V

    return-void
.end method

.method protected showButtonContainer(Z)V
    .locals 8

    const-wide/16 v6, 0x1388

    const/4 v1, 0x0

    const/16 v5, 0x64

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->cleanViewEnter(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iput-boolean p1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonVisible:Z

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateCallButtonLayout()V

    :cond_2
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showPrimaryCallBanner(Z)V

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showInviteGroupVideoCallButton(Z)V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090303

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->hasNavigationBar()Z

    move-result v2

    invoke-static {v0, p1, v2}, Lcom/android/incallui/util/SecAnimationUtils$Move;->moveToUpDown(Landroid/view/View;ZZ)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->hasNavigationBar()Z

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/android/incallui/util/SecAnimationUtils$Move;->moveToUpDown(Landroid/view/View;ZZ)V

    invoke-static {v0, p1}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2
.end method

.method public showCameraEffectLayout(Z)V
    .locals 2

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1003e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const-string v0, "VideoCallButtonQCIFFragment"

    const-string v1, "inflate camera effect view stub"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10045b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/util/CameraEffect;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v0}, Lcom/android/incallui/util/CameraEffect;->showEffectLayout()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v0}, Lcom/android/incallui/util/CameraEffect;->hideEffectLayout()V

    goto :goto_0
.end method

.method protected updateAudioButtons(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateBluetoothButton()V

    return-void
.end method

.method public updateBluetoothButton()V
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isAudio(I)Z

    move-result v0

    const-string v1, "VideoCallButtonQCIFFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bluetoothEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 5

    const/4 v1, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateInviteGroupVideoCallButton()V

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->CONFERENCE_ADD_USER:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateGroupVideoCallButtonView()V

    :cond_1
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/util/CameraEffect;->isCameraEffectLayoutVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateCameraEffectLayout()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateOutgoingHideShowButton()V

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isFarEndRecord()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isDialpadVisible()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_7
    :goto_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->enableSwitchCamera(Z)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isShowBluetoothButton()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->enableBluetooth(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showButtonContainer(Z)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateCallButtonsBgColor(Z)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateEndCallButtonColor(Lcom/android/incallui/Call;)V

    return-void

    :cond_9
    move v0, v2

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_c
    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_f
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isShowBluetoothButton()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_10
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_1

    :cond_11
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_12
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_1

    :cond_13
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_14
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_15
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_16
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->isShowBluetoothButton()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_17
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_1

    :cond_18
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_19
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_1

    :cond_1a
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->updateCallButtonsBgColor(Z)V

    goto/16 :goto_2
.end method

.method public updateCallButtonsBgColor(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01d1

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

    const v2, 0x7f020143

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public updateCameraEffectLayout()V
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CameraEffect;->isCameraEffectLayoutVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->showCameraEffectLayout(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v0}, Lcom/android/incallui/util/CameraEffect;->isShowingEffectLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v0}, Lcom/android/incallui/util/CameraEffect;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getBigTemplateHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/util/CameraEffect;

    invoke-virtual {v1, v0}, Lcom/android/incallui/util/CameraEffect;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getBigTemplateHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getBigTemplateHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getNavigationBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method protected updateEndCallButtonColor(Lcom/android/incallui/Call;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const v1, 0x7f020218

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const v1, 0x7f020219

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method protected updateOutgoingHideShowButton()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

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

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
