.class public Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;
.super Lcom/android/incallui/fragment/VideoCallQCIFFragment;


# static fields
.field private static final TAG:Ljava/lang/String; = "SECVT-TabletVideoCallQCIFFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public initializeVideoView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->initializeVideoView(Landroid/view/View;)V

    const v0, 0x7f10040e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mPreviewBorder:Landroid/view/View;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f040133

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->onDestroyView()V

    return-void
.end method

.method public onVideoContextChanged()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method protected setBigTemplateTopMargin()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0440

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mScreenTopMargin:I

    iget v1, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->activityHeight:I

    iget v2, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mBigScreenHeight:I

    add-int/2addr v2, v0

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->activityHeight:I

    iget v2, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mBigScreenHeight:I

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mScreenTopMargin:I

    :cond_0
    return-void
.end method

.method protected setFullScreenView()V
    .locals 3

    iget v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->activityWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->activityHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->ratio:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->activityWidth:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mBisScreenWidth:I

    iget v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->activityWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->ratio:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mBigScreenHeight:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->setBigTemplateMargin()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->setBigTemplateTopMargin()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->setSmallScreenView()V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->activityHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->ratio:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mBisScreenWidth:I

    iget v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->activityHeight:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mBigScreenHeight:I

    goto :goto_0
.end method

.method protected setHideMeContainerPosition()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getBigTemplateTopMargin()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getBigTemplateWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getBigTemplateHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected setPreviewPosition()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mPreviewVideo:Landroid/view/TextureView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getBigTemplateWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getBigTemplateHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getBigTemplateTopMargin()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getBigTemplateMargin()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_2
    iget-object v1, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getSmallTemplateWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getSmallTemplateHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2
.end method

.method protected setVideoviewPosition()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getBigTemplateTopMargin()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getBigTemplateWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getBigTemplateHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getBigTemplateMargin()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a05b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0
.end method

.method protected showPreviewBorder()V
    .locals 5

    const/16 v2, 0x8

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mPreviewBorder:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mPreviewBorder:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    if-eqz v1, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mPreviewBorder:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-eq v1, v2, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method protected showVideoContainer(Lcom/android/incallui/Call;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public updatePrimaryCall(Lcom/android/incallui/Call;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->updatePrimaryCall(Lcom/android/incallui/Call;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mFarEndPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mFarEndPhotoContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->showPreviewBorder()V

    return-void
.end method

.method protected updateView()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->updateView()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->setFullScreenView()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->setVideoviewPosition()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->setPreviewPosition()V

    return-void
.end method
