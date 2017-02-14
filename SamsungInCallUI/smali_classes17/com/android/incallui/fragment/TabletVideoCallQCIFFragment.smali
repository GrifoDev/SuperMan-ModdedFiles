.class public Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;
.super Lcom/android/incallui/fragment/VideoCallQCIFFragment;
.source "TabletVideoCallQCIFFragment.java"


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

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->showVideoContainer(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f040113

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

.method public onVideoStateChanged()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setCallState(Lcom/android/incallui/Call;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->setHideMeContainerPosition(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mFarEndPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mFarEndPhotoContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setFullScreenView()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->setFullScreenView()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->setSmallScreenView()V

    return-void
.end method

.method protected setHideMeContainerPosition(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a051c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1
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
    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1
.end method

.method protected setPreviewPosition()V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mPreviewVideo:Landroid/view/TextureView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getBigTemplateWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getBigTemplateHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getBigTemplateMargin()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a03a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a051c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getSmallTemplateWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getSmallTemplateHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a031f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0320

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1
.end method

.method protected setVideoviewPosition()V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a051c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getBigTemplateWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getBigTemplateHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getBigTemplateMargin()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0397

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0
.end method

.method protected showVideoContainer(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateView()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;->updateView()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->setFullScreenView()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->setVideoviewPosition()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;->setPreviewPosition()V

    return-void
.end method
