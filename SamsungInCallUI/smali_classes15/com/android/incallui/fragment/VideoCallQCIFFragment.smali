.class public Lcom/android/incallui/fragment/VideoCallQCIFFragment;
.super Lcom/android/incallui/fragment/VideoCallFragment;
.source "VideoCallQCIFFragment.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SECVT-VideoCallQCIFFragment"


# instance fields
.field protected activityHeight:I

.field protected activityWidth:I

.field protected density:F

.field protected heightPixels:I

.field protected mBigScreenHeight:I

.field protected mBisScreenWidth:I

.field protected mCurrentCallState:I

.field protected mDisplay:Landroid/view/Display;

.field protected mFarEndContainerResizeTemplate:Landroid/view/ViewGroup;

.field protected mFarEndContainerTemplate:Landroid/view/ViewGroup;

.field protected mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

.field protected mIncomingHideMeImageContainer:Landroid/view/View;

.field protected mIncomingHideMePhoto:Landroid/widget/ImageView;

.field protected mNearEndContainerTemplate:Landroid/view/ViewGroup;

.field protected mOldCallState:I

.field protected mScreenSideMargin:I

.field protected mSmallScreenHeight:I

.field protected mSmallScreenWidth:I

.field protected ratio:F

.field protected smallViewRatio:F

.field protected widthPixels:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallFragment;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    .line 61
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    .line 62
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    .line 68
    iput v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mCurrentCallState:I

    .line 69
    iput v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mOldCallState:I

    .line 85
    const v0, 0x3f9a3d71    # 1.205f

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->ratio:F

    .line 86
    const v0, 0x3e570a3d    # 0.21f

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->smallViewRatio:F

    return-void
.end method

.method private updateVideoContainer(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 265
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoViewsContainer:Landroid/view/View;

    if-nez v1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 267
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 268
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 272
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1
.end method


# virtual methods
.method protected checkAndRefreshPreparingAnimation()V
    .locals 4

    .prologue
    .line 275
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 276
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->needToShowPreparingImage()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->showPreparingAnimation(Z)V

    .line 279
    :cond_0
    return-void
.end method

.method protected getBigTemplateHeight()I
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBigScreenHeight:I

    return v0
.end method

.method protected getBigTemplateMargin()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mScreenSideMargin:I

    return v0
.end method

.method protected getBigTemplateWidth()I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBisScreenWidth:I

    return v0
.end method

.method protected getSmallTemplateHeight()I
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mSmallScreenHeight:I

    return v0
.end method

.method protected getSmallTemplateWidth()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mSmallScreenWidth:I

    return v0
.end method

.method protected hasNavigationBar()Z
    .locals 3

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 429
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    const/4 v1, 0x0

    .line 430
    .local v1, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 431
    const/4 v2, 0x0

    .line 434
    :goto_0
    return v2

    .line 433
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 434
    invoke-static {v1}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v2

    goto :goto_0
.end method

.method public initializeVideoView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->initializeVideoView(Landroid/view/View;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100246

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    .line 117
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->updateVideoIndicatorArea()V

    .line 118
    if-eqz p1, :cond_0

    .line 119
    const v0, 0x7f100361

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoViewsContainer:Landroid/view/View;

    .line 121
    const v0, 0x7f100362

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    .line 122
    const v0, 0x7f10036b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    .line 124
    const v0, 0x7f1003a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    .line 125
    const v0, 0x7f1003a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndContainerResizeTemplate:Landroid/view/ViewGroup;

    .line 126
    const v0, 0x7f1003a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    .line 128
    const v0, 0x7f100364

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreparingAnimation:Landroid/view/View;

    .line 130
    const v0, 0x7f100367

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhotoContainer:Landroid/view/View;

    .line 131
    const v0, 0x7f100368

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    .line 132
    const v0, 0x7f100369

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    .line 134
    const v0, 0x7f10036a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    .line 135
    const v0, 0x7f10036e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    .line 136
    const v0, 0x7f10036d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    .line 138
    const v0, 0x7f10036f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    .line 139
    const v0, 0x7f100370

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    .line 140
    const v0, 0x7f100371

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    .line 141
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->updateView()V

    .line 142
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->copyParams(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 143
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->copyParams(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->updatePrimaryImage()V

    .line 146
    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage()V

    .line 151
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 477
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 478
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->updateView()V

    .line 479
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 101
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const v0, 0x7f040128

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f040127

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->onDestroyView()V

    .line 157
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    :cond_3
    return-void
.end method

.method public onSurfaceUpdated(I)V
    .locals 3
    .param p1, "surface"    # I

    .prologue
    const/4 v2, 0x1

    .line 463
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->onSurfaceUpdated(I)V

    .line 464
    if-ne p1, v2, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isShowingPreparingAnimation()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIsDisplayReady:Z

    if-nez v1, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 467
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isCSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    iput-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIsDisplayReady:Z

    .line 469
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->needToShowPreparingImage()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->showPreparingAnimation(Z)V

    .line 473
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    return-void
.end method

.method public onVideoStateChanged()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 111
    return-void
.end method

.method protected setBigTemplateMargin()V
    .locals 2

    .prologue
    .line 536
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mScreenSideMargin:I

    .line 537
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityWidth:I

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBisScreenWidth:I

    if-le v0, v1, :cond_0

    .line 538
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityWidth:I

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBisScreenWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mScreenSideMargin:I

    .line 540
    :cond_0
    return-void
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 7
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 206
    if-eqz p1, :cond_5

    .line 207
    iget v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mCurrentCallState:I

    iput v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mOldCallState:I

    .line 208
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    iput v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mCurrentCallState:I

    .line 210
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_6

    :cond_0
    move v0, v2

    .line 211
    .local v0, "showPhoto":Z
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhotoContainer:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 212
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 214
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallManager;->isScreenResized()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 215
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->showVideoInCallResize(Z)V

    .line 217
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setPreviewPosition()V

    .line 219
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v5, :cond_8

    move v3, v2

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setIncomingHideMeImage(Z)V

    .line 220
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v5, :cond_9

    move v3, v2

    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setHideMeContainerPosition(Z)V

    .line 221
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v6, :cond_a

    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->showVideoContainer(Z)V

    .line 222
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-eq v2, v5, :cond_3

    .line 223
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->showIncomingHideMeImage(Z)V

    .line 225
    :cond_3
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->CONFERENCE_ADD_USER:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 226
    invoke-static {p1}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-eq v1, v5, :cond_4

    .line 227
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->updateGroupVideoCallView()V

    .line 229
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->updatePreviewContainer(Lcom/android/incallui/Call;)V

    .line 230
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 231
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->updateVideoContainer(Lcom/android/incallui/Call;)V

    .line 234
    .end local v0    # "showPhoto":Z
    :cond_5
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->setCallState(Lcom/android/incallui/Call;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->checkAndRefreshPreparingAnimation()V

    .line 236
    return-void

    :cond_6
    move v0, v1

    .line 210
    goto :goto_0

    .line 212
    .restart local v0    # "showPhoto":Z
    :cond_7
    const/16 v3, 0x8

    goto :goto_1

    :cond_8
    move v3, v1

    .line 219
    goto :goto_2

    :cond_9
    move v3, v1

    .line 220
    goto :goto_3

    :cond_a
    move v2, v1

    .line 221
    goto :goto_4
.end method

.method protected setFullScreenView()V
    .locals 3

    .prologue
    .line 503
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->ratio:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 504
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityWidth:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBisScreenWidth:I

    .line 505
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->ratio:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBigScreenHeight:I

    .line 510
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setBigTemplateMargin()V

    .line 511
    return-void

    .line 507
    :cond_0
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->ratio:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBisScreenWidth:I

    .line 508
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityHeight:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBigScreenHeight:I

    goto :goto_0
.end method

.method protected setHalfScreenView()V
    .locals 4

    .prologue
    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, "topMargin":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 516
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a031d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 517
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityHeight:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->ratio:F

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 518
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityWidth:I

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBisScreenWidth:I

    .line 519
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBisScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->ratio:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBigScreenHeight:I

    .line 528
    :goto_0
    return-void

    .line 521
    :cond_0
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityHeight:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBigScreenHeight:I

    .line 522
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBigScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->ratio:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBisScreenWidth:I

    goto :goto_0

    .line 525
    :cond_1
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityWidth:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBisScreenWidth:I

    .line 526
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->ratio:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBigScreenHeight:I

    goto :goto_0
.end method

.method protected setHideMeContainerPosition(Z)V
    .locals 3
    .param p1, "isIncoming"    # Z

    .prologue
    .line 365
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    if-nez v1, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 367
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 368
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a051e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 373
    :goto_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 374
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 375
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 380
    :goto_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 370
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a039e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 377
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 378
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_2
.end method

.method protected setIncomingHideMeImage(Z)V
    .locals 9
    .param p1, "isIncoming"    # Z

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 384
    if-nez p1, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 387
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 388
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preset_name"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, "presetName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 390
    .local v3, "presetPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 391
    .local v1, "isPresetImageExist":Z
    const-string v4, "photo"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 392
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preset_path"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 393
    const/4 v1, 0x1

    .line 396
    :cond_2
    if-eqz v1, :cond_4

    .line 397
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f01b4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 398
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    .line 399
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 400
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 402
    :cond_3
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 403
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 406
    :cond_4
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f01a7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 407
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_5

    .line 408
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 410
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 411
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setPreviewPosition()V
    .locals 9

    .prologue
    const v8, 0x7f0a051e

    const v5, 0x7f0a00f6

    const v6, 0x7f0a00ef

    const/4 v7, 0x4

    .line 305
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreviewVideo:Landroid/view/TextureView;

    if-nez v4, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 308
    .local v1, "firstCall":Lcom/android/incallui/Call;
    if-eqz v1, :cond_0

    .line 309
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 310
    .local v3, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v0, 0x0

    .line 311
    .local v0, "duration":I
    const/4 v2, 0x0

    .line 313
    .local v2, "moveH":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 314
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 315
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateMargin()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 316
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateWidth()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 317
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateHeight()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 349
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 319
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 320
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 321
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 322
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 323
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00d2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_1

    .line 325
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 326
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00f1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 327
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_1

    .line 330
    :cond_4
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v7, :cond_6

    .line 331
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a039e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 343
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateMargin()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 344
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateWidth()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 345
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateHeight()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 346
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-static {v4, v2, v0}, Lcom/android/incallui/util/SecAnimationUtils$Move;->moveToDown(Landroid/view/View;II)V

    goto/16 :goto_1

    .line 333
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->hasNavigationBar()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 334
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 335
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a05b8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int v2, v4, v5

    .line 339
    :goto_3
    iget v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mOldCallState:I

    if-ne v4, v7, :cond_5

    iget v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mCurrentCallState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 340
    const/16 v0, 0x1f4

    goto :goto_2

    .line 337
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto :goto_3
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 7
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isPersonalPhotoAvailable"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 176
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 177
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    const/4 v2, 0x1

    .line 180
    .local v2, "showPhoto":Z
    :goto_1
    if-eqz p2, :cond_4

    if-eqz v2, :cond_4

    .line 181
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 182
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 184
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 187
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .end local v2    # "showPhoto":Z
    :cond_3
    move v2, v3

    .line 179
    goto :goto_1

    .line 190
    .restart local v2    # "showPhoto":Z
    :cond_4
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_5

    .line 191
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 194
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->hasNavigationBar()Z

    move-result v3

    if-nez v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 197
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a05b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 198
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected setSmallScreenView()V
    .locals 2

    .prologue
    .line 531
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBisScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->smallViewRatio:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mSmallScreenWidth:I

    .line 532
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBigScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->smallViewRatio:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mSmallScreenHeight:I

    .line 533
    return-void
.end method

.method protected setVideoviewPosition()V
    .locals 4

    .prologue
    const v2, 0x7f0a031d

    .line 282
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingVideo:Landroid/view/TextureView;

    if-nez v1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 284
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 285
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a051e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 293
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 294
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 295
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 301
    :goto_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 287
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 288
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 289
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 290
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a05b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 297
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateMargin()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 298
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 299
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_2
.end method

.method public showCallBannerByDialpad(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/UiAdapter;->setPrimaryVisibleByDialpad(Z)V

    .line 459
    return-void
.end method

.method public showIncomingHideMeImage(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 420
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected showVideoContainer(Z)V
    .locals 2
    .param p1, "isActiveCall"    # Z

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 257
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public showVideoInCallResize(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 354
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->RESIZE_SCREEN:Z

    if-eqz v1, :cond_0

    .line 355
    const/16 v0, 0xfa

    .line 356
    .local v0, "duration":I
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isScreenResized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndContainerResizeTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/util/SecAnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 362
    .end local v0    # "duration":I
    :cond_0
    :goto_0
    return-void

    .line 359
    .restart local v0    # "duration":I
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/util/SecAnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected updateGroupVideoCallView()V
    .locals 4

    .prologue
    .line 439
    const/16 v0, 0xfa

    .line 440
    .local v0, "duration":I
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isScreenResized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/util/SecAnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 442
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/service/vt/VideoCallManager;->setScreenResized(Z)V

    .line 444
    :cond_0
    return-void
.end method

.method protected updatePreviewContainer(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updatePrimaryImage()V
    .locals 5

    .prologue
    .line 447
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 448
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 450
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_0

    .line 451
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 454
    .end local v1    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_0
    return-void
.end method

.method protected updateView()V
    .locals 4

    .prologue
    .line 482
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 483
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 484
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-nez v0, :cond_0

    .line 500
    :goto_0
    return-void

    .line 486
    :cond_0
    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mDisplay:Landroid/view/Display;

    .line 487
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 488
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 489
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->density:F

    .line 490
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityWidth:I

    .line 491
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityHeight:I

    .line 493
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 494
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setFullScreenView()V

    .line 498
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setVideoviewPosition()V

    .line 499
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setPreviewPosition()V

    goto :goto_0

    .line 496
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setHalfScreenView()V

    goto :goto_1
.end method
