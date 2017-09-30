.class public Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;
.super Lcom/android/incallui/fragment/DialpadFragment;

# interfaces
.implements Lcom/android/incallui/InCallNotifier$VideoCallMetricsListener;


# instance fields
.field protected mBottomArea:Landroid/view/View;

.field protected mHasNavigationBar:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/fragment/DialpadFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mHasNavigationBar:Z

    return-void
.end method


# virtual methods
.method public getSavedDtmfText()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mSavedDtmfText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mSavedDtmfText:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSavedDtmfText() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getDtmfText()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSavedDtmfText from EditText : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getViewId()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    const v1, 0x7f100301

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mHideButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mHideButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    const v1, 0x7f10047c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mBottomArea:Landroid/view/View;

    :goto_0
    return-void

    :cond_1
    const-string v0, "getViewId : parent view is null."

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected needToMultiWindowLayout()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "needToMultiWindowLayout : Activity is null."

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_3

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getVideoUXMode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->hasMultiWindowType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    move v2, v1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/DialpadFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->setupLayout()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    const-string v0, "onCreateView()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mIsVGAVideoDialpad:Z

    const-string v0, "support_folder_single_lcd"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0400f1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->needToMultiWindowLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f04016e

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f040168

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallNotifier;->removeVideoCallMetricsListener(Lcom/android/incallui/InCallNotifier$VideoCallMetricsListener;)V

    invoke-super {p0}, Lcom/android/incallui/fragment/DialpadFragment;->onDestroyView()V

    return-void
.end method

.method public onVideoCallMetricsChagned(Lcom/android/incallui/service/vt/VideoCallMetrics;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->setupLayout()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/DialpadFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mHasNavigationBar:Z

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallNotifier;->addVideoCallMetricsListener(Lcom/android/incallui/InCallNotifier$VideoCallMetricsListener;)V

    return-void
.end method

.method public setPrimaryCallMenuForDialpad(Z)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->needToShowVolumeButton()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->showVolumeButton(Z)V

    :cond_2
    return-void
.end method

.method public setupDialpadKeyButton(Lcom/android/phone/common/dialpad/DialpadKeyButton;I)V
    .locals 12

    const/16 v11, 0x11

    const/4 v10, -0x1

    const/16 v9, 0xf

    const/16 v8, 0xe

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "setupDialpadKeyButton : Activity is null."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "setupDialpadKeyButton"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    invoke-virtual {v5}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getVideoUXMode()I

    move-result v6

    const v0, 0x7f10038f

    invoke-virtual {p1, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v6}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isPhonePortraitType(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iput v10, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/4 v4, 0x1

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v2, v1

    :goto_2
    const v0, 0x7f10013d

    invoke-virtual {p1, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v6}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isPhonePortraitType(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x10

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v7, 0xa

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v7, -0x2

    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    const v0, 0x7f10013e

    invoke-virtual {p1, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v6}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isPhonePortraitType(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0663

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v11}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_2
    iput v10, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    mul-int/lit8 v4, p2, 0x5

    div-int/lit8 v4, v4, 0x64

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_3
    const/16 v7, 0xa

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0x10

    invoke-virtual {v1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v10, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_3

    :cond_4
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v11, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_5

    :cond_5
    move v4, v3

    goto :goto_4

    :cond_6
    move v2, v3

    goto/16 :goto_2
.end method

.method public setupLayout()V
    .locals 9

    const/4 v2, 0x1

    const/16 v5, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getViewId()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "setupLayout : Activity is null."

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v0, "setupLayout : VideoCallMetrics is null."

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->needToMultiWindowLayout()Z

    move-result v7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x50

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v6}, Lcom/android/incallui/service/vt/VideoCallMetrics;->hasNavigationBarZone()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v6}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isLeftHandRotation()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v7, :cond_7

    iget v0, v6, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    iget v1, v6, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    if-ge v0, v1, :cond_7

    move v0, v2

    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_3
    iget v1, v6, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    mul-int/2addr v0, v1

    div-int/lit16 v1, v0, 0x3e8

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a066a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    if-le v1, v0, :cond_4

    move v1, v0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/DialpadView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const-string v2, "support_folder_single_lcd"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a00e9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    invoke-virtual {v2, v0}, Lcom/android/incallui/widget/DialpadView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isPhoneLandscapeType()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x106000d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/DialpadView;->setBackgroundColor(I)V

    :goto_4
    const/16 v0, 0xc

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    move v2, v3

    :goto_5
    array-length v0, v4

    if-ge v2, v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    aget v8, v4, v2

    invoke-virtual {v0, v8}, Lcom/android/incallui/widget/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    div-int/lit8 v8, v1, 0x3

    invoke-virtual {p0, v0, v8}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->setupDialpadKeyButton(Lcom/android/phone/common/dialpad/DialpadKeyButton;I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    :cond_7
    move v0, v3

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e01e0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/DialpadView;->setBackgroundColor(I)V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDigitContainer:Landroid/view/View;

    if-eqz v0, :cond_c

    const-string v0, "support_folder_single_lcd"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDigitContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a034d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    if-eqz v7, :cond_14

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f008a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget v4, v6, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    iget-object v8, v6, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCardMetrics;

    iget v8, v8, Lcom/android/incallui/service/vt/VideoCardMetrics;->call_state_default_height:I

    sub-int/2addr v4, v8

    mul-int/2addr v2, v4

    div-int/lit16 v2, v2, 0x3e8

    const/4 v4, -0x1

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_6
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f0a065c

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    if-ge v2, v4, :cond_b

    move v2, v4

    :cond_b
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDigitContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpad:Landroid/view/View;

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupLayout() isMobileKeyboard : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpad:Landroid/view/View;

    if-eqz v2, :cond_15

    move v0, v5

    :goto_7
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->showSoftInput()V

    if-nez v2, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->hideSoftInput()V

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f008b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget v4, v6, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    mul-int/2addr v2, v4

    div-int/lit16 v2, v2, 0x3e8

    if-eqz v7, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f008c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget v4, v6, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    iget-object v8, v6, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCardMetrics;

    iget v8, v8, Lcom/android/incallui/service/vt/VideoCardMetrics;->call_state_default_height:I

    sub-int/2addr v4, v8

    mul-int/2addr v2, v4

    div-int/lit16 v2, v2, 0x3e8

    :cond_e
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f0a0669

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    if-ge v2, v4, :cond_f

    move v2, v4

    :cond_f
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    :cond_11
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mHideButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0661

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mHideButton:Landroid/widget/ImageView;

    invoke-static {v1, v0, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mHideButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_16

    move v0, v3

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_9
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mMenuContainer:Landroid/view/View;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mMenuContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mBottomArea:Landroid/view/View;

    if-eqz v0, :cond_19

    if-eqz v7, :cond_18

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mBottomArea:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_14
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_6

    :cond_15
    move v0, v3

    goto/16 :goto_7

    :cond_16
    move v0, v5

    goto :goto_8

    :cond_17
    const-string v0, "setupLayout : mHideButton is null."

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    goto :goto_9

    :cond_18
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mBottomArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, v6, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v1, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height_with_offset:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mBottomArea:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_19
    const-string v0, "setupLayout : mBottomArea is null."

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x7f100143
        0x7f10013f
        0x7f100135
        0x7f100136
        0x7f100137
        0x7f100138
        0x7f100139
        0x7f10013a
        0x7f10013b
        0x7f10013c
        0x7f100142
        0x7f100141
    .end array-data
.end method

.method public showIndicator(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
