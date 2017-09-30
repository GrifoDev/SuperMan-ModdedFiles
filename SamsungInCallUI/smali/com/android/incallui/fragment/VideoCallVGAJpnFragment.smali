.class public Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;
.super Lcom/android/incallui/fragment/VideoCallVGAFragment;


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
.method public canDisplayExchangedViews()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isExchangedViews()Z

    move-result v0

    return v0
.end method

.method protected canExchangeViews()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

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
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->initializeVideoView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoViewsContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoPhotoHelper;->setUsingDefaultPhotoforFarEnd(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoPhotoHelper;->setUsingDefaultPhotoforNearEnd(Z)V

    :cond_2
    return-void
.end method

.method protected needToHideSmallView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected needToShowFarEndPhoto()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/incallui/util/VideoCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoDetails;->needToShowNoVideo()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mSecVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mSecVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected needToShowNearEndPhoto()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/PrivatePolicy;->needToSkipStartCamera()Z

    move-result v0

    return v0
.end method

.method public registerTouchListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mFullScreenTouchArea:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mFullScreenTouchArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
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

.method protected showPreviewBorder(Z)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mPreviewBorder:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mPreviewBorder:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_0

    const-string v0, "showPreviewBorder - SHOW"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->mPreviewBorder:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    if-eq v0, v1, :cond_0

    const-string v0, "showPreviewBorder - HIDE"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public switchVideoDisplay()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->exchangeViews()V

    return-void
.end method

.method public updatePrimaryCall(Lcom/android/incallui/Call;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;->updateNoVideoImage(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->updatePrimaryCall(Lcom/android/incallui/Call;)V

    return-void
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
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0x12c -> :sswitch_2
    .end sparse-switch
.end method
