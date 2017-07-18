.class public Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;
.super Lcom/android/incallui/fragment/DialpadFragment;
.source "VideoCallDialpadVGAFragment.java"

# interfaces
.implements Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;


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
.method public getViewId()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    const v1, 0x7f100285

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

    const v1, 0x7f1003ee

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

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/DialpadFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->setupLayout()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const-string v1, "onCreateView()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mIsVGAVideoDialpad:Z

    const-string v1, "support_folder_single_lcd"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0400d8

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f040155

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f040158

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v1, 0x7f04014f

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoCallMetricsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;)V

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

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoCallMetricsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;)V

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

.method public setupLayout()V
    .locals 15

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getViewId()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    check-cast v12, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v12}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v12, "setupLayout : VideoCallMetrics is null."

    invoke-static {v12}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v8, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v12, 0x50

    iput v12, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v11, :cond_2

    iget-boolean v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mHasNavigationBar:Z

    if-eqz v12, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isLeftHandRotation()Z

    move-result v12

    if-eqz v12, :cond_b

    iput v7, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v12, 0x0

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_1
    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    invoke-virtual {v12, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    invoke-virtual {v12}, Lcom/android/incallui/widget/DialpadView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const-string v12, "support_folder_single_lcd"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a00e5

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_3
    const/4 v12, 0x2

    if-ne v8, v12, :cond_e

    if-nez v4, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a02fd

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_2
    const/4 v12, 0x2

    if-ne v8, v12, :cond_f

    if-nez v4, :cond_f

    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x106000d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/incallui/widget/DialpadView;->setBackgroundColor(I)V

    :goto_3
    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    invoke-virtual {v12, v2}, Lcom/android/incallui/widget/DialpadView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDigitContainer:Landroid/view/View;

    if-eqz v12, :cond_6

    const-string v12, "support_folder_single_lcd"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    if-nez v4, :cond_6

    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDigitContainer:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a029a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_5
    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDigitContainer:Landroid/view/View;

    invoke-virtual {v12, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mMenuContainer:Landroid/view/View;

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mMenuContainer:Landroid/view/View;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mElapsedTimeContainer:Landroid/view/View;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpad:Landroid/view/View;

    if-eqz v12, :cond_9

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setupLayout() isMobileKeyboard : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v13, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpad:Landroid/view/View;

    if-eqz v5, :cond_10

    const/16 v12, 0x8

    :goto_4
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->showSoftInput()V

    if-nez v5, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->hideSoftInput()V

    :cond_9
    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v12, :cond_a

    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setFocusable(Z)V

    :cond_a
    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mHideButton:Landroid/widget/ImageView;

    if-eqz v12, :cond_12

    iget-object v13, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isHeightSmallerThanWidth()Z

    move-result v12

    if-eqz v12, :cond_11

    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mBottomArea:Landroid/view/View;

    if-eqz v12, :cond_14

    invoke-virtual {v6}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isHeightSmallerThanWidth()Z

    move-result v12

    if-eqz v12, :cond_13

    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mBottomArea:Landroid/view/View;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v6}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isRightHandRotation()Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v12, 0x0

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v7, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_1

    :cond_c
    const/4 v12, 0x0

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v12, 0x0

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_1

    :cond_d
    const/4 v12, 0x0

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v12, 0x0

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_1

    :cond_e
    const/4 v12, -0x1

    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_2

    :cond_f
    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f019e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/incallui/widget/DialpadView;->setBackgroundColor(I)V

    goto/16 :goto_3

    :cond_10
    const/4 v12, 0x0

    goto :goto_4

    :cond_11
    const/16 v12, 0x8

    goto :goto_5

    :cond_12
    const-string v12, "setupLayout : mHideButton is null."

    invoke-static {v12}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    goto :goto_6

    :cond_13
    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mBottomArea:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v12, v6, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v12, v12, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->height_with_offset:I

    iput v12, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v12, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mBottomArea:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_14
    const-string v12, "setupLayout : mBottomArea is null."

    invoke-static {v12}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0
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
