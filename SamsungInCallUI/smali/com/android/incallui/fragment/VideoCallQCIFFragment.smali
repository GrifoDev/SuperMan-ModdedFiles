.class public Lcom/android/incallui/fragment/VideoCallQCIFFragment;
.super Lcom/android/incallui/fragment/VideoCallFragment;


# static fields
.field protected static final TAG:Ljava/lang/String; = "SECVT-VideoCallQCIFFragment"


# instance fields
.field protected activityHeight:I

.field protected activityWidth:I

.field protected heightPixels:I

.field protected mBigScreenHeight:I

.field protected mBisScreenWidth:I

.field protected mCurrentCallState:I

.field protected mFarEndContainerResizeTemplate:Landroid/view/ViewGroup;

.field protected mFarEndContainerTemplate:Landroid/view/ViewGroup;

.field protected mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

.field protected mIncomingHideMeImageContainer:Landroid/view/View;

.field protected mIncomingHideMePhoto:Landroid/widget/ImageView;

.field protected mNearEndContainerTemplate:Landroid/view/ViewGroup;

.field protected mOldCallState:I

.field protected mScreenSideMargin:I

.field protected mScreenTopMargin:I

.field protected mSmallScreenHeight:I

.field protected mSmallScreenWidth:I

.field protected ratio:F

.field protected smallViewRatio:F

.field protected widthPixels:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mCurrentCallState:I

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mOldCallState:I

    const v0, 0x3f9a3d71    # 1.205f

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->ratio:F

    const v0, 0x3e570a3d    # 0.21f

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->smallViewRatio:F

    return-void
.end method

.method private getNavigationBarHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->hasNavigationBar()Z

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

.method private setMkeyBoardScreenView()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityHeight:I

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBigScreenHeight:I

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBigScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->ratio:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBisScreenWidth:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setBigTemplateMargin()V

    return-void
.end method


# virtual methods
.method protected checkAndRefreshPreparingAnimation()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->needToShowPreparingImage()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->showPreparingAnimation(Z)V

    :cond_0
    return-void
.end method

.method protected getBigTemplateHeight()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBigScreenHeight:I

    return v0
.end method

.method protected getBigTemplateMargin()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mScreenSideMargin:I

    return v0
.end method

.method protected getBigTemplateTopMargin()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mScreenTopMargin:I

    return v0
.end method

.method protected getBigTemplateWidth()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBisScreenWidth:I

    return v0
.end method

.method protected getSmallTemplateHeight()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mSmallScreenHeight:I

    return v0
.end method

.method protected getSmallTemplateWidth()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mSmallScreenWidth:I

    return v0
.end method

.method protected hasNavigationBar()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isDesktopMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isInMultiWindowMode()Z

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

.method public initializeVideoView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->initializeVideoView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->updateVideoIndicatorArea()V

    if-eqz p1, :cond_0

    const v0, 0x7f100400

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoViewsContainer:Landroid/view/View;

    const v0, 0x7f100401

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    const v0, 0x7f10040a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    const v0, 0x7f10043b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    const v0, 0x7f10043c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndContainerResizeTemplate:Landroid/view/ViewGroup;

    const v0, 0x7f10043d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    const v0, 0x7f100403

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreparingAnimation:Landroid/view/View;

    const v0, 0x7f100406

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhotoContainer:Landroid/view/View;

    const v0, 0x7f100407

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    const v0, 0x7f100408

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    const v0, 0x7f100409

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    const v0, 0x7f10040d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    const v0, 0x7f10040c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    const v0, 0x7f10040f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    const v0, 0x7f100410

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    const v0, 0x7f100411

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->updateView()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->copyParams(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->copyParams(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->updatePrimaryImage()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->updateView()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setHideMeContainerPosition()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f040146

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f040145

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public onSurfaceUpdated(I)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->onSurfaceUpdated(I)V

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isShowingPreparingAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIsDisplayReady:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isCSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setDisplayReady(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->needToShowPreparingImage()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->showPreparingAnimation(Z)V

    :cond_0
    return-void
.end method

.method public onVideoContextChanged()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method protected setBigTemplateMargin()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mScreenSideMargin:I

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityWidth:I

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBisScreenWidth:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityWidth:I

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBisScreenWidth:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mScreenSideMargin:I

    :cond_0
    return-void
.end method

.method protected setBigTemplateTopMargin()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a043e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mScreenTopMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBigScreenHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityHeight:I

    if-le v1, v0, :cond_0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityHeight:I

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mScreenTopMargin:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBigScreenHeight:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityHeight:I

    if-le v1, v0, :cond_0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityHeight:I

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mScreenTopMargin:I

    goto :goto_0
.end method

.method protected setFullScreenView()V
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :cond_0
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityHeight:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->ratio:F

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityWidth:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBisScreenWidth:I

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->ratio:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBigScreenHeight:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setBigTemplateMargin()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setBigTemplateTopMargin()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->updateFarEndPhotoLayout()V

    return-void

    :cond_2
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityHeight:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->ratio:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBisScreenWidth:I

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityHeight:I

    sub-int v0, v1, v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBigScreenHeight:I

    goto :goto_0
.end method

.method protected setHalfScreenView()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a043e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityWidth:I

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityHeight:I

    sub-int/2addr v2, v0

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    iget v4, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->ratio:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    if-gt v1, v2, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityWidth:I

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBisScreenWidth:I

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBisScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->ratio:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBigScreenHeight:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setBigTemplateTopMargin()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->updateFarEndPhotoLayout()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setBigTemplateMargin()V

    return-void

    :cond_0
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityHeight:I

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBigScreenHeight:I

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBigScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->ratio:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBisScreenWidth:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityWidth:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBisScreenWidth:I

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->ratio:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBigScreenHeight:I

    goto :goto_1
.end method

.method protected setHideMeContainerPosition()V
    .locals 4

    const v3, 0x7f0a0059

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a05b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_2
.end method

.method protected setIncomingHideMeImage(Z)V
    .locals 6

    const/16 v5, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preset_name"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    const-string v4, "photo"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "preset_path"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e01f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    move-object v2, v0

    move v0, v1

    goto :goto_1
.end method

.method protected setPreviewPosition()V
    .locals 6

    const v4, 0x7f0a05b5

    const/4 v2, 0x0

    const/4 v5, 0x4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreviewVideo:Landroid/view/TextureView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateTopMargin()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateMargin()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/ScreenControlUtils;->isSplitMode()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v5, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v5, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateMargin()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a030e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateHeight()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v5, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0059

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateMargin()I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateWidth()I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateHeight()I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-static {v3, v1, v2}, Lcom/android/incallui/util/SecAnimationUtils$Move;->moveToDown(Landroid/view/View;II)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateTopMargin()I

    move-result v3

    add-int/2addr v1, v3

    :cond_a
    :goto_4
    iget v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mOldCallState:I

    if-ne v3, v5, :cond_8

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mCurrentCallState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    const/16 v2, 0x1f4

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->hasNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a00f0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getNavigationBarHeight()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_4
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setSmallScreenView()V
    .locals 2

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBisScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->smallViewRatio:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mSmallScreenWidth:I

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mBigScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->smallViewRatio:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mSmallScreenHeight:I

    return-void
.end method

.method public setSwitchCameraAnimationView(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->setSwitchCameraAnimationView(Z)V

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isCSVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method protected setVideoviewPosition()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingVideo:Landroid/view/TextureView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateTopMargin()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateMargin()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a05b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a030e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getNavigationBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1
.end method

.method public showCallBannerByDialpad(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/UiAdapter;->setPrimaryVisibleByDialpad(Z)V

    return-void
.end method

.method public showIncomingHideMeImage(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected showVideoContainer(Lcom/android/incallui/Call;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    :goto_2
    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/ScreenControlUtils;->isSplitMode()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-eqz v1, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public showVideoInCallResize(Z)V
    .locals 4

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->RESIZE_SCREEN:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xfa

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isScreenResized()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndContainerResizeTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/util/SecAnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/util/SecAnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected updateFarEndPhotoLayout()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getBigTemplateTopMargin()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCardMetrics;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCardMetrics;->getOutgoingCallCardHeight()I

    move-result v1

    sub-int v1, v2, v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected updateGroupVideoCallView()V
    .locals 4

    const/16 v0, 0xfa

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isScreenResized()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/util/SecAnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setScreenResized(Z)V

    :cond_0
    return-void
.end method

.method protected updatePreviewContainer(Lcom/android/incallui/Call;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/ScreenControlUtils;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public updatePrimaryCall(Lcom/android/incallui/Call;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mCurrentCallState:I

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mOldCallState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mCurrentCallState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_5

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhotoContainer:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->mFarEndPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isScreenResized()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->showVideoInCallResize(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setPreviewPosition()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-ne v0, v4, :cond_7

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setIncomingHideMeImage(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setHideMeContainerPosition()V

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->showVideoContainer(Lcom/android/incallui/Call;)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-eq v0, v4, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->showIncomingHideMeImage(Z)V

    :cond_3
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->CONFERENCE_ADD_USER:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-eq v0, v4, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->updateGroupVideoCallView()V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->updatePreviewContainer(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->updateView()V

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->updatePrimaryCall(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->checkAndRefreshPreparingAnimation()V

    return-void

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    const/16 v0, 0x8

    goto :goto_1

    :cond_7
    move v2, v1

    goto :goto_2
.end method

.method protected updatePrimaryImage()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method protected updateView()V
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityWidth:I

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->activityHeight:I

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->getUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isTabletUX()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setMkeyBoardScreenView()V

    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setVideoviewPosition()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setPreviewPosition()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v0, :cond_6

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setFullScreenView()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setFullScreenView()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setHalfScreenView()V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/android/incallui/util/ScreenControlUtils;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setFullScreenView()V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setHalfScreenView()V

    goto :goto_2
.end method
