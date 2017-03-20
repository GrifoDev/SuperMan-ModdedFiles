.class public Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;
.super Lcom/android/incallui/fragment/VideoCallVGAFragment;
.source "VideoCallVGAJpnFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;-><init>()V

    return-void
.end method

.method private updateNoVideoImage(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 88
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

    .line 89
    packed-switch p1, :pswitch_data_0

    .line 97
    :goto_0
    return-void

    .line 92
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->hideFarEndPhoto()V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public changeOrientation()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->changeOrientation()V

    .line 55
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoViews:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/PrivatePolicy;->isProhibit()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->showNearEndImage(Z)V

    .line 58
    :cond_0
    return-void
.end method

.method public initializeVideoView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->initializeVideoView(Landroid/view/View;)V

    .line 39
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoViewsContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoPhotoHelper;->setUsingDefaultPhotoforFarEnd()V

    .line 48
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoPhotoHelper;->setUsingDefaultPhotoforNearEnd()V

    .line 50
    :cond_2
    return-void
.end method

.method protected needToShowFarEndPhoto()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 101
    const/4 v1, 0x0

    .line 103
    .local v1, "needToShowFarEndPhoto":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 104
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v0}, Lcom/android/incallui/Call;->needToShowNoVideo()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoState:I

    .line 106
    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoState:I

    .line 107
    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 109
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 107
    goto :goto_0
.end method

.method protected needToShowNearEndPhoto()Z
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/PrivatePolicy;->isProhibit()Z

    move-result v0

    return v0
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->updateNoVideoImage(I)V

    .line 65
    :cond_0
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setCallState(Lcom/android/incallui/Call;)V

    .line 66
    return-void
.end method

.method public showNearEndImage(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->showNearEndPhoto()V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->hideNearEndPhoto()V

    goto :goto_0
.end method

.method public switchVideoDisplay()V
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isExchangedViews()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setExchangedViews(Z)V

    .line 132
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->setVideoLocaton()V

    .line 133
    return-void

    .line 130
    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setExchangedViews(Z)V

    goto :goto_0
.end method

.method public updateVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->updateVideoSessionEvent(ILcom/android/incallui/Call;)V

    .line 72
    if-nez p2, :cond_0

    .line 73
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

    .line 85
    :goto_0
    return-void

    .line 76
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 82
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->hideFarEndPhoto()V

    goto :goto_0

    .line 78
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->showFarEndPhoto()V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
