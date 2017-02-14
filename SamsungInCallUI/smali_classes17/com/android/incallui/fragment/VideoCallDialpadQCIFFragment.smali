.class public Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;
.super Lcom/android/incallui/fragment/DialpadFragment;
.source "VideoCallDialpadQCIFFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/DialpadFragment;-><init>()V

    return-void
.end method

.method private getNavigationBarHeight()I
    .locals 4

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->hasNavigationBar()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    goto :goto_0
.end method

.method private hasNavigationBar()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

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

.method private updateKeypadLayout()V
    .locals 3

    const v2, 0x7f0a02f6

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialContainer:Landroid/view/View;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a051c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getNavigationBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1
.end method


# virtual methods
.method public getViewId()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mView:Landroid/view/View;

    const v1, 0x7f100277

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mHideButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mHideButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "getViewId : parent view is null."

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isInMultiWindowMode()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getActivity()Landroid/app/Activity;

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

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const-string v1, "onCreateView()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "support_folder_single_lcd"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0400d8

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mView:Landroid/view/View;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f04014b

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f04015e

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v1, 0x7f040134

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public setPrimaryCallMenuForDialpad(Z)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->needToShowVolumeButton()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->showVolumeButton(Z)V

    :cond_2
    return-void
.end method

.method public setupLayout()V
    .locals 13

    const v12, 0x7f0a029e

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getViewId()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->updateKeypadLayout()V

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialpad:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialpad:Landroid/view/View;

    if-eqz v3, :cond_9

    move v7, v8

    :goto_0
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->showSoftInput()V

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->hideSoftInput()V

    :cond_0
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mView:Landroid/view/View;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x50

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    invoke-virtual {v7}, Lcom/android/incallui/widget/DialpadView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const-string v7, "support_folder_single_lcd"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0a00e6

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->isInMultiWindowMode()Z

    move-result v7

    if-eqz v7, :cond_a

    :goto_1
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0181

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/incallui/widget/DialpadView;->setBackgroundColor(I)V

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    invoke-virtual {v7, v1}, Lcom/android/incallui/widget/DialpadView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDigitContainer:Landroid/view/View;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDigitContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const-string v7, "support_folder_single_lcd"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDigitContainer:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mHideButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->isInMultiWindowMode()Z

    move-result v10

    if-eqz v10, :cond_7

    move v8, v9

    :cond_7
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setFocusable(Z)V

    :cond_8
    return-void

    :cond_9
    move v7, v9

    goto/16 :goto_0

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_b
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0a03a4

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_c
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_2

    :cond_d
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->isInMultiWindowMode()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0a02e8

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_2

    :cond_e
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0a0042

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto/16 :goto_2

    :cond_f
    const-string v7, "setupLayout : mHideButton is null."

    invoke-static {v7}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public showIndicator(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
