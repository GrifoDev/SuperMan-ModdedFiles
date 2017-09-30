.class public Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;
.super Lcom/android/incallui/fragment/DialpadFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/DialpadFragment;-><init>()V

    return-void
.end method

.method private getNavigationBarHeight()I
    .locals 2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->hasNavigationBar()Z

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

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private updateKeypadLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v1, v1, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height_with_offset:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1
.end method


# virtual methods
.method public getViewId()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mView:Landroid/view/View;

    const v1, 0x7f100301

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
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getActivity()Landroid/app/Activity;

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

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    const-string v0, "onCreateView()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "support_folder_single_lcd"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0400f1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mView:Landroid/view/View;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f040161

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f040151

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

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
    .locals 7

    const v6, 0x7f0a0276

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getViewId()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->updateKeypadLayout()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialpad:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialpad:Landroid/view/View;

    if-eqz v4, :cond_a

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->showSoftInput()V

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->hideSoftInput()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->showIndicator(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x50

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/DialpadView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const-string v1, "support_folder_single_lcd"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a00e9

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_c

    :goto_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e01c2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/incallui/widget/DialpadView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    invoke-virtual {v1, v0}, Lcom/android/incallui/widget/DialpadView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isTabletUX()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    :goto_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    invoke-virtual {v1, v0, v3, v0, v3}, Lcom/android/incallui/widget/DialpadView;->setPadding(IIII)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDigitContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDigitContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const-string v1, "support_folder_single_lcd"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_6
    :goto_5
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDigitContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mHideButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_9

    move v2, v3

    :cond_9
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    goto/16 :goto_0

    :cond_a
    move v0, v3

    goto/16 :goto_1

    :cond_b
    move v0, v3

    goto/16 :goto_2

    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_3

    :cond_d
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0373

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto/16 :goto_3

    :cond_e
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_5

    :cond_f
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0045

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_5

    :cond_10
    const-string v0, "setupLayout : mHideButton is null."

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    goto :goto_6

    :cond_11
    move v0, v3

    goto/16 :goto_4
.end method
