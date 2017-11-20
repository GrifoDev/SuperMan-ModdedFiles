.class public Lcom/android/incallui/fragment/VoiceCallDialpadFragment;
.super Lcom/android/incallui/fragment/DialpadFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/DialpadFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getDialpadHeight()I
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getContentViewSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/ScreenControlUtils;->isSplitMode()Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a056f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a057b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a03fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->getInstance()Lcom/android/incallui/util/DesktopModeManager;

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a043e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v0, v3

    :cond_2
    if-gt v0, v1, :cond_3

    sub-int/2addr v0, v2

    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    double-to-int v0, v0

    :goto_0
    return v0

    :cond_3
    sub-int/2addr v0, v2

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0

    :cond_4
    int-to-double v0, v0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0
.end method

.method public getDialpadSideMargin()I
    .locals 7

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isTabletUX()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Lcom/android/incallui/util/ScreenControlUtils;->isSplitMode()Z

    move-result v5

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v0, :cond_0

    if-eqz v5, :cond_2

    :cond_0
    const-wide v0, 0x3fc999999999999aL    # 0.2

    :goto_1
    int-to-double v2, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    :goto_2
    move-wide v0, v2

    goto :goto_1

    :cond_4
    const-wide v2, 0x3fb1eb851eb851ecL    # 0.07

    goto :goto_2
.end method

.method public getDigitsHeight()I
    .locals 10

    const v5, 0x7f0a01d8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getContentViewSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_0
    invoke-static {}, Lcom/android/incallui/util/ScreenControlUtils;->isSplitMode()Z

    move-result v2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->getInstance()Lcom/android/incallui/util/DesktopModeManager;

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a043e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->getDialpadHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    :cond_2
    :goto_1
    return v0

    :cond_3
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getVoiceCallButtonsGap()I

    move-result v2

    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getContentViewSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->getDialpadHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0247

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a033e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    int-to-double v6, v0

    const-wide v8, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v6, v8

    double-to-int v6, v6

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    int-to-double v2, v2

    const-wide v8, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v2, v8

    double-to-int v1, v2

    sub-int/2addr v0, v1

    sub-int/2addr v0, v5

    sub-int/2addr v0, v4

    sub-int/2addr v0, v6

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method public hideElapsedTimeContainer()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hideElapsedTimeContainer"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onCallButtonViewChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->setupLayout()V

    const-string v0, "onCallButtonViewChanged"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onContentViewChanged(Landroid/graphics/Point;)V
    .locals 1

    const-string v0, "onContentViewChanged"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->setupLayout()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v1, 0x0

    const-string v0, "onCreateView()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/android/incallui/util/ScreenControlUtils;->isSplitMode()Z

    move-result v2

    const-string v3, "support_folder_single_lcd"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v0, 0x7f0400f1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mView:Landroid/view/View;

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    const v0, 0x7f0400e5

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isTabletUX()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    const v0, 0x7f0400e6

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_5
    const v0, 0x7f0400e7

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    const-string v0, "onResume()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/incallui/fragment/DialpadFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/DialpadFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->setupLayout()V

    return-void
.end method

.method public setPrimaryCallMenuForDialpad(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mIsShowMenuStatus:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->isExistOptionsItem()Z

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mHideButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mOne:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setNextFocusUpId(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mThree:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setNextFocusUpId(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mHideButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setNextFocusUpId(I)V

    :cond_2
    :goto_3
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/DialpadFragment;->setPrimaryCallMenuForDialpad(Z)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mOne:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setNextFocusUpId(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mThree:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setNextFocusUpId(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusUpId(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    goto :goto_3

    :cond_5
    move v0, p1

    goto/16 :goto_1
.end method

.method public setupLayout()V
    .locals 8

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v5

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupLayout : isShowMultiWindowMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x30

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->showIndicator(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v0, :cond_3

    if-nez v5, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->getDialpadSideMargin()I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->getDialpadHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mDigitContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    const-string v0, "support_folder_single_lcd"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->showSoftInput()V

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->hideSoftInput()V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v5, :cond_f

    move v0, v4

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mHideButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    if-nez v6, :cond_7

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/incallui/util/ScreenControlUtils;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_7
    move v0, v3

    :goto_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mHideButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    move v4, v2

    :cond_8
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_b
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->needToShowMenu()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->showElapsedTimeContainer()V

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->setPrimaryCallMenuForDialpad(Z)V

    :cond_c
    return-void

    :cond_d
    move v0, v2

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mDigitContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->getDigitsHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mDigitContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_f
    const/4 v0, 0x4

    goto :goto_2

    :cond_10
    move v0, v2

    goto :goto_3
.end method

.method public showElapsedTimeContainer()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "showElapsedTimeContainer"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallDialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
