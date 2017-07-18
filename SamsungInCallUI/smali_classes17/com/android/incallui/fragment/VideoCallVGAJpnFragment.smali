.class public Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;
.super Lcom/android/incallui/fragment/VideoCallVGAFragment;
.source "VideoCallVGAJpnFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;-><init>()V

    return-void
.end method

.method private updateNoVideoImage(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNoVideoImage... state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->hideFarEndPhoto()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public changeOrientation()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->changeOrientation()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoViews:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->needToShowNearEndPhoto()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->showNearEndImage(Z)V

    :cond_0
    return-void
.end method

.method public initializeVideoView(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->initializeVideoView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoViewsContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoPhotoHelper;->setUsingDefaultPhotoforFarEnd()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoPhotoHelper;->setUsingDefaultPhotoforNearEnd()V

    :cond_2
    return-void
.end method

.method protected needToHideSmallView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected needToShowFarEndPhoto()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->needToShowNoVideo()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoState:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoState:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method protected needToShowNearEndPhoto()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/PrivatePolicy;->needToSkipStartCamera()Z

    move-result v0

    return v0
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->updateNoVideoImage(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setCallState(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public showNearEndImage(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->showNearEndPhoto()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->hideNearEndPhoto()V

    goto :goto_0
.end method

.method public switchVideoDisplay()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isExchangedViews()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setExchangedViews(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->setVideoLocaton()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setExchangedViews(Z)V

    goto :goto_0
.end method

.method public updateVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->updateVideoSessionEvent(ILcom/android/incallui/Call;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVideoSessionEvent call is null : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->hideFarEndPhoto()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->showFarEndPhoto()V

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->showNearEndImage(Z)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc9 -> :sswitch_0
        0xcc -> :sswitch_1
        0x12c -> :sswitch_2
    .end sparse-switch
.end method
