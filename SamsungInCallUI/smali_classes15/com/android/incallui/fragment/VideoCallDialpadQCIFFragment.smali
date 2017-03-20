.class public Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;
.super Lcom/android/incallui/fragment/DialpadFragment;
.source "VideoCallDialpadQCIFFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/incallui/fragment/DialpadFragment;-><init>()V

    return-void
.end method

.method private getNavigationBarHeight()I
    .locals 4

    .prologue
    .line 115
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 116
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    const/4 v1, 0x0

    .line 117
    .local v1, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->hasNavigationBar()Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    :cond_0
    const/4 v2, 0x0

    .line 123
    :goto_0
    return v2

    .line 120
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 122
    invoke-static {v1}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    .line 123
    .local v2, "softKeyHeight":I
    goto :goto_0
.end method

.method private hasNavigationBar()Z
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 105
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    const/4 v1, 0x0

    .line 106
    .local v1, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 107
    const/4 v2, 0x0

    .line 110
    :goto_0
    return v2

    .line 109
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 110
    invoke-static {v1}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v2

    goto :goto_0
.end method

.method private updateKeypadLayout()V
    .locals 3

    .prologue
    const v2, 0x7f0a02f2

    .line 90
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialContainer:Landroid/view/View;

    if-nez v1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 92
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a051e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 100
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 96
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getNavigationBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    .line 98
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

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mView:Landroid/view/View;

    const v1, 0x7f100277

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mHideButton:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mHideButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v0, "getViewId : parent view is null."

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isInMultiWindowMode()Z
    .locals 3

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, "isInMultiWindowMode":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 209
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v1

    .line 212
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    const/4 v1, 0x0

    .line 215
    :cond_1
    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 47
    const-string v1, "onCreateView()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const-string v1, "support_folder_single_lcd"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const v1, 0x7f0400d8

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "parent":Landroid/view/View;
    :goto_0
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mView:Landroid/view/View;

    .line 63
    return-object v0

    .line 52
    .end local v0    # "parent":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    const v1, 0x7f04014b

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "parent":Landroid/view/View;
    goto :goto_0

    .line 55
    .end local v0    # "parent":Landroid/view/View;
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    const v1, 0x7f04015e

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "parent":Landroid/view/View;
    goto :goto_0

    .line 58
    .end local v0    # "parent":Landroid/view/View;
    :cond_2
    const v1, 0x7f040134

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "parent":Landroid/view/View;
    goto :goto_0
.end method

.method public setPrimaryCallMenuForDialpad(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    const/16 v1, 0x8

    .line 68
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 73
    :cond_1
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->needToShowVolumeButton()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->showVolumeButton(Z)V

    .line 76
    :cond_2
    return-void
.end method

.method public setupLayout()V
    .locals 13

    .prologue
    const v12, 0x7f0a029a

    const/16 v8, 0x8

    const/4 v9, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getViewId()V

    .line 129
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 130
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    .line 131
    .local v4, "orientation":I
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    .line 133
    .local v3, "isMobileKeyboard":Z
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->updateKeypadLayout()V

    .line 135
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialpad:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 136
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialpad:Landroid/view/View;

    if-eqz v3, :cond_9

    move v7, v8

    :goto_0
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 137
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->showSoftInput()V

    .line 138
    if-nez v3, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->hideSoftInput()V

    .line 143
    :cond_0
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mView:Landroid/view/View;

    if-eqz v7, :cond_1

    .line 144
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 145
    .local v5, "parent":Landroid/widget/FrameLayout;
    if-eqz v5, :cond_1

    .line 146
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 147
    .local v6, "parentLp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v7, 0x50

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 148
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    .end local v5    # "parent":Landroid/widget/FrameLayout;
    .end local v6    # "parentLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    if-eqz v7, :cond_3

    .line 153
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    invoke-virtual {v7}, Lcom/android/incallui/widget/DialpadView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 154
    .local v1, "digitHeightLp":Landroid/widget/LinearLayout$LayoutParams;
    const-string v7, "support_folder_single_lcd"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0a00e5

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 158
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->isInMultiWindowMode()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 167
    :goto_1
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0181

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/incallui/widget/DialpadView;->setBackgroundColor(I)V

    .line 168
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    invoke-virtual {v7, v1}, Lcom/android/incallui/widget/DialpadView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    .end local v1    # "digitHeightLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDigitContainer:Landroid/view/View;

    if-eqz v7, :cond_5

    .line 173
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDigitContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 174
    .local v2, "digitLp":Landroid/widget/LinearLayout$LayoutParams;
    const-string v7, "support_folder_single_lcd"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 188
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDigitContainer:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    .end local v2    # "digitLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v7, :cond_6

    .line 192
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :cond_6
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mHideButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_f

    .line 196
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->isInMultiWindowMode()Z

    move-result v10

    if-eqz v10, :cond_7

    move v8, v9

    :cond_7
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    :goto_3
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v7, :cond_8

    .line 202
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 204
    :cond_8
    return-void

    :cond_9
    move v7, v9

    .line 136
    goto/16 :goto_0

    .line 161
    .restart local v1    # "digitHeightLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    if-eqz v3, :cond_b

    .line 162
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1

    .line 164
    :cond_b
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0a039f

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1

    .line 177
    .end local v1    # "digitHeightLp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v2    # "digitLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_c
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 178
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_2

    .line 180
    :cond_d
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->isInMultiWindowMode()Z

    move-result v7

    if-nez v7, :cond_4

    .line 181
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 182
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0a02e4

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_2

    .line 184
    :cond_e
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0a0042

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto/16 :goto_2

    .line 198
    .end local v2    # "digitLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_f
    const-string v7, "setupLayout : mHideButton is null."

    invoke-static {v7}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public showIndicator(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 223
    :cond_0
    return-void
.end method
